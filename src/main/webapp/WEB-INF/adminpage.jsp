<%--
  Created by IntelliJ IDEA.
  User: jacobsimonsen
  Date: 06/05/2020
  Time: 14.20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="FunctionLayer.UserList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Semester projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:choose>
    <c:when test="${sessionScope.role=='admin'}">
        <%@include file="../includes/headeradmin.inc" %>
    </c:when>
    <c:otherwise>
        <%@include file="../includes/headercostumer.inc" %>
    </c:otherwise>
</c:choose>

<%!

    @Override
    public void jspInit() {
        UserList.initUserList();
    }

%>

<%

    request.setAttribute("userList", UserList.getUserList());

%>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Bruger ID</th>
        <th scope="col">Navn</th>
        <th scope="col">Email</th>
        <th scope="col">By</th>
        <th scope="col">Postnummer</th>
        <th scope="col">Adresse</th>
        <th scope="col">Ordrehistorik</th>
        <th scope="col">Rediger kunde</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="userList" items="${userList}">

        <tr>
            <th scope="row">${userList.id}</th>
            <td>${userList.name}</td>
            <td>${userList.email}</td>
            <td>${userList.city}</td>
            <td>${userList.zip}</td>
            <td>${userList.address}</td>
            <td>
                <form name="orderView" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="orderView">
                    <input type="hidden" name="idOrder" value="${userList.id}">

                    <input type="submit" value="Ordrehistorik">
                </form>
            </td>
            <td>
                <form name="editPage" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="editPage">
                    <input type="hidden" name="idEdit" value="${userList.id}">

                    <input type="submit" value="Rediger kunde">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@include file="../includes/footer.jsp" %>

