---
title: "Autoencoder Tutorial"
comments: true
categories:
  - installation
tags:
  - keras
---


## Topic: AutoEncoder
An Autoencoder __neural network__ is a type of unsupervised learning algorithm that applies backpropagation and setting the target values to be equal to the inputs that means;
 y<sup>(i)</sup> = x<sup>(i)</sup> 

Ref:http://ufldl.stanford.edu/tutorial/unsupervised/Autoencoders/
https://www.deeplearningbook.org/contents/autoencoders.html


The model is actually try to learn a function _h_<sub>W,b</sub>(X) $\approx$ X which means that the fuction is trying to learn an approximatly identity function. The model is a neural network with 3 layers. The input layer size is the size of X and output layer also have same size while the hidden layer are of varing size. The number of neurons in the hidden layer may be less or more than the input layer. Lets assume the number of neuron in the hidden layer is 50 and the output layer is 100. So the function is force to learn compressed representation of the input data. If the input features were each independent of one another, this compression and subsequent reconstructioin would be very difficult task. However if there is some sort of structure exist for example correlation between the features then this stucture can be learned and leverage when forcing the input the network's bottleneck.

 There are many application of autoencoder such as:

    - Dimension reduction
    - Extract hidden pattern (information) in the data
    - Recomendation system for the missing values
    - Data denoising.
    
 We are going to do a hands on exercise for better understanding. 
 
 There are different types of __autoencoder__:
     - Undercomplete autoencoder
     - Sparse autoencoder
     - Denoising autoencoder
     - Contractive autoencoder
     
     
 ### Undercomplete autoencoder
 ### Complete autoencoder
 


```python
# Building an autoencoder
```


```python
# loading important libraries

import tensorflow as tf
from keras.layers import Input, Dense
from keras.models import Model
from keras import regularizers
from keras.callbacks import TensorBoard

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
```

    Using TensorFlow backend.



```python
# encoding dimenison
encoding_dim = 32

input_img = Input(shape=(784,))

# encoded is the encoding representation of the input
encoded = Dense(encoding_dim,activation="relu")(input_img)

# decoded is the decoding representation of the encoded image
decoded = Dense(784, activation="sigmoid")(encoded)

# This model map an input to its reconstruction
autoencoder = Model(input_img,decoded)

# only encoded repsentation
encoded = Model(input_img,encoded)
```


```python
# Next is the decoded model

encoded_input = Input(shape=(encoding_dim,))
decoder_layer = autoencoder.layers[-1]
decoder = Model(encoded_input, decoder_layer(encoded_input))
```


```python
# Compile the model
autoencoder.compile(loss="binary_crossentropy",optimizer="adadelta")
```

Let's prepare our datasets



```python
from keras.datasets import mnist
```


```python
 (x_train, _), (x_test,_) = mnist.load_data()
```


```python
print(x_train.shape)
print(x_test.shape)
```

    (60000, 28, 28)
    (10000, 28, 28)



```python
# Normalized the values between 0 to 1 
x_train = x_train.astype('float32') / 255.
x_test = x_test.astype('float32') / 255.
```


```python
x_train.shape
```




    (60000, 28, 28)




```python
# flatten the shape
x_train = x_train.reshape(x_train.shape[0],np.prod(x_train.shape[1:]))
x_test = x_test.reshape(x_test.shape[0],np.prod(x_test.shape[1:]))
```


```python
np.prod(x_train.shape[1:])
```




    784




```python
print(x_train.shape)
print(x_test.shape)
```

    (60000, 784)
    (10000, 784)



