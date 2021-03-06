<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 17.04.2021
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD </h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Lista Użytkowników</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodawanie nowego użytkownika</h6>
            <h1 class="h3 mb-0 text-danger">${message}</h1>
        </div>
        <div class="card-body">

            <form method="post">
                <div class="form-group">
                    <label for="userName">Nazwa</label>
                    <input type="text" name="userName" class="form-control"
                           placeholder="Nazwa użytkownika" id="userName"
                           value="${empty param.userName ? null : param.userName}">
                </div>
                <div class="form-group">
                    <label for="userName">Email</label>
                    <input type="text" name="userEmail" class="form-control"
                           placeholder="Email użytkownika" id="userEmail" value="${empty userEmail ? null: userEmail}">
                </div>
                <div class="form-group">
                    <label for="userName">Hasło</label>
                    <input type="password" name="userPassword" class="form-control"
                           placeholder="Hasło użytkownika" id="userPassword"
                           value="${empty userPassword ? null : userPassword}">
                </div>
                <button type="submit" class="btn btn-success">Zapisz</button>


            </form>
        </div>
    </div>
</div>
<%@include file="useless.jsp" %>

</div>
</div>

</div>
<!-- /.container-fluid -->
<%@include file="footer.jsp" %>


