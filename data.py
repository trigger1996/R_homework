import pymysql
import pandas
import jieba
from collections import Counter
from keras.preprocessing.text import Tokenizer

config = {
    'host':'127.0.0.1',
    'port':3306,                        # MySQL默认端口
    'user':'ghost',                     # MySQL默认用户名, root
    'password':'1730',                  # <无密码，直接输入空，不然就是1730>
    'db':'db',                          # 数据库名称
    'charset':'utf8',
    'cursorclass':pymysql.cursors.DictCursor,
}
news_tablename = 'xmunews'


def get_SQL():
    con = pymysql.connect(**config)  # 执行sql语句
    try:
        with con.cursor() as cursor:
            sql="select * from " + news_tablename
            cursor.execute(sql)
            result=cursor.fetchall()
    finally:
        con.close()

    df=pandas.DataFrame(result)             # 转换成DataFrame格式
    df.head()
    return df

def remove_Word_from_Vocabularies(voc_in, key_id):
    l = [i for i in voc_in if i != key_id]
    return l

def remove_Identical_Element_from_List(one_list):
    '''
    使用集合，个人最常用
    '''
    return list(set(one_list))

def Chinese_Importer(sample_num):
    ##
    # 主函数部分
    df = get_SQL()
    #print(df)
    #print(df.title)
    #print(df.content)


    view_raw    = list(df.view[:sample_num])
    title_raw   = list(df.title[:sample_num])
    context_raw = list(df.content[:sample_num])

    word_title   = []
    word_content = []
    for i in range(0, df.__len__()):
        word_title.append(jieba.cut(df.title[i]))
        word_content.append(jieba.cut(df.content[i]))
        word_title[i]   = " ". join(word_title[i])
        word_content[i] = " ". join(word_content[i])
        #print(word_title[i])
        #print(word_title[i])
        # 测试代码
        print(i / df.__len__())     # 打印进度
        if i == sample_num - 1:     # 10, 等太久了
            break

    # 编码
    title_vocabulary = []           # 这个是个二维列表，其由多个列列表组成，每个列表都是每篇文章title的关键字
    for i in range(0, word_title.__len__()):
        voc_arr = word_title[i]
        space_pos = voc_arr.find(' ')
        title_voc_single = []
        while space_pos >= 0:
            title_voc_single.append(voc_arr[:space_pos])
            voc_arr = voc_arr[space_pos + ' '.__len__() : ]
            space_pos = voc_arr.find(' ')
        title_vocabulary.append(title_voc_single)

    context_vocabulary = []         # 二维列表，由多个列表组成，每个列表都是每篇文章context的关键字
    for i in range(0, word_content.__len__()):
        voc_arr = word_content[i]
        space_pos = voc_arr.find(' ')
        context_voc_single = []
        while space_pos >= 0:
            context_voc_single.append(voc_arr[:space_pos])
            voc_arr = voc_arr[space_pos + ' '.__len__() : ]
            space_pos = voc_arr.find(' ')
        context_vocabulary.append(context_voc_single)


    # 去掉其中的一些非关键的一些符号
    delete_voc = [ "【", "】", "，", "。", "；","：","”", "“", "（", "）", "·", "•", "、", "。", "《", "》",
                   " ", "‘", "’", "", "—", "-", "　", "(", ")", "+", "-", "*", "/", "\\" ]            # 这里面也有一些是低频的，如果删除可能有争议，如"—"
    for i in range(0, title_vocabulary.__len__()):
        for j in range(0, delete_voc.__len__()):
            title_vocabulary[i]   = remove_Word_from_Vocabularies(title_vocabulary[i],   delete_voc[j])
            context_vocabulary[i] = remove_Word_from_Vocabularies(context_vocabulary[i], delete_voc[j])

    # 去除一些词，这个要慎重，结果如果不好则注释下方代码块
    delete_wrd = [ "的", "地", "得", "了", "在", "中", "与", "年", "月", "日", "是", "上", "下", "等", "用", "着", "和", "将", "为" ]
    for i in range(0, title_vocabulary.__len__()):
        for j in range(0, delete_wrd.__len__()):
            title_vocabulary[i]   = remove_Word_from_Vocabularies(title_vocabulary[i],   delete_wrd[j])
            context_vocabulary[i] = remove_Word_from_Vocabularies(context_vocabulary[i], delete_wrd[j])

    #print(title_vocabulary)
    #print(context_vocabulary)

    # 做一个词频
    most_freq_context       = []
    most_freq_context_times = []
    most_freq_title       = []
    most_freq_title_times = []
    for i in range(0, title_vocabulary.__len__()):
        cnt = Counter()
        for word in context_vocabulary[i]:
            cnt[word] += 1
        mf_temp = []
        mf_temp_t = []
        for word_freq in cnt.most_common(20):         # https://segmentfault.com/a/1190000004553937 # 20
            word, freq = word_freq
            mf_temp.append(word)
            mf_temp_t.append(freq)
            #print(word, freq)
        most_freq_context.append(mf_temp)
        most_freq_context_times.append(mf_temp_t)
        #print(cnt.most_common(5))  # [('blue', 3), ('red', 2), ('green', 1)]\

        cnt = Counter()
        for word in title_vocabulary[i]:
            cnt[word] += 1
        mf_temp = []
        mf_temp_t = []
        for word_freq in cnt.most_common(3):                                                        # 3
            word, freq = word_freq
            mf_temp.append(word)
            mf_temp_t.append(freq)
        most_freq_title.append(mf_temp)
        most_freq_title_times.append(mf_temp_t)

    title_vocabulary   = most_freq_title
    context_vocabulary = most_freq_context

    # keras编码
    # 先把所有的词复制到一个超大的数组内
    keras_dict_title  = []
    for i in range(0, title_vocabulary.__len__()):
        for j in range(0, title_vocabulary[i].__len__()):
            keras_dict_title.append(title_vocabulary[i][j])
    keras_dict_context = []
    for i in range(0, context_vocabulary.__len__()):
        for j in range(0, context_vocabulary[i].__len__()):
            keras_dict_context.append(context_vocabulary[i][j])

    remove_Identical_Element_from_List(keras_dict_title)
    remove_Identical_Element_from_List(keras_dict_context)

    tokenizer = Tokenizer(num_words=keras_dict_title.__len__())  # i创建一个分词器（tokenizer），设置为只考虑前10000个最常见的单词
    tokenizer.fit_on_texts(keras_dict_title)   # 构建索引单词
    sequences = tokenizer.texts_to_sequences(keras_dict_title)   # 将字符串转换为整数索引组成的列表
    # one_hot_title= tokenizer.texts_to_matrix(keras_dict, mode='binary')  #可以直接得到one-hot二进制表示。
    word_index_title = tokenizer.word_index  # 得到单词索引

    tokenizer = Tokenizer(num_words=len(word_index_title)+1)  # i创建一个分词器（tokenizer）
    tokenizer.fit_on_texts(keras_dict_title)   # 构建索引单词
    sequences = tokenizer.texts_to_sequences(title_vocabulary)   # 将字符串转换为整数索引组成的列表
    one_hot_title = tokenizer.texts_to_matrix(title_vocabulary, mode='binary')  #可以直接得到one-hot二进制表示。


    tokenizer = Tokenizer(num_words=keras_dict_context.__len__())  # i创建一个分词器（tokenizer），设置为只考虑前10000个最常见的单词
    tokenizer.fit_on_texts(keras_dict_context)   # 构建索引单词
    sequences = tokenizer.texts_to_sequences(keras_dict_context)   # 将字符串转换为整数索引组成的列表
    # one_hot_title= tokenizer.texts_to_matrix(keras_dict, mode='binary')  #可以直接得到one-hot二进制表示。
    word_index_content = tokenizer.word_index  # 得到单词索引

    tokenizer = Tokenizer(num_words=len(word_index_content)+1)  # i创建一个分词器（tokenizer）
    tokenizer.fit_on_texts(keras_dict_context)   # 构建索引单词
    sequences = tokenizer.texts_to_sequences(context_vocabulary)   # 将字符串转换为整数索引组成的列表
    one_hot_context = tokenizer.texts_to_matrix(context_vocabulary, mode='binary')  #可以直接得到one-hot二进制表示。

    print(233)      # 用来设断点的

    return [one_hot_title, one_hot_context, view_raw, title_raw, context_raw]

# 最后用到的输出:
#    title_vocabulary           标题词库
#    context_vocabulary         正文词库
#    one_hot_title              标题编码结果
#    one_hot_context            正文编码结果

# ！
# 需要注意
#   1
#   为了debug快，我们只用了前五个
#   如果需要使用所有数据，需注释
#       # 测试代码
#       print(i / df.__len__())  # 打印进度
#       if i == 5:  # 等太久了
#           break
#   2
#   tokenizer.fit_on_texts(keras_dict)   # 构建索引单词
#   这一处的输入有点毛病，我不确定是title_vocabulary还是keras_dict
#   如果错误则需要修改
#
#   3
#   # one_hot_title= tokenizer.texts_to_matrix(keras_dict, mode='binary')  #可以直接得到one-hot二进制表示
#   这行直接注释了，如果需要，则取消注释
#
#   4
#   关于标签的删除
#   需注意91行处与85行处
#
#   5
#   101行处，这边的添加词库是直接添加的，没有考虑重复项
#   不知道keras能不能自动过滤
#   如果可以，则不用担心，若不行，则需要在操作中删除重复项