```python
# training 
autoencoder.fit(x_train, x_train,epochs=100, batch_size=256, shuffle=True, validation_data=(x_test, x_test),callbacks=[TensorBoard(log_dir='autoencoderLog')])
```

    Train on 60000 samples, validate on 10000 samples
    Epoch 1/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.3702 - val_loss: 0.2719
    Epoch 2/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.2648 - val_loss: 0.2543
    Epoch 3/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.2438 - val_loss: 0.2312
    Epoch 4/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.2230 - val_loss: 0.2130
    Epoch 5/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.2081 - val_loss: 0.2006
    Epoch 6/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1973 - val_loss: 0.1912
    Epoch 7/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1886 - val_loss: 0.1835
    Epoch 8/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1816 - val_loss: 0.1771
    Epoch 9/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1756 - val_loss: 0.1715
    Epoch 10/100
    60000/60000 [==============================] - 3s 46us/step - loss: 0.1704 - val_loss: 0.1667
    Epoch 11/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1658 - val_loss: 0.1623
    Epoch 12/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1616 - val_loss: 0.1582
    Epoch 13/100
    60000/60000 [==============================] - 2s 36us/step - loss: 0.1579 - val_loss: 0.1548
    Epoch 14/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1544 - val_loss: 0.1514
    Epoch 15/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1512 - val_loss: 0.1482
    Epoch 16/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1482 - val_loss: 0.1453
    Epoch 17/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1455 - val_loss: 0.1426
    Epoch 18/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1429 - val_loss: 0.1401
    Epoch 19/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1404 - val_loss: 0.1378
    Epoch 20/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1381 - val_loss: 0.1355
    Epoch 21/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1360 - val_loss: 0.1333
    Epoch 22/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1339 - val_loss: 0.1313
    Epoch 23/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1319 - val_loss: 0.1294
    Epoch 24/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1300 - val_loss: 0.1275
    Epoch 25/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1282 - val_loss: 0.1258
    Epoch 26/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1265 - val_loss: 0.1241
    Epoch 27/100
    60000/60000 [==============================] - 3s 49us/step - loss: 0.1249 - val_loss: 0.1225
    Epoch 28/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1234 - val_loss: 0.1211
    Epoch 29/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1219 - val_loss: 0.1196
    Epoch 30/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1206 - val_loss: 0.1183
    Epoch 31/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1193 - val_loss: 0.1171
    Epoch 32/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1182 - val_loss: 0.1160
    Epoch 33/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1171 - val_loss: 0.1150
    Epoch 34/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1161 - val_loss: 0.1141
    Epoch 35/100
    60000/60000 [==============================] - 2s 30us/step - loss: 0.1152 - val_loss: 0.1132
    Epoch 36/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1144 - val_loss: 0.1123
    Epoch 37/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1136 - val_loss: 0.1116
    Epoch 38/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1129 - val_loss: 0.1109
    Epoch 39/100
    60000/60000 [==============================] - 2s 30us/step - loss: 0.1122 - val_loss: 0.1103
    Epoch 40/100
    60000/60000 [==============================] - 2s 30us/step - loss: 0.1116 - val_loss: 0.1097
    Epoch 41/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1110 - val_loss: 0.1091
    Epoch 42/100
    60000/60000 [==============================] - 2s 31us/step - loss: 0.1105 - val_loss: 0.1086
    Epoch 43/100
    60000/60000 [==============================] - 3s 42us/step - loss: 0.1100 - val_loss: 0.1082
    Epoch 44/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1096 - val_loss: 0.1077
    Epoch 45/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1092 - val_loss: 0.1073
    Epoch 46/100
    60000/60000 [==============================] - 2s 41us/step - loss: 0.1088 - val_loss: 0.1069
    Epoch 47/100
    60000/60000 [==============================] - 3s 48us/step - loss: 0.1084 - val_loss: 0.1066
    Epoch 48/100
    60000/60000 [==============================] - 3s 57us/step - loss: 0.1080 - val_loss: 0.1062
    Epoch 49/100
    60000/60000 [==============================] - 3s 45us/step - loss: 0.1077 - val_loss: 0.1059
    Epoch 50/100
    60000/60000 [==============================] - 2s 41us/step - loss: 0.1074 - val_loss: 0.1056
    Epoch 51/100
    60000/60000 [==============================] - 2s 38us/step - loss: 0.1071 - val_loss: 0.1053
    Epoch 52/100
    60000/60000 [==============================] - 2s 41us/step - loss: 0.1068 - val_loss: 0.1050
    Epoch 53/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.1065 - val_loss: 0.1047
    Epoch 54/100
    60000/60000 [==============================] - 2s 36us/step - loss: 0.1063 - val_loss: 0.1045
    Epoch 55/100
    60000/60000 [==============================] - 2s 39us/step - loss: 0.1060 - val_loss: 0.1043
    Epoch 56/100
    60000/60000 [==============================] - 3s 46us/step - loss: 0.1058 - val_loss: 0.1041
    Epoch 57/100
    60000/60000 [==============================] - 3s 52us/step - loss: 0.1056 - val_loss: 0.1038
    Epoch 58/100
    60000/60000 [==============================] - 3s 48us/step - loss: 0.1054 - val_loss: 0.1036
    Epoch 59/100
    60000/60000 [==============================] - 3s 45us/step - loss: 0.1052 - val_loss: 0.1034
    Epoch 60/100
    60000/60000 [==============================] - 3s 53us/step - loss: 0.1050 - val_loss: 0.1032
    Epoch 61/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1048 - val_loss: 0.1030
    Epoch 62/100
    60000/60000 [==============================] - 3s 42us/step - loss: 0.1046 - val_loss: 0.1028
    Epoch 63/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1044 - val_loss: 0.1027
    Epoch 64/100
    60000/60000 [==============================] - 2s 41us/step - loss: 0.1042 - val_loss: 0.1025
    Epoch 65/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1041 - val_loss: 0.1024
    Epoch 66/100
    60000/60000 [==============================] - 2s 38us/step - loss: 0.1039 - val_loss: 0.1022
    Epoch 67/100
    60000/60000 [==============================] - 2s 36us/step - loss: 0.1038 - val_loss: 0.1020
    Epoch 68/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1036 - val_loss: 0.1019
    Epoch 69/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1035 - val_loss: 0.1018
    Epoch 70/100
    60000/60000 [==============================] - 2s 34us/step - loss: 0.1033 - val_loss: 0.1017
    Epoch 71/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1032 - val_loss: 0.1015
    Epoch 72/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1031 - val_loss: 0.1014
    Epoch 73/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1030 - val_loss: 0.1013
    Epoch 74/100
    60000/60000 [==============================] - 3s 55us/step - loss: 0.1028 - val_loss: 0.1012
    Epoch 75/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1027 - val_loss: 0.1010
    Epoch 76/100
    60000/60000 [==============================] - 3s 45us/step - loss: 0.1026 - val_loss: 0.1009
    Epoch 77/100
    60000/60000 [==============================] - 2s 36us/step - loss: 0.1025 - val_loss: 0.1008
    Epoch 78/100
    60000/60000 [==============================] - 2s 38us/step - loss: 0.1023 - val_loss: 0.1007
    Epoch 79/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.1022 - val_loss: 0.1006
    Epoch 80/100
    60000/60000 [==============================] - 3s 49us/step - loss: 0.1021 - val_loss: 0.1004
    Epoch 81/100
    60000/60000 [==============================] - 2s 40us/step - loss: 0.1020 - val_loss: 0.1003
    Epoch 82/100
    60000/60000 [==============================] - 3s 52us/step - loss: 0.1019 - val_loss: 0.1002
    Epoch 83/100
    60000/60000 [==============================] - 3s 49us/step - loss: 0.1017 - val_loss: 0.1001
    Epoch 84/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1016 - val_loss: 0.1000
    Epoch 85/100
    60000/60000 [==============================] - 3s 48us/step - loss: 0.1015 - val_loss: 0.0999
    Epoch 86/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1014 - val_loss: 0.0998
    Epoch 87/100
    60000/60000 [==============================] - 2s 36us/step - loss: 0.1013 - val_loss: 0.0996
    Epoch 88/100
    60000/60000 [==============================] - 2s 41us/step - loss: 0.1012 - val_loss: 0.0995
    Epoch 89/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.1010 - val_loss: 0.0994
    Epoch 90/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1009 - val_loss: 0.0993
    Epoch 91/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.1008 - val_loss: 0.0992
    Epoch 92/100
    60000/60000 [==============================] - 2s 39us/step - loss: 0.1007 - val_loss: 0.0991
    Epoch 93/100
    60000/60000 [==============================] - 2s 37us/step - loss: 0.1006 - val_loss: 0.0990
    Epoch 94/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1005 - val_loss: 0.0989
    Epoch 95/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1004 - val_loss: 0.0988
    Epoch 96/100
    60000/60000 [==============================] - 2s 35us/step - loss: 0.1003 - val_loss: 0.0986
    Epoch 97/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.1002 - val_loss: 0.0985
    Epoch 98/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.1000 - val_loss: 0.0984
    Epoch 99/100
    60000/60000 [==============================] - 2s 32us/step - loss: 0.0999 - val_loss: 0.0984
    Epoch 100/100
    60000/60000 [==============================] - 2s 33us/step - loss: 0.0998 - val_loss: 0.0982





    <keras.callbacks.History at 0x134fde208>




