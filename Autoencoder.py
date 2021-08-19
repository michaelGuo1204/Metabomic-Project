import numpy as np
import tensorflow as tf

from Model import *

if __name__=='__main__':
    tf.compat.v1.disable_v2_behavior()
    physical_devices = tf.config.list_physical_devices('GPU')
    tf.config.experimental.set_memory_growth(physical_devices[0], enable=True)
    #tf.config.experimental.list_physical_devices('GPU')
    if (os.path.exists('saved_model/base_model_512') or os.path.exists('./saved_model/attention_model')):
        autoencoder = tf.keras.models.load_model('saved_model/base_model_512')
        autoencoder.summary()
        autoencoder = Autoencoder_Model(load=True, loadNet=autoencoder)

    else:
        # %% Load Data
        # file=pandas.read_excel('./DVT-metabolomics.xlsx')
        # file=file.iloc[:,1:]
        # file=file.replace('DVT',1)
        # file=file.replace('non-DVT',0)
        # Y=np.array(file['Label'])
        # file=file.iloc[:,1:]
        # X=np.array(file)
        # np.savez("XY.npz",X,Y)
        data = load('XY.npz')
        X = data['arr_0']
        Y = data['arr_1']
        X_train, Y_train, X_val, Y_val, X_test, Y_test = divide_train_test(X, Y, proportion=(0.8, 0.1, 0.1))

        # %% Set Model
        autoencoder = Autoencoder_Model()
        autoencoder.trainModel(X_train, X_val)

    # %% Get latent data by the encoder
    data = load('XY.npz')
    X = data['arr_0']
    Y = data['arr_1']
    # %% Make predictions by encoder
    autoencoder.encoderPredict(X, Y)
    # %% Classify the data
    autoencoder.knnClassify()
