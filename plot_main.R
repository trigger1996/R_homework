path="./"     #声明test2.R所在位置
setwd(path)   #把工作路径设置到path

source("Rsql_load.R")

## 
## 安装R包
# 安装stringr
all_packages = .packages(all.available=T)
if (which(all_packages == 'stringr') == 0) {
  install.packages("stringr")
}
library("stringr")
# 安装ggplot和ggplot2
if (which(all_packages == 'ggplot2') == 0) {
  install.packages("ggplot2")
}
library("ggplot2")
if (which(all_packages == 'RColorBrewer') == 0) {
  install.packages("RColorBrewer")
}
library("RColorBrewer")
if (which(all_packages == 'wordcloud2') == 0) {
  install.packages("wordcloud2")
}
library("wordcloud2")


wordlist_train_tablename = "wordlist_train"
wordlist_test_tablename  = "wordlist_test"

word_index_title_tablename   = 'word_index_title'
word_index_context_tablename = 'word_index_context'
word_index_table_num = 4

result_train_tablename = 'ann_result_train'
result_test_tablename  = 'ann_result_test'

ann_weight_tablename   = 'weight_trained'
ann_weight_table_num   = 5


##
## 
wordlist_train <- load_MySQL_TableAll(wordlist_train_tablename)         # 训练数据集基本信息
wordlist_test  <- load_MySQL_TableAll(wordlist_test_tablename)          # 测试数据集基本信息

wordindex_title  <- load_MySQL_TableAll(word_index_title_tablename)     # 标题索引
#wordindex_context <- vector(mode="data",length=3)
#for (i in 0:2)
#  wordindex_context[i+1] <- load_MySQL_TableAll(paste0(word_index_context_tablename, as.character(i)))
wordindex_context_0 <- load_MySQL_TableAll(paste0(word_index_context_tablename, as.character(0)))
wordindex_context_1 <- load_MySQL_TableAll(paste0(word_index_context_tablename, as.character(1)))
wordindex_context_2 <- load_MySQL_TableAll(paste0(word_index_context_tablename, as.character(2)))
wordindex_context_3 <- load_MySQL_TableAll(paste0(word_index_context_tablename, as.character(3)))
                                                                        # 文字索引

ann_result_train <- load_MySQL_TableAll(result_train_tablename)         # 训练集预测结果
ann_result_test  <- load_MySQL_TableAll(result_test_tablename)          # 测试集预测结果

ann_weight_0 <- load_MySQL_TableAll(paste0(ann_weight_tablename, as.character(0)))
ann_weight_1 <- load_MySQL_TableAll(paste0(ann_weight_tablename, as.character(1)))
ann_weight_2 <- load_MySQL_TableAll(paste0(ann_weight_tablename, as.character(2)))
ann_weight_3 <- load_MySQL_TableAll(paste0(ann_weight_tablename, as.character(3)))
ann_weight_4 <- load_MySQL_TableAll(paste0(ann_weight_tablename, as.character(4)))
                                                                        # 训练出来权重矩阵，这里因为单层神经网络的缘故，是个向量

##
## 合并表格
#
for (i in 1 : dim(wordindex_context_1)[1])
  wordindex_context_1[i, 1] = wordindex_context_1[i, 1] + 1000
for (i in 1 : dim(wordindex_context_2)[1])
  wordindex_context_2[i, 1] = wordindex_context_2[i, 1] + 2000
for (i in 1 : dim(wordindex_context_3)[1])
  wordindex_context_3[i, 1] = wordindex_context_3[i, 1] + 3000

wordindex_context <- rbind(wordindex_context_0, wordindex_context_1)
wordindex_context <- rbind(wordindex_context,   wordindex_context_2)
wordindex_context <- rbind(wordindex_context,   wordindex_context_3)

#
#wordindex_title

#
for (i in 1 : dim(ann_weight_1)[1])
  ann_weight_1[i, 1] = ann_weight_1[i, 1] + 1000
for (i in 1 : dim(ann_weight_2)[1])
  ann_weight_2[i, 1] = ann_weight_2[i, 1] + 2000
for (i in 1 : dim(ann_weight_3)[1])
  ann_weight_3[i, 1] = ann_weight_3[i, 1] + 3000
for (i in 1 : dim(ann_weight_4)[1])
  ann_weight_4[i, 1] = ann_weight_4[i, 1] + 4000

ann_weight <- rbind(ann_weight_0, ann_weight_1)
ann_weight <- rbind(ann_weight,   ann_weight_2)
ann_weight <- rbind(ann_weight,   ann_weight_3)
ann_weight <- rbind(ann_weight,   ann_weight_4)


##
## 把索引转成字

