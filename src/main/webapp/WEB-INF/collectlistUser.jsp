<%@ page import="FunctionLayer.Accessories" %><%--
  Created by IntelliJ IDEA.
  User: jacobsimonsen
  Date: 26/04/2020
  Time: 13.56
  To change this template use File | Settings | File Templates.


  medarbejderen går ind på en kundeliste, hvor han så kan vælge en bestemt kunde via en knap hvor han så kan se hele styllisten
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

<%!

    @Override
    public void jspInit() {
        Accessories.initAccessories();
    }

%>

<%

    request.setAttribute("accessories", Accessories.getAccessories());

%>

<h4 class="mt-4"><b>Materialer til carport</b></h4>
<table class="table mt-2">
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
    <c:forEach var="collectList" items="${sessionScope.collectList}">

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

<h4 class="mt-4"><b>Beslag & skruer</b></h4>
<table class="table mt-2">
    <thead>
    <tr>
        <th scope="col">Materialenavn</th>
        <th scope="col">Dimentioner</th>
        <th scope="col">Antal</th>
        <th scope="col">Enhed</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="accessories" items="${requestScope.accessories}">

        <tr>
            <th scope="row">${accessories.name}</th>
            <td>${accessories.dimensions}</td>
            <td>${accessories.quantity}</td>
            <td>${accessories.unit}</td>


        </tr>
    </c:forEach>
    </tbody>
</table>


<%@include file="../includes/footer.jsp" %>

