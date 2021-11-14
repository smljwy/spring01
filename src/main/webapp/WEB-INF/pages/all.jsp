<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/9/17
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    // http://localhost:8088/travelms_war_exploded/ <===>webapp
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
    request.setAttribute("path", path);
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <title>Title</title>
    <style>
        input {
            border: none;
            outline: none;
        }
        table {
            text-align: center;
        }
    </style>
</head>
<body>
<script>
    var Emp = function (empno,ename,job,mgr,hiredate,sal,comm,deptno) {
        this.empno = empno;
        this.job = job;
        this.mgr = mgr;
        this.hiredate = hiredate;
        this.sal = sal;
        this.comm = comm;
        this.deptno = deptno;
    }
    
    function submit() {
        /*alert("asd");
        var  empno = $(".d1").children("input").val();
        alert("empno");
        var  ename = $("tr>td:eq(1)>input").val();
        var  job = $("tr>td:eq(2)>input").val();
        var  mgr = $("tr>td:eq(3)>input").val();
        var  hiredate = $("tr>td:eq(4)>input").val();
        var  sal = $("tr>td:eq(5)>input").val();
        var  comm = $("tr>td:eq(6)>input").val();
        var  deptno = $("tr>td:eq(7)>input").val();
        var emp = new Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno);*/
    }
</script>
    <form method="post" action="" name="form">
        <table border="1" cellspacing="0">
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>职业</td>
                <td>经理</td>
                <td>入职时间</td>
                <td>工资</td>
                <td>comm</td>
                <td>部门编号</td>
                <td>操作</td>
            </tr>
            <tr>
                <td class="d1"><input type="text" value="${emp.empno}" readonly></td>
                <td><input type="text" name="empno" value="${emp.ename}"></td>
                <td><input type="text" value="${emp.job}"></td>
                <td><input type="text" value="${emp.mgr}"></td>
                <td><input type="text" value="${emp.hiredate}"></td>
                <td><input type="text" value="${emp.sal}"></td>
                <td><input type="text" value="${emp.comm}"></td>
                <td><input type="text" value="${emp.deptno}"></td>
                <td><a href="javascript:void(0)" onclick="submit()">修改</a>&nbsp;&nbsp;&nbsp;<a href="index.html">返回</a></td>
            </tr>
        </table>
    </form>
</body>
</html>


