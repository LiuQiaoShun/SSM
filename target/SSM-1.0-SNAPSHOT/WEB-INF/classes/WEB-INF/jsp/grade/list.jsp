<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>年级数据信息</title>
    <style type="text/css">
        ul li{
            float: left;
            width: auto;
            margin: 0px 10px;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container w-130">
    <form action="#" method="post" id="form" class="form-inline" style="width: 1300px">
        <input type="hidden" name="pageNum" id="pageNum" value="pageNum">
        <table class="table table-striped table-bordered table-hover ">
            <thead>
            <tr class="table-info">
                <td>年级编号</td>
                <td>年级名称</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${grades}" var="grade">

                <tr>
                    <td>${grade.gradeid}</td>
                    <td>${grade.gradename}</td>
                    <td>
                        <a href="info?gradeid=${grade.gradeid}" class="btn btn-primary">详情</a>
                        <a href="to_edit?gradeid=${grade.gradeid}" class="btn btn-warning">编辑</a>
                        <a href="remove?gradeid=${grade.gradeid}" class="btn btn-danger">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</div>
</body>
</html>