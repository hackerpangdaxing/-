<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>C9登录界面</title>
<meta charset="UTF-8" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="js/login.js" type="text/javascript"></script>
<script src="js/image.js" type="text/javascript"></script>
</head>
<body id="main" onload="showBgImage();init();">
    <form action="/CloudClass/servlet/LoginServlet" method="post">
        <div class="login_m">
            <div class="login_logo">
                <h1 style="font-family: '宋体'; font-size: 36px;">C9决策分析门户登录</h1>
            </div>

            <div class="login_boder">
                <div class="login_padding">
                    <div class="form-group">
                        <label for="userName"></label> 
                        <input type="text" class="form-control " id="txtUserName" name="username" placeholder="用户名">
                    </div>

                    <div class="form-group">
                        <label for="passWord"></label> 
                        <input type="password" class="form-control" id="txtPassWord" name="password" placeholder="密码">
                    </div>

                    <div class="rem_sub">
                        <div class="rem_sub_l">
                            <input type="checkbox" name="checkbox" id="chkRemember"> <label for="chkRemember">下次自动登录</label>
                        </div>

                        <div class="join">
                            <input type="submit" id="btnSubmit" name="submit" class="btn btn_block btn_success" value="登录" />
                        </div>
                    </div>
                    
                    <div class="forgot">
                        <a href="jsp/forget.jsp">忘记密码?</a> <span class="split"></span> <a href="jsp/register.jsp">免费注册</a>
                    </div>
                </div>

                <footer class="footer"> <i><a href="http://www.cnbisoft.com">经邦信息技术有限公司</a></i> <br>
                <span>经邦软件&nbsp;2010&nbsp;©2008-2016&nbsp;皖ICP备15018743号</span>
                <div class="time" id="txt"></div>
                </footer>
            </div>
        </div>
    </form>

    <div class="msg">
        <span style="color: red; margin-top: 10px;"> 
<%
    String msg = (String) request.getAttribute("msg");
    if (msg == null) {
        out.println();
    } else {
        out.println(msg);
    }
 %>
        </span>
    </div>
</body>
</html>