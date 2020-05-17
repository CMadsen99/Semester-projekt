<%--
  Created by IntelliJ IDEA.
  User: jacobsimonsen
  Date: 06/05/2020
  Time: 14.20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Ordrehistorik</title>

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
        <th scope="col">Skur længde</th>
        <th scope="col">Skur bredde</th>
        <th scope="col">Tagets hældning</th>
        <th scope="col">Farve vægge</th>
        <th scope="col">Farve stolper</th>
        <th scope="col">Farve tag</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="orderList" items="${sessionScope.orderListCustomer}">

        <tr>
            <th scope="row">${orderList.orderId}</th>
            <td>${orderList.userId}</td>
            <td>${orderList.height}</td>
            <td>${orderList.length}</td>
            <td>${orderList.width}</td>
            <c:choose>
                <c:when test="${orderList.shed==0}">
                    <td>Nej</td>
                </c:when>
                <c:otherwise>
                    <td>Ja</td>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${orderList.shedLength==0}">
                    <td>Nej</td>
                </c:when>
                <c:otherwise>
                    <td>${orderList.shedLength}</td>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${orderList.shedWidth==2}">
                    <td>Hele bredden</td>
                </c:when>
                <c:when test="${orderList.shedWidth==1}">
                    <td>Halvdelen</td>
                </c:when>
                <c:otherwise>
                    <td>Nej</td>
                </c:otherwise>
            </c:choose>
            <td>${orderList.roofAngle}° grader</td>
            <td>${orderList.colorWallName}</td>
            <td>${orderList.colorPillarName}</td>
            <td>${orderList.colorRoofName}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>

<h2 class="text-center mt-4">${requestScope.noOrdersMsg}</h2>

<%@include file="../includes/footer.jsp" %>
