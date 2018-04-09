<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>学生数据信息</title>
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
            <tr>
                <td colspan="12">
                    <div class="form-group">

                        <label for="studentname">姓名:</label>
                        &nbsp;
                        <input type="text" name="studentname" class="form-control" id="studentname" value="${student.studentname}">
                        &nbsp;&nbsp;

                        <label for="identitycard">身份证:</label>
                        &nbsp;
                        <input type="text" name="identitycard" class="form-control" id="identitycard" value="${student.identitycard}">
                        &nbsp;&nbsp;

                        <button type="button" class="btn btn-primary" onclick="go(1)">查询</button>
                    </div>
                </td>
            </tr>
            <tr class="table-info">
                <td>学号</td>
                <td>密码</td>
                <td>姓名</td>
                <td>性别</td>
                <td>年级</td>
                <td>号码</td>
                <td>地址</td>
                <td>生日</td>
                <td>邮件</td>
                <td>身份证号</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="student">

                <tr>
                    <td>${student.studentno}</td>
                    <td>${student.loginpwd}</td>
                    <td>${student.studentname}</td>
                    <td>${student.sex}</td>
                    <td>${student.gradeid}</td>
                    <td>${student.phone}</td>
                    <td>${student.address}</td>
                    <td>
                        <fmt:formatDate value="${student.borndate}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td>${student.email}</td>
                    <td>${student.identitycard}</td>

                    <td>
                        <a href="info?studentno=${student.studentno}" class="btn btn-primary">详情</a>
                        <a href="to_edit?studentno=${student.studentno}" class="btn btn-warning">编辑</a>
                        <a href="remove?studentno=${student.studentno}" class="btn btn-danger">删除</a>
                        <a href="javascript:void()" onclick="loadGrade(${student.studentno})" class="btn btn-success">读大几</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="javascript:go(1);">首页</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="javascript:go(${pageInfo.prePage});">上一页</a>
            </li>
            <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                <li class="page-item">
                    <a class="page-link" href="javascript:go(${page})">第${page}页</a>
                </li>
            </c:forEach>
            <li class="page-item">
                <a class="page-link" href="javascript:go(${pageInfo.nextPage})">下一页</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="javascript:go(${pageInfo.pages})">末页</a>
            </li>
        </ul>
    </form>
    <script type="text/javascript">
        function go(page) {
            $("#pageNum").val(page);
            $("#form").attr("action","http://localhost:8081/SSM/student/list")
            $("#form").submit()
        }
        function loadGrade(studentno) {
            var opt={
                url: "/SSM/student/findGrade",
                type:"post",
                data:"studentno="+studentno,
                dataType: "json",
                success: function(data)  {
                    var json=eval(data);
                    alert(json.gradename);
//                    json.innerHTML
                }
            };
            $.ajax(opt);
        }
    </script>
</div>
</body>
</html>