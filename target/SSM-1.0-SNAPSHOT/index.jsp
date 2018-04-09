<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>所有信息</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12">

            <nav class="navbar navbar-expand-sm">
                <ul class="nav">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="javascript:void();" id="navbardrop" data-toggle="dropdown">
                            学员模块
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="student/list" target="myifram">学员列表</a>
                            <a class="dropdown-item" href="grade/toStudentAdd" target="myifram">添加学员</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="javascript:void();" id="navbardrop" data-toggle="dropdown">
                            年级模块
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="grade/queryGrade" target="myifram">年级列表</a>
                            <a class="dropdown-item" href="grade/getGrades" target="myifram">添加年级</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="javascript:void();" id="navbardrop" data-toggle="dropdown">
                            课程模块
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="javascript:alert('《课程列表》模块正在开发');" target="myifram">课程列表</a>
                            <a class="dropdown-item" href="javascript:alert('《添加课程》模块正在开发');" target="myifram">添加课程</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="javascript:void();" id="navbardrop" data-toggle="dropdown">
                            成绩模块
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="javascript:alert('《成绩列表》模块正在开发');" target="myifram">成绩列表</a>
                            <a class="dropdown-item" href="javascript:alert('《添加成绩》模块正在开发');" target="myifram">添加成绩</a>
                        </div>
                    </li>

                </ul>
            </nav>
        </div>
        <div class="h-100 col-xl-10 col-lg-10 col-md-12 col-sm-12">
            <iframe src="student/list" name="myifram" scrolling="0" frameborder="0" class="h-100 w-100" ></iframe>
        </div>
    </div>
</div>
</body>
</html>