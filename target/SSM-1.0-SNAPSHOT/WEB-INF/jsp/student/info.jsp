<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生信息</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container w-70">

    <table class="table table-striped table-bordered table-hover">
        <tbody>

        <tr>
            <td>学号：</td>
            <td>${student.studentno}</td>
        </tr>
        <tr>
            <td>密码:</td>
            <td>${student.loginpwd}</td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>${student.studentname}</td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                ${student.sex}
            </td>
        </tr>
        <tr>
            <td>年级：</td>
            <td>${student.gradeid }</td>
        </tr>
        <tr>
            <td>电话：</td>
            <td>${student.phone }</td>
        </tr>
        <tr>
            <td>地址：</td>
            <td>${student.address }</td>
        </tr>
        <tr>
            <td>生日：</td>
            <td>
                <fmt:formatDate value="${student.borndate }" pattern="yyyy-MM-dd"/>
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td>${student.email}</td>
        </tr>
        <tr>
            <td>身份证：</td>
            <td>${student.identitycard}</td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">
                    返回
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>