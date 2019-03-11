import urllib.request
import pymysql
#pymysql.install_as_MySQLdb()
#import time
num = 0

# 打开数据库连接
db = pymysql.Connect(
    host='localhost',
    port=3306,
    user='root',
    passwd='caokai',
    db='db',
    charset='utf8'
) 
# 使用cursor()方法获取操作游标 
cursor = db.cursor()

for pa in range(1,60):
    url_1 = "http://news.xmu.edu.cn"
    title_url = ("http://news.xmu.edu.cn/1552/list{}.htm".format(pa))
    headers = {"User-Agent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.22 Safari/537.36 SE 2.X MetaSr 1.0"}
    
    # 打开主网站url，获取整个html字符串
    req = urllib.request.Request(url=title_url,headers=headers)
    response = urllib.request.urlopen(req)
    html = response.read().decode("utf-8")
    page1 = 1
    for i in range(15): 
        page1 = page1+10
        page1 = html.find("a href='",page1)
        page2 = html.find("' target='_blank'",page1)
        page3 = html.find("target='_blank' title=",page1)
        page4 = html.find("'>",page1)
        page5 = html.find("white-space:nowrap",page1)
        page6 = html.find("</div></td>",page1)
        url_2 = html[page1+8:page2]
        zw_url = url_1 + url_2
        page = html[page3+23:page4]
        data = html[page5+20:page6]    
        req_1 = urllib.request.Request(url=zw_url,headers=headers)
        response_1 = urllib.request.urlopen(req_1)
        html_1 = response_1.read().decode("utf-8")
        index1 = 1
        index1 = html_1.find('WP_VisitCount" url="',index1)
        index2 = html_1.find('">',index1)
        index3 = 1
        index3 = html_1.find('meta name="description" content="',index3)
        index4 = html_1.find('" />',index3)
        if index3 == -1:
            context = ()
        else:
            context = html_1[index3+33:index4]
        view_1 = html_1[index1+20:index2]
        view_url = url_1 + view_1
        req_2 = urllib.request.Request(url=view_url,headers=headers)
        response_2 = urllib.request.urlopen(req_2)
        html_2 = response_2.read().decode("utf-8")
        view = html_2
        if len(context)<200000:
            page_1 = page
            if int(data[0:4])==2018:
                num = num+1
                sql = """INSERT INTO xmunews(ID,title,content,timestamp,view,url) VALUES ("%d", "%s","%s","%s","%s","%s")"""%(num,page_1,context,data,view,zw_url)
                # 执行sql语句,""
                print(sql)
                cursor.execute(sql)
                # 提交到数据库执行
                db.commit()
         #暂停10s
         #time.sleep(10)          
 # 关闭数据库连接
db.close()           



        #print(view)
    
    
    
    
    
    