<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"href="../css/bilibili_personal.css"media="screen">
</head>
<body>
    <div id="top_left">
        <ul>
            <li><a href="bilibili_mainss.html">主站</a></li>
            <li><a href="">直播</a></li>
            <li><a href="">小视频</a></li>
            <li><a href="bilibili_Is thin.html">相薄</a></li>
        </ul>
    </div>
    <div id="top_right">
        <ul>
            <li><a href="">签到</a></li>
            <li><a href="">下载 </a></li>
            <li><a href="">link 动态</a></li>
            <li><a href="bilibili_main.html">退出登陆</a></li>
        </ul>
    </div>
    <div id="body">
        <img src="../images/bilibili_personal_1.png">
    </div>
    <div id="tupian">
        <img src="../images/bilibili_personal_2.png">
    </div>
    
    
    <div id="name">
        <p><%=session.getAttribute("name_logon") %></p>
    </div>
    
    <div id="wenzi">
        <table>
            <tr>
                <td width="73px">关注:0</td>
                <td width="73px">粉丝:0</td>
            </tr>
        </table>
    </div>
    <div id="wenzi2">
        <table >
            <tr>
                <td width="35px">LV0</td>
            </tr>
        </table>
    </div>
    <div id="menu1">      
            <div id="menu1_1"><a href="">link世界</a></div>
            <div id="menu1_2"><a href="">我的收藏</a></div>
            <div id="menu1_3"><a href="">设置</a></div>
            <div id="menu1_4"><a href="">更多</a></div>      
    </div>
    <div id="bootom1">
    </div>
    <div id="collection">
            <div id="collection_1">
                <p>我的收藏夹</p>
            </div>
            <div id="collection_2">
                <img src="../images/bilibili_personal_3.png"onmouseover="this.src='../images/bilibili_personal_3_copy.png'"onmouseout="this.src='../images/bilibili_personal_3.png'">
            </div>
            <div id="collection_3">
                <img src="../images/bilibili_personal_4.png"onmouseover="this.src='../images/bilibili_personal_4_copy.png'"onmouseout="this.src='../images/bilibili_personal_4.png'">
            </div>
    </div>
</body>
</html>