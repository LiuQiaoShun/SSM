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
            <td>年级编号：</td>
            <td>${grade.gradeid}</td>
        </tr>
        <tr>
            <td>年级名称:</td>
            <td>${grade.gradename}</td>
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