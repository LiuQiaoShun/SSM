<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>年级详情</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container w-70" style="height: 800px;">

    <form action="do_edit" method="post">

        <div class="form-group">
            <label for="gradeid">年级编号:</label>
            <input type="text"  name="gradeid" class="form-control" id="gradeid" placeholder="请输入年级编号" value="${grade.gradeid }" readonly="readonly">

            <label for="gradename">年级:</label>
            <select class="form-control" id="gradename" name="gradename">
                <c:forEach items="${grade}" var="grades">
                    <!--学生年级编号和年级编号一致--获取年级名字-->
                    <option  selected="selected" value="${grades.gradename}">
                            ${grades.gradename}
                    </option>
                </c:forEach>
            </select>

        <button type="submit" class="btn btn-primary">保存</button>
        <button type="reset" class="btn btn-primary">取消</button>
        <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
    </form>

</div>
</body>
</html>