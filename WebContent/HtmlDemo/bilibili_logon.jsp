<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%	String Path=request.getScheme()+":"+"//"+request.getServerName()+":"+request.getServerPort()+"/"+request.getServletContext().getContextPath()+"/"; %>
<%String flag=request.getParameter("flag"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet"href="../css/bilibili_reg.css"media="screen">
  <script type="text/javascript">
	var flag='<%=flag%>';
	if("1"==flag)
		{
		alert("请先登录!");
		}
</script>
</head>
<body>
	<form action="<%=Path%>logon"method="post"enctype="multipart/form-data">
    <div id="top_left">
        <ul>
            <li><a href="../HtmlDemo/bilibili_main.html">主战</a></li>
            <li><a href="../HtmlDemo/bilibili_Is thin.html">画友</a></li>
            <li><a href="">游戏中心</a></li>
            <li><a href="">直播</a></li>
            <li><a href="">会员购</a></li>
            <li><a href="">周边</a></li>
            <li><a href="">移动端</a></li>    
        </ul>
    </div>
    <div id="top_right">
        <img src="../images/bilibili2.jpg"height="30px"width="26px">
        <a href="">历史</a>
    </div>
    <div id="top_bootom">
        <img src="../images/bilibili_reg1.png">
    </div>
    <div id="center">
            <p>登录</p>
    </div>
    <div id="center_1">
            <input type="text" name="uname" placeholder="昵称（例：哔哩哔哩）" class="user_id_password mar_b_40px" data-form-un="1512129074598.7778">
    </div>
    <div id="center_2">
            <input type="password" name="userpwd" placeholder="密码（6-16个字符组成，区分大小写）" class="user_id_password" data-form-pw="1512129074598.7778">
    </div>
    
    <div id="center_4">
            <input type="submit" value="登录" class="next_step center_div mar_t_120 ys-a" data-form-sbm="1512129074598.7778" style="pointer-events: auto;">
    </div>
    
    
  
    </form>
</body>
</html>