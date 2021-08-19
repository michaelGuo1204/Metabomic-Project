import datetime
import os.path
import pandas
from joblib import dump
from numpy import random, load, array, squeeze, savez
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from tensorflow.keras import Input, Model, optimizers, regularizers
from tensorflow.keras.callbacks import ModelCheckpoint, TensorBoard, EarlyStopping
from tensorflow.keras.layers import LSTM, RepeatVector, Dense, TimeDistributed

from attention import Attention


# ===================================#
#        Class: Autoencoder         #
#          Inherent:None            #
#         Methods_API:2             #
#        Methods_within:2           #
#     Author:Qirui Guo&Xufan Gao    #
#         6/4/2021 Modified         #
class Autoencoder_Model:
    def __init__(self, ifAttention=False, load=False, loadNet=None):
        self._features = 1  # There are five features in DNA's one-hot model
        self._sequence_long = 521  # The adjusted sequence long is 1444 bps
        self._lstm_neurons = 32  # Set lstm neurons are 256
        self._train_epoch = 1000  # Set train epoch 200
        self._batch_size = 128
        self._learning_rate=1e-3
        self._encoding_dim=256
        self._hidden_dim=64
        if load:
            self._autoencoder_model = loadNet
            self._encoder_model = Model(self._autoencoder_model.input,
                                        self._autoencoder_model.layers[-3].output)
            self._encoder_model.summary()
        else:
            if ifAttention:
                self.isAttention = True
                self._autoencoder_model, self._encoder_model = self.attentionModel()
            else:
                self._autoencoder_model, self._encoder_model = self.baseModel()

    def attentionModel(self):
        inputs = Input(shape=(self._sequence_long, self._features))
        encoded = LSTM(self._lstm_neurons,
                       return_sequences=True,
                       activation="tanh",
                       )(inputs)
        decoded = Attention()(encoded)
        decoded = RepeatVector(self._sequence_long)(decoded)
        decoded = LSTM(self._features, return_sequences=True)(decoded)
        autoencoder = Model(inputs=inputs, outputs=decoded)
        encoder = Model(inputs=inputs, outputs=encoded)
        autoencoder.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])
        autoencoder.summary()
        return autoencoder, encoder

    def baseModel(self):
        input_layer = Input(shape=(self._sequence_long, ))
        encoder = Dense(self._encoding_dim, activation="relu", activity_regularizer=regularizers.l1(self._learning_rate))(input_layer)
        encoder = Dense(self._hidden_dim, activation="relu")(encoder)
        decoder = Dense(self._hidden_dim, activation="relu")(encoder)
        decoder = Dense(self._encoding_dim, activation="relu")(decoder)
        decoder = Dense(self._sequence_long, activation="linear")(decoder)
        autoencoder = Model(inputs=input_layer, outputs=decoder)
        autoencoder.compile(metrics=['accuracy'],
                    loss='mean_squared_error',
                    optimizer='adam')
        autoencoder.summary()
        return autoencoder,encoder

    def trainModel(self, X_train, X_valid):
        scaler=StandardScaler().fit(X_train)
        X_train=scaler.transform(X_train)
        X_valid=scaler.transform(X_valid)
        checkpoint_path = "./checkpoint/Attention_checkpoint.ckpt"
        checkpoint_dir = os.path.dirname(checkpoint_path)
        # self._autoencoder_model.load_weights(checkpoint_path)
        cp_callback = ModelCheckpoint(filepath=checkpoint_dir,
                                      save_weights_only=True,
                                      verbose=1)
        log_dir = "logs/fit/" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
        tb_callback = TensorBoard(log_dir=log_dir, histogram_freq=1)
        #es_callback = EarlyStopping(monitor='val_loss', min_delta=0.0001, patience=5)
        print("=========Begin=========")
        self._autoencoder_model.fit(X_train, X_train, epochs=self._train_epoch, verbose=1, batch_size=self._batch_size,
                                    validation_data=(X_valid, X_valid),
                                    callbacks=[cp_callback, tb_callback])
        self._autoencoder_model.save('saved_model/base_model')

    def encoderPredict(self, X, y):
        predicts = []
        for sample in X:
            predicted = self._encoder_model.predict(sample.reshape((1, sample.shape[0], sample.shape[1])), verbose=1)
            predicts.append(predicted)
        savez('./latent.npz', array(predicts, dtype=float), array(y, dtype=float))

    def knnClassify(self):
        data = load('./latent.npz')
        X_onehot = squeeze(data['arr_0'], axis=1)
        Y = squeeze(data['arr_1'], axis=1)
        X_train, X_val, Y_train, Y_val = train_test_split(X_onehot, Y, test_size=0.1)
        _knn_model = KNeighborsClassifier(n_neighbors=3)
        _knn_model.fit(X_train, Y_train)
        Acc = _knn_model.score(X_val, Y_val)
        dump(_knn_model, '{name}.joblib'.format(name=int(Acc * 100)))
        print(Acc)


def divide_train_test(X_all, Y_all, proportion=(0.7, 0.2, 0.1)):
    train, val, test = proportion
    random.seed(0)  # fixed random numbers
    if (len(X_all.shape) == 2):
        m, T_x = X_all.shape
        idx = random.rand(m)
        train_idx = [i for i in range(m) if idx[i] < train]
        test_idx = [i for i in range(m) if idx[i] > 1 - test]
        val_idx = list(set(range(m)).difference(set(train_idx)).difference(set(test_idx)))

        X_train = X_all[train_idx, :]
        Y_train = Y_all[train_idx]
        X_val = X_all[val_idx, :]
        Y_val = Y_all[val_idx]
        X_test = X_all[test_idx, :]
        Y_test = Y_all[test_idx]

        return X_train, Y_train, X_val, Y_val, X_test, Y_test
    else:
        m, T_x, num_class = X_all.shape
        idx = random.rand(m)
        train_idx = [i for i in range(m) if idx[i] < train]
        test_idx = [i for i in range(m) if idx[i] > 1 - test]
        val_idx = list(set(range(m)).difference(set(train_idx)).difference(set(test_idx)))

        X_train = X_all[train_idx, :]
        Y_train = Y_all[train_idx, :]
        X_val = X_all[val_idx, :]
        Y_val = Y_all[val_idx, :]
        X_test = X_all[test_idx, :]
        Y_test = Y_all[test_idx, :]

        return X_train, Y_train, X_val, Y_val, X_test, Y_test
