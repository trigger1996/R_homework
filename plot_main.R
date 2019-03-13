path="./"     #声明test2.R所在位置
setwd(path)   #把工作路径设置到path

source("Rsql_load.R")

a = 1
b = 2
c = 3

wordlist_train_tablename = "wordlist_train"
wordlist_test_tablename  = "wordlist_test"
word_index_title_tablename   = 'word_index_title'
word_index_context_tablename = 'word_index_context'


wordlist_train = load_MySQL_TableAll(wordlist_train_tablename)
wordlist_test  = load_MySQL_TableAll(wordlist_test_tablename)
wordindex_title  = load_MySQL_TableAll(word_index_title_tablename)
worindex_context = load_MySQL_TableAll(word_index_context_tablename)