context_wordnum = 1000 * 3 + dim(wordindex_context_3)[1]
title_worldnum  = 1000 * 0  + dim(wordindex_title)[1]

# 先数据集
row_len = dim(wordlist_train)[1]
word_actual_train <- list()
for (i in 1 : row_len) {                                        # row_len, debug的时候可以用5
    wordlist_temp = dim(wordlist_train)[2]                      # 获得数据表每一行的元素个数，即列数
    word_index <- wordlist_train[i, wordlist_temp]              # 因为数列在数据表最后一列，所以这边缓存最后一列，就是关键字索引号，用于下一步处理
    word_index <- gsub(",", " ", word_index, fixed = TRUE)      # 把字符串中的逗号替换成空格
    word_index <- str_extract_all(word_index,"[0-9]{1,4}")      # 把单个的字符串转成列表
    table_len = lengths(word_index[1])                          # 获取列表长度，这里注意一下，如果要用元素的话，word_index[[1]][2]
    
    #rm(word_actual)
    word_actual <- word_index
    for (j in 1 : table_len) {
      val = as.numeric(word_index[[1]][j])
      
      if (val <= context_wordnum) {                             # 他这个顺序是先正文，后标题，再是否有【
        word = wordindex_context[val, 2]                        # 从索引里查找这个字符
        word_actual[[1]][j] <- as.character(word)               # 把这个字符合并到列表内
        #print(word)
      } else if (val < context_wordnum + title_worldnum) {
        word = wordindex_title[val - context_wordnum, 2]
        word_actual[[1]][j] <- as.character(word)               # 
        #print(word)        
      } else {
        
      }
    }
    #print(word_actual)
    word_actual_train <- cbind(word_actual_train, word_actual)
}

# 测试集
row_len = dim(wordlist_test)[1]
word_actual_test <- list()
for (i in 1 : row_len) {                                      # row_len, debug的时候可以用5
  wordlist_temp = dim(wordlist_test)[2]
  word_index <- wordlist_test[i, wordlist_temp]
  word_index <- gsub(",", " ", word_index, fixed = TRUE)      # 把字符串中的逗号替换成空格
  word_index <- str_extract_all(word_index, "[0-9]{1,4}")     # 把单个的字符串转成列表
  table_len = lengths(word_index[1])                          # 获取列表长度，这里注意一下，如果要用元素的话，word_index[[1]][2]
  
  #rm(word_actual)
  word_actual <- word_index
  for (j in 1 : table_len) {
    val = as.numeric(word_index[[1]][j])
    
    if (val <= context_wordnum) {                             # 他这个顺序是先正文，后标题，再是否有【
      word = wordindex_context[val, 2]                        # 从索引里查找这个字符
      word_actual[[1]][j] <- as.character(word)               # 把这个字符合并到列表内
      #print(word)
    } else if (val < context_wordnum + title_worldnum) {
      word = wordindex_title[val - context_wordnum, 2]
      word_actual[[1]][j] <- as.character(word)               # 
      #print(word)
    } else {
      
    }
  }
  #print(word_actual)
  word_actual_test <- cbind(word_actual_test, word_actual)
}

# 条形图
mycolors<-brewer.pal(9,"YlGnBu")

ggplot(data = ann_result_train, aes(x = id, y = predict_val)) + 
  geom_bar(stat='identity',position=position_dodge()) +
  labs(x=NULL,y=NULL,fill=NULL)

ggplot(data = ann_result_train, aes(x = id, y = predict_val, fill = predict_val)) + 
  geom_bar(stat='identity',position=position_dodge(), width = 5) +
  labs(x=NULL,y=NULL,fill=NULL)

ggplot(data = ann_result_train, aes(x = id, y = predict_val, fill = real_val)) + 
      geom_bar(stat='identity',position=position_dodge(), width = 5) +
      labs(x=NULL,y=NULL,fill=NULL)+    #可自定义标签名字
      coord_cartesian(ylim = c(0,10000))  #设置下面一半的值域#ggplot(mtcars,aes(x=cyl,y=mpg,fill=vs))+geom_bar(stat="identity",position="dodge")
  
ggplot(data = ann_result_train, aes(x=id)) + 
  geom_point(aes(y=predict_val), color="blue") + 
  geom_line(aes(y=real_val, color="cyan"))

ggplot(data = ann_result_train, aes(x=id)) + 
  geom_point(aes(y=predict_val, color=mycolors[1])) + 
  geom_bar(stat='identity', aes(y=real_val, color=mycolors[2])) +
  labs(x=NULL,y=NULL,fill=NULL) +
  coord_cartesian(ylim = c(0,10000)) +
  theme(legend.position="none")


