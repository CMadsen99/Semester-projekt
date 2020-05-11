<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 07-05-2020
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Stykliste</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:choose>
    <c:when test="${sessionScope.role=='admin'}">
        <%@include file="../includes/headeradmin.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="../includes/headercostumer.jsp" %>
    </c:otherwise>
</c:choose>


<table class="table">
    <thead>
    <tr>
        <th scope="col">Materialenavn</th>
        <th scope="col">Højde</th>
        <th scope="col">Længde</th>
        <th scope="col">Bredde</th>
        <th scope="col">Antal</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="collectList" items="${sessionScope.collectListUser}">

        <tr>
            <th scope="row">${collectList.name}</th>
            <td>${collectList.height}</td>
            <td>${collectList.length}</td>
            <td>${collectList.width}</td>
            <td>${collectList.quantity}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>


<%@include file="../includes/footer.jsp" %>
