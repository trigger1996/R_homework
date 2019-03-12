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