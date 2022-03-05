---
title: "How to configure tensorboard jupyter inline"
comments: true
toc: true
categories:
  - installation
tags:
  - ML
---

<!-- TOC -->

- [Tensorboard inline](#tensorboard-inline)
  - [Installation:](#installation)
  - [Example](#example)
  - [Calling Tensorbord](#calling-tensorbord)

<!-- /TOC -->

# Tensorboard inline
Tensorboard is a very useful tool to see the training progress of the neural network model which is using tensorflow in the backend. There are manyway you can call the tensorbords. Most common way is to call the tensorboard local server and open in the browser. Jupyter notebook also having an extension that will open the tensorboard in a new tab.

Today I am going to share a new feature of the tensorboard which is still under development is the use the tensorbard with python magic "%" inline. The training visualization will be on the within the jupyter cell and no need open a new tab.




## Installation:
We need to install the `tf-nightly` package using pip or conda

     ./pip install tf-nightly-2.0-preview

Next is to load the jupyter extension.


```python
%load_ext tensorboard.notebook
```

    The tensorboard.notebook extension is already loaded. To reload it, use:
      %reload_ext tensorboard.notebook


## Example


```python
import tensorflow as tf
import datetime
```


```python
# using the mnist data
mnist = tf.keras.datasets.mnist
(x_train, y_train),(x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0 , x_test / 255.0

```


```python
# function to create model

def create_model():
    return tf.keras.models.Sequential([
        tf.keras.layers.Flatten(input_shape=(28,28)),
        tf.keras.layers.Dense(512, activation='relu'),
        tf.keras.layers.Dropout(0.2),
        tf.keras.layers.Dense(10, activation='softmax')
    ])
```


```python
model = create_model()
model.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])

log_dir = "Tblogs/fit" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
tensorboard_callback = tf.keras.callbacks.TensorBoard(log_dir=log_dir,histogram_freq=1)

model.fit(x=x_train,
          y=y_train,
          epochs=10,
          validation_data=(x_test, y_test),
          callbacks=[tensorboard_callback]
         )
```

    Train on 60000 samples, validate on 10000 samples
    Epoch 1/10
    60000/60000 [==============================] - 9s 153us/sample - loss: 0.2212 - accuracy: 0.9346 - val_loss: 0.1126 - val_accuracy: 0.9654
    Epoch 2/10
    60000/60000 [==============================] - 8s 140us/sample - loss: 0.0958 - accuracy: 0.9706 - val_loss: 0.0750 - val_accuracy: 0.9754
    Epoch 3/10
    60000/60000 [==============================] - 8s 138us/sample - loss: 0.0700 - accuracy: 0.9785 - val_loss: 0.0788 - val_accuracy: 0.9756
    Epoch 4/10
    60000/60000 [==============================] - 8s 136us/sample - loss: 0.0535 - accuracy: 0.9829 - val_loss: 0.0627 - val_accuracy: 0.9797
    Epoch 5/10
    60000/60000 [==============================] - 8s 139us/sample - loss: 0.0436 - accuracy: 0.9856 - val_loss: 0.0743 - val_accuracy: 0.9787
    Epoch 6/10
    60000/60000 [==============================] - 8s 131us/sample - loss: 0.0358 - accuracy: 0.9880 - val_loss: 0.0632 - val_accuracy: 0.9819
    Epoch 7/10
    60000/60000 [==============================] - 8s 131us/sample - loss: 0.0331 - accuracy: 0.9888 - val_loss: 0.0636 - val_accuracy: 0.9812
    Epoch 8/10
    60000/60000 [==============================] - 8s 139us/sample - loss: 0.0270 - accuracy: 0.9909 - val_loss: 0.0701 - val_accuracy: 0.9823
    Epoch 9/10
    60000/60000 [==============================] - 8s 138us/sample - loss: 0.0227 - accuracy: 0.9925 - val_loss: 0.0681 - val_accuracy: 0.9826
    Epoch 10/10
    60000/60000 [==============================] - 9s 144us/sample - loss: 0.0240 - accuracy: 0.9922 - val_loss: 0.0824 - val_accuracy: 0.9804

    <tensorflow.python.keras.callbacks.History at 0x13fca6e80>



## Calling Tensorbord


```python
%tensorboard --logdir Tblogs/
```
![Tensorboard](/assets/images/tensorboard.png)
