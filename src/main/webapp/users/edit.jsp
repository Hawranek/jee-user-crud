<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 17.04.2021
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@include file="header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Lista Użytkowników</a>
  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edytowanie istniejącego użytkownika</h6>
      <h1 class="h3 mb-0 text-danger">${message}</h1>

    </div>
    <div class="card-body">
      <form method="post">
        <div class="form-group">
          <label for="userName">Nazwa</label>
          <input type="text" name="userName" class="form-control"
                 placeholder="${user.userName}" id="userName" value="${user.userName}">
        </div>
        <div class="form-group">
          <label for="userName">Email</label>
          <input type="text" name="userEmail" class="form-control"
                 placeholder="${user.email}" id="userEmail" value="${user.email}">
        </div>
        <div class="form-group">
          <label for="userName">Hasło</label>
          <input type="text" name="userPassword" class="form-control"
                 placeholder="Nowe hasło użytkownika" id="userPassword">
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


