import tensorflow as tf
import numpy as np
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
import sklearn

import data

'''几个参考'''
'''使用TensorFlow构建一个简单的回归预测模型'''
# https://blog.csdn.net/sinat_29957455/article/details/80531563
# 这篇很基础，可以结合minst来看
#
'''用TensorFlow搭建一个全连接神经网络'''
# https://www.jianshu.com/p/6c38068648ee
# https://blog.csdn.net/techping/article/details/79519398
# https://blog.csdn.net/williamyi96/article/details/78313924
# 这边好几个例子是minst的
# 最后一个网址用的是layer的
#
'''TensorFlow应用：预测我国铁路客运量'''
# https://blog.csdn.net/weixin_39128119/article/details/80873911
# 这篇很多高阶的运用
#
'''几个错误'''
### ValueError: Cannot feed value of shape (1,) for Tensor u'Placeholder:0', which has shape '(1, 1)'
# https://blog.csdn.net/qq_29381089/article/details/78836435
# https://stackoverflow.com/questions/44216254/tensorflow-valueerror-cannot-feed-value-of-shape-423-for-tensor-placeholde
# https://stackoverflow.com/questions/46715794/tensorflow-valueerror-cannot-feed-value-of-shape-128-for-tensor-placehold
# 虽然这个没帮上，但是有一定参考意义
#
### 损失函数爆炸
###
# https://blog.csdn.net/limiyudianzi/article/details/80697711
'''后续代码升级'''
'''用Tensorflow实现多层神经网络'''
# https://www.cnblogs.com/cloud-ken/p/8436436.html

'''设置函数'''
# 总的采样数
n_samples = 835
# 测试集的比重
data_test_volume = 0.2
# 训练集和测试集的数量，由上面两个参数得到
n_samples_train = int((1 - data_test_volume) * n_samples)
n_samples_test = n_samples - n_samples_train

# 设置梯度下降算法的学习率
learning_rate = 0.01
# 设置迭代次数
max_steps = 125
# 每迭代100次输出一次loss
show_step = 5

def data_Importer():
    ''''''
    '''从数据库读取数据'''
    [onehot_title, onehot_context, view, title, context] = data.Chinese_Importer(n_samples)

    '''整理输入'''
    # 这里参考https://blog.csdn.net/weixin_39128119/article/details/80873911
    # 这里的x, y是由列表给入的，说明使用列表是可行的
    x = []
    input_dim = onehot_context[0].__len__() + onehot_title[0].__len__() + 1     # + 3
    for i in range(0, n_samples):
        temp = []
        # 正文分词结果
        for j in range(0, onehot_context[i].__len__()):
            temp.append(onehot_context[i][j])
        # 标题分词结果
        for j in range(0, onehot_title[i].__len__()):
            temp.append(onehot_title[i][j])
        # 正文长度
        #temp.append(float(context[i].__len__()))
        # 标题长度
        #temp.append(float(title[i].__len__()))
        # 标题中是否带有【】
        temp.append(float(bool(title[i].find("【"))))

        np_t = np.array(temp)
        np_t = np_t.reshape(input_dim, 1).transpose()
        x.append(np_t)

    scaler = MinMaxScaler()
    y_t = np.array(view)
    #y_t = scaler.fit_transform(y_t.reshape(-1, 1))                             # 归一化数据，这个reshape是被逼的，https://blog.csdn.net/GrinAndBearIt/article/details/79286027
    y_t = np.reshape(y_t, (n_samples, 1)).astype(float)
    y = []
    for i in range(0, n_samples):                                               # 转换成列表
        y.append(y_t[i][0])

    x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=data_test_volume, random_state=1)

    return input_dim, x_train, x_test, y_train, y_test


# 创建一个全连接层函数
def fully_connected(input_layer, weights, biases):
    layer = tf.add(tf.matmul(input_layer, weights), biases)
    return (tf.nn.relu(layer))

