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
        <form action="do_save" method="post">
            <div class="form-group">
                <label for="gradeid">年级编号:</label>
                <input type="text"  name="gradeid" class="form-control" id="gradeid"  placeholder="1002" pattern="[0-9]{4,4}" required="required" oninvalid="setCustomValidity('请输入四位年级编号')" oninput="setCustomValidity('')" onchange="AjaxGrade()">
                <label id="gradeid_mess"></label>
                <br/>

                <label for="gradename">年级:</label>
                <select class="form-control" id="gradename" name="gradename">
                    <c:forEach items="${grade}" var="obj">
                        <option value="${obj.gradename}">${obj.gradename}</option>
                    </c:forEach>
                </select>
            </div>
            <input type="submit" class="btn btn-primary" value="保存"/>
            <button type="reset" class="btn btn-primary">取消</button>
            <button type="button" class="btn btn-success" onclick="javascript:history.go(-1)">返回</button>
        </form>
    </div>
    <script type="text/javascript">
        function AjaxGrade() {
            var graid=$("#gradeid").val();
            $.ajax({
                url: "http://localhost:8081/SSM/grade/AjaxGradeId",
                data: {"gradeid":graid},
                type: 'POST',
                dataType : "json",
                success : function(json) {
                    if(json.mess == "true"){
                        $("#gradeid_mess").text("编号重复,验证失败").css("color","red");
                    }else {
                        $("#gradeid_mess").text("验证通过").css("color","green");
                    }
                }
            });
        }

    </script>
</body>
</html>