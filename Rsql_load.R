
load_MySQL_TableAll<-function(table_name) {
  all_packages = .packages(all.available=T)
  # 安装DBI
  if (which(all_packages == 'DBI') == 0) {   # 这个是因为R的数组开头是1, 而不是0, 和MATLAB一样
    install.packages("DBI")
  }
  # 安装RMySQL
  if (which(all_packages == 'RMySQL') == 0) {
    install.packages("RMySQL")
  }
  library("DBI")
  library("RMySQL")
  
  conn <- dbConnect(MySQL(), dbname = "db", username="ghost", password="1730", host="localhost", port=3306)
  dbSendQuery(conn,'SET NAMES gbk')      # 解决中文乱码问题，关键
  
  
  table_content <- dbReadTable(conn, table_name)
  
  dbDisconnect(conn)
  return (table_content)
}
