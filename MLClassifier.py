from supervised.automl import AutoML
from numpy import load,array,savez
from sklearn.model_selection import train_test_split
import pandas

if __name__=='__main__':
    data = load('XY.npz')
    X = data['arr_0']
    Y = data['arr_1']
    X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.2)
    automl = AutoML(mode='Perform')
    automl.fit(X_train, y_train)
    automl.report()
