import urllib.request
import pymysql
import time

# pymysql.install_as_MySQLdb()
num = 0

# 打开数据库连接
db = pymysql.Connect(
    host='localhost',
    port=3306,
    user='ghost',               # root
    passwd='1730',
    db='db',
    charset='utf8'
)
# 使用cursor()方法获取操作游标
cursor = db.cursor()

def remove_Un_Context(context, start_id, end_id):
    start_pos = context.find(start_id)
    end_pos = context.find(end_id)
    while end_pos >= 0 and start_pos >= 0:
        start_pos = context.find(start_id)
        end_pos = context.find(end_id)
        if start_pos > end_pos:
            break
        context = context[:start_pos] + context[end_pos + end_id.__len__():]
    return context


for pa in range(1, 60):
    url_1 = "https://news.xmu.edu.cn/"
    title_url = ("https://news.xmu.edu.cn/1552/list{}.htm".format(pa))       # list page的url，这个很好看，第一页就是/list1，第二页就是/list2
    headers = {
        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45",
        "Accept": "text/html,application/xhtml+xml,application/xml; q=0.9,image/webp,*/*;q=0.8"
    }

    # 打开主网站url，获取整个html字符串
    print("opening URL...")
    req = urllib.request.Request(url=title_url, headers=headers)
    response = urllib.request.urlopen(req)
    print("URL requested...")
    html = response.read().decode("utf-8")
    page1 = 1
    j = 1
    for i in range(15):
        page1 = page1 + 10
        page1 = html.find("a href='", page1)                                # 这些去网页源码中搜索一下全部看懂了
        page2 = html.find("' target='_blank'", page1)
        page3 = html.find("target='_blank' title=", page1)
        page4 = html.find("'>", page1)
        page5 = html.find("white-space:nowrap", page1)
        page6 = html.find("</div></td>", page1)
        url_2 = html[page1 + 8:page2]                                       # 正文url的后面一部分
        zw_url = url_1 + url_2                                              # 正文url
        page = html[page3 + 23:page4]                                       # 标题
        data = html[page5 + 20:page6]                                       # 日期，标题和日期都从总的页面中获取
        req_1 = urllib.request.Request(url=zw_url, headers=headers)
        response_1 = urllib.request.urlopen(req_1)
        html_1 = response_1.read().decode("utf-8")
        index1 = 1
        index1 = html_1.find('WP_VisitCount" url="', index1)
        index2 = html_1.find('">', index1)
        index3 = 1
        index3 = html_1.find('<div class=\'Article_Content\'>', index3)
        index4 = html_1.find('</div>', index3)
        if index3 == -1:
            context = ()
        else:
            context = html_1[index3 + '<div class=\'Article_Content\'>'.__len__():index4]

        # 删除所有的描述内容，只留下文字
        # <...">
        context = remove_Un_Context(context, "<", "\">")            # ">"
        # <..."/>
        context = remove_Un_Context(context, "<", "\"/>")
        # <...->
        context = remove_Un_Context(context, "<", "->")
        # <..." />
        context = remove_Un_Context(context, "<", "\" />")
        # <...>
        context = remove_Un_Context(context, "<", ">")
        #& nbsp;
        context = remove_Un_Context(context, "&n", "p;")

        view_1 = html_1[index1 + 20:index2]
        view_url = url_1 + view_1
        req_2 = urllib.request.Request(url=view_url, headers=headers)
        response_2 = urllib.request.urlopen(req_2)
        html_2 = response_2.read().decode("utf-8")
        view = html_2
        if len(context) < 400000:
            page_1 = page
            #if int(data[0:4]) == 2018 | int(data[0:4]) == 2019:
            if 1:
                num = num + 1
                sql = """INSERT INTO xmunews(ID,title,content,timestamp,view,url) VALUES ("%d", "%s","%s","%s","%s","%s")""" % (
                num, page_1, context, data, view, zw_url)   # 序号 # 标题 # 正文内容 # 日期 # 浏览量 # 网址
                # 执行sql语句,""
                print(sql)
                cursor.execute(sql)
                # 提交到数据库执行
                db.commit()
        else:
            print("Context too Long, next...")
        # 暂停10s
        #time.sleep(2)

        j = j + 1
        if j == 150:
            j = j
# 关闭数据库连接
db.close()

# print(view)