p = ggplot(ann_result_train, aes(x = id,y = predict_val,fill = real_val))+
  #####这部分的position_dodge(width=0.8)大于宽width = 0.6点，可以使得分组内柱子之间有缝隙，而不是贴合。
  geom_bar(stat ="identity",width = 0.6,position = position_dodge(width=0.8))+        
  labs(x = "",y = "", title = "test")+
  ###########文字的position设置类似bar的position
  #geom_text(aes(label = ann_result_train$id),position=position_dodge(width = 0.9),size = 5,vjust = -0.25)+  
  guides(fill = guide_legend(reverse = F))#+
  #theme(plot.title = element_text(size = 25,face = "bold", vjust = 0.5, hjust = 0.5),
  #      legend.title = element_blank(),
  #      legend.text = element_text(size = 18, face = "bold"),
  #      legend.position = 'right',
  #      legend.key.size=unit(0.8,'cm'))
print(p)

# https://blog.csdn.net/zx403413599/article/details/48581713
# https://blog.csdn.net/bone_ace/article/details/47284805
ggplot(data = ann_result_train, aes(x=id)) + 
  geom_point(aes(y=predict_val, color=mycolors[1])) + 
  geom_bar(stat='identity', aes(y=real_val, color=mycolors[2])) +
  coord_cartesian(ylim = c(0,10000)) +
  guides(color=guide_legend(title="数据类型")) +    ## 如果是NULL, 就是对color产生的图例去掉标题
  scale_colour_discrete(breaks = c(mycolors[1],mycolors[2]), labels = c('预测结果','实际结果'))

ggplot(data = ann_result_train, aes(x=id, y=real_val, fill = real_val))  +
  geom_bar(stat='identity', aes(y=real_val))

# http://f.dataguru.cn/thread-864133-1-3.html
ggplot(data = ann_result_train, aes(x=id, fill = real_val)) + 
  geom_point(aes(y=real_val)) + 
  geom_bar(stat='identity', aes(y=predict_val)) +
  coord_cartesian(ylim = c(0,10000)) + 
  scale_fill_brewer()

ggplot(data = ann_result_train, aes(x=id)) + 
  geom_point(aes(y=predict_val, fill=mycolors[1], color=mycolors[1])) + 
  geom_bar(stat='identity', aes(y=real_val, fill=mycolors[2], color=mycolors[2])) +
  coord_cartesian(ylim = c(0,10000)) +
  guides(color=guide_legend(title="数据类型")) +    ## 如果是NULL, 就是对color产生的图例去掉标题
  scale_colour_discrete(breaks = c(mycolors[2],mycolors[1]), labels = c('预测结果','实际结果')) +
  guides(fill=guide_legend(title="数据类型2")) +
  scale_fill_discrete(breaks = c(mycolors[2],mycolors[1]), labels = c('预测结果2','实际结果2'))

ggplot(data = ann_result_train, aes(x=id)) + 
  geom_point(aes(y=predict_val, fill=mycolors[1], color=mycolors[1])) + 
  geom_bar(stat='identity', aes(y=real_val, fill=mycolors[2], color=mycolors[2])) +
  coord_cartesian(ylim = c(0,10000)) +
  guides(color=FALSE) +    ## 如果是NULL, 就是对color产生的图例去掉标题
  guides(fill=guide_legend(title="数据类型")) +
  scale_fill_discrete(breaks = c(mycolors[2],mycolors[1]), labels = c('预测结果','实际结果'))


## 词云
# https://blog.csdn.net/Eton2016/article/details/78360577
# https://cosx.org/2016/08/wordcloud2
ann_weight_min = min(ann_weight[,2])
ann_weight_norm = ann_weight[,2] + abs(ann_weight_min) + 1
word_cloud = c(wordindex_context[,2], wordindex_title[,2])
word_cloud = data.frame(word=word_cloud, freq=ann_weight_norm[1:4621])

wordcloud2(word_cloud, color = "random-light", backgroundColor = "white")
#letterCloud(word_cloud,word = "R", color = "random-light", backgroundColor = "white")
wordcloud2(word_cloud, color = "random-light",shape = 'star')
wordcloud2(word_cloud, color = "random-light",shape = 'star', fontFamily = "等线")
wordcloud2(word_cloud, color = "random-light",shape = 'pentagon', fontFamily = "等线")
wordcloud2(word_cloud, size = 0.4, shape='cardioid',color = 'random-dark', backgroundColor = "white",fontFamily = "微软雅黑") 

figPath = system.file("examples/t.png",package = "wordcloud2")
wordcloud2(word_cloud, shape = "triangle", size = 0.2,color = "random-light")

