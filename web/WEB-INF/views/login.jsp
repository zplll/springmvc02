<%--
  Created by IntelliJ IDEA.
  User: zipon
  Date: 2016/9/23
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="//cdn.bootcss.com/jquery/3.1.0/jquery.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular.js"></script>
<link href="//cdn.bootcss.com/bootstrap/4.0.0-alpha.3/css/bootstrap.css" rel="stylesheet">
<script src="//cdn.bootcss.com/bootstrap/4.0.0-alpha.3/js/bootstrap.js"></script>
<script src="resources/js/app.js"></script>

<head>
    <title>login</title>
</head>
<body ng-app="myapp">
<div style="width: 700px;600px: auto;margin-left:40%;background-image: url(../resources/a.jpg)">
    <div style="width: 300px;height: auto;margin-top: 200px;margin-left: 50%; ">
    <form action="/login" class="form-group">
        
        <label for="username">用户名：</label>
        <input type="text" id="username" name="username" ng-model="username" class="form-control"   />

        <label for="password">密码：</label>
        <input type="password" id="password" name="password" ng-model="password" class="form-control" />
        <input type="submit" value="登陆" ng-disabled="!username||!password"/>
        <input type="button" value="注册" id="zhuce"/>
        
    </form>
    </div>
</div>
</body>
<script>
    var zhuce=document.getElementById("zhuce");
    zhuce.onclick=function () {
        window.location="/";
    }
</script>
<script>
    var app=angular.module('myapp',[]);
    app.controller('control01',function ($scope) {

    })
</script>
</html>
