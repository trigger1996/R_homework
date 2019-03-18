# 这个工程怎么玩
	如果给一个裸的R语言环境，怎么开始
## 几个关键的包
	RMySQL
	ggplot2
	RColorBrewer

	options(CRAN="https://​cloud.r-project.org/");
	install.packages("ggplot2")

	install.packages("RColorBrewer")
	library(RColorBrewer)
	
	
	
## 几个和语法有关的
	等号(赋值号)		= 或者 <-	由于R语言在写的时候比较奇葩，所以<-比=好用
						<<- 		全局变量

## 几个关于R和Rstudio的操作
	RStudio的Run是必须鼠标选中代码才能执行的
	如果是执行，则必须source
	source("Rsql_load.R")
	a = load_DatafromSQL()
	
	R的解释机制很有意思，如果中间的代码爆炸了，他是会继续执行下去的
	
### paste和paste0连接字符串
	paste0("233", as.character(1))
	paste("233", as.character(1))
	
### 求数据框的长度
	假设数据框名字叫df
	那么dim(df)[1]返回它的行数。dim求的是参数的维度 	
	
### 合并可以用c这个函数
    word_actual <- list()
	        word = wordindex_context[val - context_wordnum, 2]
        word_actual <- c(word_actual, word)

### 关于ggplot2
	http://ask.pinggu.org/q-41481.html、
	
### wordcloud2词云
	https://www.cnblogs.com/nxld/p/6344233.html?utm_source=itdadao&utm_medium=referral
	http://tieba.baidu.com/p/5522266099
	
## 参考
	RColorBrewer:		http://blog.sina.com.cn/s/blog_681aaa5501016tk4.html
						https://www.cnblogs.com/shaocf/p/9600340.html
	
	RMySQL				https://www.cnblogs.com/awishfullyway/p/6668270.html
	
	R语言自建函数		https://blog.csdn.net/sinat_41805381/article/details/79912084
	
	RMySQL解决中文乱码	https://blog.csdn.net/yajun0601/article/details/68487732
	