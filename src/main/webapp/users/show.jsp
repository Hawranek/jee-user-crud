<%--
  Created by IntelliJ IDEA.
  User: damian
  Date: 17.04.2021
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Dodaj nowego użytkownika</a>
  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table">

          <tr>
            <td>ID:</td>
              <td>${user.id}</td>
          </tr>
          <tr>
            <td>Nazwa użytkownika:</td>
              <td>${user.userName}</td>
          </tr>
          <tr>
            <td>Email Użytkownika:</td>
              <td>${user.email}</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>
<%@include file="useless.jsp" %>

</div>
</div>

</div>
<!-- /.container-fluid -->
<%@include file="footer.jsp" %>
