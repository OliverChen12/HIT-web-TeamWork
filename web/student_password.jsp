<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href=>
    <title>学生成绩管理系统</title>

    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <link href="style/main_student.css" type="text/css" rel="stylesheet">

</head>

<body>
<div class="container">
    <div class="header">
        <img alt="" src="image/xiaohui2.png" width="100px" height="100px">
        <form action="destroySession.do">
            <button type="submit">退出系统</button>
        </form>
    </div>
    <div class="nav nav-cls1">
        <ul>
            <li>
                <a class="index" href="student_index.jsp">首页</a>
            </li>
            <li>
                <a href="student_password.jsp" title="没有访问权限">学生管理</a>
            </li>
            <li>
                <a href="student_password.jsp" title="没有访问权限">教师管理</a>
            </li>
            <li>
                <a href="student_subject.jsp">课程管理</a>
            </li>
            <li>
                <a href="student_grade.jsp">成绩管理</a>
            </li>
            <li>
                <a href="student_password.jsp">修改密码</a>
            </li>
        </ul>
    </div>
    <div class="main">
        <div class="nav nav-cls2 left">
            <h3></h3>
            <ul>
                <li><a href="student_password.jsp">修改密码</a></li>
            </ul>
        </div>
        <div class="center">
            <h3>修改密码</h3>
            <form action="student_changePassword.do">
                <div>
                    <label>&nbsp;旧密码：&nbsp;</label>
                    <input type="password" name="old_password" placeholder="输入旧密码">
                </div>
                <div>
                    <label>&nbsp;新密码：&nbsp;</label>
                    <input type="password" name="new_password" placeholder="输入新密码">
                </div>
                <div>
                    <label>确认密码：</label>
                    <input type="password" name="confirm_password" placeholder="再次输入新密码">
                </div>
                <div>
                    <button type="submit" onclick="delete_confirm()">确认修改</button>
                </div>
            </form>
            <p id="status" style="display:none;">${status}</p>
            <script type="text/javascript">
                function delete_confirm() <!--调用方法--> {
                    event.returnValue = confirm("确认更改？");
                }

                var status = document.getElementById('status').innerText;
                if (status == "successful") {
                    alert(status);
                }
                else if (status == "failed") {
                    alert(status);
                }
            </script>
        </div>
    </div>
    <div class="footer"><div class="footer">版权所有&copy;陈鹏至-郭珂宇-曹越-石隆泰&amp;哈尔滨工业大学</div></div>
</div>
</body>
</html>