```python
print(autoencoder.summary())
```

    _________________________________________________________________
    Layer (type)                 Output Shape              Param #   
    =================================================================
    input_3 (InputLayer)         (None, 784)               0         
    _________________________________________________________________
    dense_3 (Dense)              (None, 32)                25120     
    _________________________________________________________________
    dense_4 (Dense)              (None, 784)               25872     
    =================================================================
    Total params: 50,992
    Trainable params: 50,992
    Non-trainable params: 0
    _________________________________________________________________
    None



```python
encoded_imgs = encoded.predict(x_test)
```


```python
decoded_imgs = decoder.predict(encoded_imgs)
```

Lets plot with matplotlib



```python
n =10
plt.figure(figsize=(20, 4))
for i in range(n):
    # original image
    ax = plt.subplot(2, n, i + 1)
    plt.imshow(x_test[i].reshape(28,28))
    plt.gray()
    ax.get_xaxis().set_visible(False)
    ax.get_yaxis().set_visible(False)
    
    # Reconstructed image
    ax = plt.subplot(2, n, i + 1 + n)
    plt.imshow(decoded_imgs[i].reshape(28,28))
    plt.gray()
    ax.get_xaxis().set_visible(False)
    ax.get_yaxis().set_visible(False)


plt.show()
```


![png](/assets/images/output_20_0.png)