'''int main(int argc, char *argv[]) {'''
if __name__ == "__main__":

    input_dim, x_train, x_test, y_train, y_test = data_Importer()

    '''定义占位符'''
    xs = tf.placeholder(tf.float32, [None, input_dim])                  # 这里的维数一定要认真查，很容易出错
    ys = tf.placeholder(dtype=tf.float32)                               #ys = tf.placeholder(tf.float32, [None, 1])

    '''定义权重，初始化输出'''
    # 这里有个很大的问题，就是Minst问题只是一个分类器，所以只要1层网络就够用
    # 而我们这里用来拟合非线性函数，至少要2层网络
    weights = tf.Variable(tf.random_normal([input_dim, 1]))            # 定义网络的权重
    biases  = tf.Variable(tf.zeros([1, 1]) + 0.1)                      # 定义网络各个神经元的偏置
    # Store layers weight & bias
    # Network Parameters
    #n_hidden_1  = input_dim                                            # 1st layer number of neurons
    #n_hidden_2  = input_dim * 2                                        # 2nd layer number of neurons
    #num_input   = input_dim                                            # MNIST data input (img shape: 28*28)
    #num_classes = 1                                                    # MNIST total classes (0-9 digits)
    #weights = { 'h1' : tf.Variable(tf.random_normal([num_input, n_hidden_1])),
    #            'h2' : tf.Variable(tf.random_normal([n_hidden_1, n_hidden_2])),
    #            'out' : tf.Variable(tf.random_normal([n_hidden_2, num_classes]))
    #            }
    # 为何我们要将上述的两个变量以矩阵的形式进行传输
    #biases = { 'b1' : tf.Variable(tf.random_normal([n_hidden_1])),
    #           'b2' : tf.Variable(tf.random_normal([n_hidden_2])),
    #           'out' : tf.Variable(tf.random_normal([num_classes]) + 0.1)
    #           }

    '''根据权重还有等等一摞生成网络'''
    predictions = tf.nn.relu(tf.matmul(xs, weights) + biases)           # 初始化网络输出，这边原来是softmax
    #layer_1     = fully_connected(xs,      weights['h1'],  biases['b1'])
    #layer_2     = fully_connected(layer_1, weights['h2'],  biases['b2'])
    #predictions = fully_connected(layer_2, weights['out'], biases['out'])

    '''定义损失函数'''
    # 对识别类的损失函数就是交叉熵，对这种预测类的损失函数得自己搞定
    #cross_entropy = tf.reduce_mean(-tf.reduce_sum(ys * tf.log(predictions), reduction_indices=[1]))    # 交叉熵
    #loss = 0.5 * tf.reduce_sum(tf.pow(pred-Y,2)) / n_samples                                           # 回归模型的单元素
    #loss = tf.reduce_mean(tf.square(predictions - ys))
    loss = tf.reduce_mean(tf.square(tf.reshape(predictions, [-1]) - tf.reshape(ys, [-1])))

    #使用梯度下降算法来优化损失函数
    train_step = tf.train.GradientDescentOptimizer(learning_rate).minimize(loss)

with tf.Session() as sess:
    init = tf.global_variables_initializer()
    sess.run(init)

    # 这里数据要加一个，将x转成numpy，因为数据在分类的时候没有处理好，会出问题，这里打个补丁
    x_train_np = x_train[0]
    for i in range(1, n_samples_train):
        x_train_np = np.r_[x_train_np, x_train[i]]
    x_test_np = x_test[0]
    for i in range(1, n_samples_test):
        x_test_np = np.r_[x_test_np, x_test[i]]

    '''计算过程'''
    for step in range(max_steps):
        for (_x, _y) in zip(x_train, y_train):
            sess.run(train_step, feed_dict={xs: _x, ys: _y})
        if step % show_step == 0:
            # 计算模型在数据集上的损失
            step_loss = sess.run([loss], feed_dict={xs: x_train_np, ys: y_train})
            print("step:", step, "-step loss:%.4f", step_loss)

    '''计算最终的loss'''
    train_loss = sess.run([loss], feed_dict={xs: x_train_np, ys: y_train})
    print("train loss:%.4f", train_loss)

    '''做一个用于plot的x'''
    x_plt_train = range(0, n_samples_train)
    x_plt_test  = range(0, n_samples_test)

    '''输出参数'''
    print("weights:", sess.run(weights), "-bias:", sess.run(biases))
    plt.plot(x_plt_train, y_train, "ro", label="original data")
    plt.plot(x_plt_train, sess.run(predictions, feed_dict={xs: x_train_np}), label="predict data")
    plt.legend(loc="upper left")
    plt.show()

    '''计算回归模型在测试数据上的loss'''
    print("test loss:%.4f", sess.run(loss, feed_dict={xs: x_test_np, ys: y_test}))
    '''绘图'''
    plt.plot(x_plt_test, y_test, "bo", label="test data")
    plt.plot(x_plt_test, sess.run(predictions, feed_dict={xs: x_test_np}), label="predict test")
    plt.legend(loc="upper left")
    plt.show()