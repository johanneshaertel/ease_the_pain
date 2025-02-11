# TODO: replace this stuff.

import tensorflow as tf

# Check if TensorFlow can access a GPU
gpus = tf.config.list_physical_devices('GPU')
if gpus:
    print("TensorFlow is using the following GPU(s):")
    for gpu in gpus:
        print(gpu)
else:
    print("No GPU found. TensorFlow is using the CPU.")
