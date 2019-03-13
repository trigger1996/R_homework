import pymysql

config = {
    'host':'127.0.0.1',
    'port':3306,                        # MySQL默认端口
    'user':'ghost',                     # MySQL默认用户名, root
    'password':'1730',                  # <无密码，直接输入空，不然就是1730>
    'db':'db',                          # 数据库名称
    'charset':'utf8',
    'cursorclass':pymysql.cursors.DictCursor,
}

db_name         = 'db'

train_tablename = 'wordlist_train'
test_tablename  = 'wordlist_test'

title_index_tablename   = 'word_index_title'
context_index_tablename = 'word_index_context'

result_train_tablename = 'ann_result_train'
result_test_tablename  = 'ann_result_test'

weight_trained_tablename = 'weight_trained'

def set_SQL_traindata_index(train_x, train_y, index, number_train):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + train_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + train_tablename + "(id INT,seq_all INT,real_val INT,word_index LONGTEXT)"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            for i in range(0, number_train):
                str_temp = str("'")
                arr_temp = train_x[i].transpose().tolist()
                for j in range(0, len(arr_temp)):
                    if arr_temp[j] != [0]:                      # 为什么不是0而是[0]看debug
                        str_temp = str_temp + str(j) + ","
                str_temp = str_temp + "'"

                sql = "INSERT INTO " + train_tablename + "(id,seq_all,real_val,word_index) VALUES(" + str(i) + \
                      "," + str(index[i]) + "," + str(train_y[i]) + "," + str_temp + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据
            #db.close()

    finally:
        db.close()

def set_SQL_testdata_index(test_x, test_y, index, number_test):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + test_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + test_tablename + "(id INT,seq_all INT,real_val INT,word_index LONGTEXT)"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            for i in range(0, number_test):
                str_temp = str("'")
                arr_temp = test_x[i].transpose().tolist()
                for j in range(0, len(arr_temp)):
                    if arr_temp[j] != [0]:                      # 为什么不是0而是[0]看debug
                        str_temp = str_temp + str(j) + ","
                str_temp = str_temp + "'"

                sql = "INSERT INTO " + test_tablename + "(id,seq_all,real_val,word_index) VALUES(" + str(i) + \
                      "," + str(index[i]) + "," + str(test_y[i]) + "," + str_temp + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据
            #db.close()

    finally:
        db.close()

def update_WordIndex_Title(word_index_title):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + title_index_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + title_index_tablename + "(value INT,word VARCHAR(50))"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            word_index_list = list(word_index_title)         # 这个是字典dict，而且主键居然是文字，非常难操作
            size_index = len(word_index_title)
            for i in range(0, size_index):
                temp = word_index_list[i]
                sql = "INSERT INTO " + title_index_tablename + "(value,word) VALUES(" + \
                      str(i) + "," + "'" + temp + "'" + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据

    finally:
        db.close()

def update_WordIndex_Context(word_index_context):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + context_index_tablename
            cursor.execute(sql)

            word_index_list = list(word_index_context)         # 这个是字典dict，而且主键居然是文字，非常难操作
            size_thousand = len(word_index_context)  // 1000
            size_mod      = len(word_index_context)  %  1000

            '''这里有个bug，sql的单张数据表只能放1000个数据，所以只能多搞几个表格'''
            '''所以要删掉所有的'''
            for i in range(0, size_thousand):
                sql = "drop table if exists " + context_index_tablename + str(i)
                cursor.execute(sql)

            for i in range(0, size_thousand):
                sql = "create table " + context_index_tablename + str(i) + "(value INT,word VARCHAR(50))"
                cursor.execute(sql)  # 创建表
                for j in range(0, size_mod):
                    '''把所有的东西放进表格'''
                    temp = word_index_list[i * 1000 + j]
                    sql = "INSERT INTO " + context_index_tablename + str(i) + "(value,word) VALUES(" + \
                          str(j) + "," + "'" + temp + "'" + ")"
                    cursor.execute(sql)
                db.commit()  # 提交数据

    finally:
        db.close()


def update_TestResult_Train(y_train, y_real, n_samples):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + result_train_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + result_train_tablename + "(id INT,predict_val DOUBLE, real_val DOUBLE)"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            for i in range(0, n_samples):
                sql = "INSERT INTO " + result_train_tablename + "(id,predict_val,real_val) VALUES(" + \
                      str(i) + "," + str(y_train[i]) + "," + str(y_real[i][0]) + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据

    finally:
        db.close()

def update_TestResult_Test(y_test, y_real, n_samples):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + result_test_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + result_test_tablename + "(id INT,predict_val DOUBLE, real_val DOUBLE)"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            for i in range(0, n_samples):
                sql = "INSERT INTO " + result_test_tablename + "(id,predict_val,real_val) VALUES(" + \
                      str(i) + "," + str(y_test[i]) + "," + str(y_real[i][0]) + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据

    finally:
        db.close()

def store_WeightTrained(weight_list):
    db = pymysql.connect(**config)

    try:
        with db.cursor() as cursor:
            #sql="select * from " + db_name
            #cursor.execute(sql)

            '''第一件事情是要删掉旧的表格，因为每次读取进来列的树木都是不一样的'''
            sql = "drop table if exists " + weight_trained_tablename
            cursor.execute(sql)
            '''创建表'''
            sql = "create table " + weight_trained_tablename + "(id INT,layer_1 DOUBLE)"
            cursor.execute(sql)  # 创建表

            '''把所有的东西放进表格'''
            size_list = len(weight_list)
            for i in range(0, size_list):
                sql = "INSERT INTO " + weight_trained_tablename + "(id,layer_1) VALUES(" + \
                      str(i) + "," + str(weight_list[i][0]) + ")"
                cursor.execute(sql)

            db.commit()  # 提交数据

    finally:
        db.close()