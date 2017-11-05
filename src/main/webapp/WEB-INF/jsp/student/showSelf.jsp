<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<html>
<head>
    <title>个人中心</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>

</head>

<body>
<!-- 顶栏 -->
<jsp:include page="top.jsp"></jsp:include>
<!-- 中间主体 -->
<div class="container" id="content">
    <div class="row">
        <jsp:include page="menu.jsp"></jsp:include>
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h1 style="text-align: center;">个人信息</h1>
                    </div>
                </div>

                <div class="panel-body">
                    <input type="hidden" name="id" value="${student.id}"/>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="text" class="form-control" name="name" value="${student.name}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="text" class="form-control" name="sex" value="${student.sex}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">账户余额</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="text" class="form-control" name="balance" value="${student.balance}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="date" class="form-control" name="birthday" value="<fmt:formatDate value="${student.birthday}" dateStyle="medium" pattern="yyyy-MM-dd" />"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">注册日期</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="date" class="form-control" name="registerTime" value="<fmt:formatDate value="${student.registerTime}" dateStyle="medium" pattern="yyyy-MM-dd" />"/>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<div class="container" id="footer">
    <div class="row">
        <div class="col-md-12"></div>
    </div>
</div>

</body>

</html>