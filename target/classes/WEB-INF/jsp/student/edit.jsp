<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container w-70" style="height: 800px;">

    <form action="do_edit" method="post">

        <div class="form-group">
            <label for="studentno">StudentNo:</label>
            <input type="password"  name="studentno" class="form-control" id="studentno" placeholder="请输入学号" value="${obj.studentno }" readonly="readonly">

            <label for="loginPwd">LoginPwd:</label>
            <input type="text" name="loginpwd" class="form-control" id="loginPwd"  placeholder="请输入密码最少6位字符:123456" pattern="\w{6,18}" value="${obj.loginpwd }">

            <label for="studentName">StudentName:</label>
            <input type="text" name="studentname" class="form-control" id="studentName" placeholder="请输入学员姓名" value="${obj.studentname }" >


            <label for="gradeid">grade:</label>
            <select class="form-control" id="gradeid" name="gradeid">
                <c:forEach items="${grades}" var="grades">
                <!--学生年级编号和年级编号一致--获取年级名字-->
                    <option  <c:if test="${obj.gradeid==grades.gradeid}">selected="selected"</c:if>
                             value="${grades.gradeid}">${grades.gradename}
                    </option>
                </c:forEach>
            </select>


            <label for="phone">Phone:</label>
            <input type="tel" name="phone" class="form-control" id="phone" placeholder="请输入手机号" value="${obj.phone }" >

            <label for="address">Address:</label>
            <input type="text" name="address" class="form-control" id="address" placeholder="请输入居住地址" value="${obj.address }">

            <label for="bornDate">BornDate:</label>
            <input type="date" name="borndate" class="form-control" required="required" id="bornDate" value='<fmt:formatDate value="${obj.borndate }" pattern="yyyy-MM-dd"/>'>


            <label for="email">Email:</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="请输入电子邮箱" required="required" value="${obj.email }">

            <label for="identityCard">IdentityCard:</label>
            <input type="text" name="identitycard" class="form-control" id="identityCard" placeholder="请输入身份证号" pattern="\w{18,18}" value="${obj.identitycard }" oninvalid="setCustomValidity('身份证格式不正确')" oninput="setCustomValidity('')">
        </div>
        <div class="form-group">
            <div class="radio">
                <label >Sex:</label>
                <label class="radio-inline"><input type="radio" <c:if test="${obj.sex=='男' }">checked="checked"</c:if> name="sex" value="男">Man</label>
                <label class="radio-inline"><input type="radio" <c:if test="${obj.sex=='女' }">checked="checked"</c:if>name="sex" value="女">Woman</label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">保存</button>
        <button type="reset" class="btn btn-primary">取消</button>
        <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
    </form>

</div>
</body>
</html>