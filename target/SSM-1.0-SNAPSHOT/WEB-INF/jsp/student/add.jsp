<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <form action="http://localhost:8081/SSM/student/do_saveStudent" method="post">
            <div class="form-group">
                <label for="studentno">studentno:</label>
                <input type="text"  name="studentno" class="form-control" id="studentno"  placeholder="1002" pattern="[0-9]{4,4}" required="required" oninvalid="setCustomValidity('请输入四位学号')" oninput="setCustomValidity('')" onchange="verify_sole('/SSM/student/queryStudentno','studentno','studentno_mess')">
                <label id="studentno_mess"></label>
                <br/>

                <label for="loginPwd">LoginPwd:</label>
                <input type="text" name="loginpwd" class="form-control" id="loginPwd"  placeholder="123456" pattern="\w{6,}" required="required" oninvalid="setCustomValidity('密码最少6位字符')" oninput="setCustomValidity('')">

                <label for="studentName">StudentName:</label>
                <input type="text" name="studentname" class="form-control" id="studentName" placeholder="arvin" required="required" oninvalid="setCustomValidity('姓名必填')" oninput="setCustomValidity('')">

                <%--<label for="gradeId">GradeId:</label>--%>
                <%--<input type="number" name="gradeid" class="form-control" id="gradeId" placeholder="1" required="required" oninvalid="setCustomValidity('班级编号必填')" oninput="setCustomValidity('')">--%>

                <label for="gradeid">gradeid:</label>
                <select class="form-control" id="gradeid" name="gradeid">
                    <c:forEach items="${grade}" var="obj">
                        <option value="${obj.gradeid}">${obj.gradename}</option>
                    </c:forEach>
                </select>

                <label for="phone">Phone:</label>
                <input type="tel" name="phone" class="form-control" id="phone" placeholder="请输入手机号" required="required" oninvalid="setCustomValidity('手机号格式不正确')" oninput="setCustomValidity('')">

                <label for="address">Address:</label>
                <input type="text" name="address" class="form-control" id="address" placeholder="请输入居住地址" >

                <label for="borndate">Borndate:</label>
                <input type="date" name="borndate" class="form-control" id="borndate" required="required" placeholder="请选择出身日期" >

                <label for="email">Email:</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="请输入电子邮箱" >

                <label for="identitycard">IdentityCard:</label>
                <input type="text" name="identitycard" class="form-control" required="required" id="identitycard" placeholder="请输入身份证号18位数" pattern="\w{18,18}" oninvalid="setCustomValidity('身份证格式不正确')" oninput="setCustomValidity('')" onchange="verify_sole('/SSM/student/queryIdentityCard','identitycard','identitycard_mess')">
                <label id="identitycard_mess"></label>
                <br/>
            </div>

            <div class="form-group">
                <div class="radio">
                    <label >Sex:</label>
                    <label class="radio-inline"><input type="radio" name="sex" checked="checked" value="男">Man</label>
                    <label class="radio-inline"><input type="radio" name="sex" value="女">Woman</label>
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="保存"/>
            <button type="reset" class="btn btn-primary">取消</button>
            <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
        </form>
    </div>
    <script type="text/javascript">
        function verify_sole(uri,input_id,label_id) {

            $.ajax({
                url: uri,
                data: getInput(input_id),
                type: 'POST',
                dataType : "json",
                success : function(json) {
                    if(json == "true"){
                        alert("123");
                        $("#"+label_id).text("验证失败").css("color","red");
                    }else {
                        $("#"+label_id).text("验证通过").css("color","green");
                    }
                }
            });
        }
        function getInput(id) {
            if(id=="studentno"){
                return {"studentno":$("#"+id).val()};
            }
            if(id=="identitycard"){
                return {"identitycard":$("#"+id).val()};
            }
        }
    </script>
</body>
</html>