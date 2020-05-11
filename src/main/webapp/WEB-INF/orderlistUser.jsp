<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 07-05-2020
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Semester projekt</title>

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
        <th scope="col">Ordre ID</th>
        <th scope="col">Bruger ID</th>
        <th scope="col">Højde</th>
        <th scope="col">Længde</th>
        <th scope="col">Bredde</th>
        <th scope="col">Skur</th>
        <th scope="col">Stykliste</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="orderList" items="${sessionScope.orderList}">

        <tr>
            <th scope="row">${orderList.orderId}</th>
            <td>${orderList.userId}</td>
            <td>${orderList.height} cm</td>
            <td>${orderList.length} cm</td>
            <td>${orderList.width} cm</td>
            <td>${orderList.shed}</td>
            <td>
                <form name="collectListViewUser" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="collectListViewUser">
                    <input type="hidden" name="idOrder" value="${orderList.orderId}">

                    <input type="submit" value="Stykliste">
                </form>
            </td>

        </tr>
    </c:forEach>
    </tbody>
</table>


<%@include file="../includes/footer.jsp" %>

