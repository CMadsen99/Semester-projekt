<%@ page import="FunctionLayer.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Semester projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<c:choose>
    <c:when test="${sessionScope.role=='admin'}">
        <%@include file="includes/headeradmin.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="includes/headercostumer.jsp" %>
    </c:otherwise>
</c:choose>
<style>
    body {
        font-family: arial;
    }

    .hide {
        display: none;
    }

    p {
        font-weight: bold;
    }
</style>


<%!

    @Override
    public void jspInit() {
        Heights.initHeights();
        Lengths.initLengths();
        Tilts.initTilts();
        Widths.initWidths();
        Bodymaterials.initBodymaterials();
        Roofmaterials.initRoofmaterials();
        Roofcolors.initRoofcolors();
        Wallcolors.initWallcolors();
        Pillarcolors.initPillarcolors();
    }

%>

<%

    request.setAttribute("heights", Heights.getHeights());
    request.setAttribute("lengths", Lengths.getLengths());
    request.setAttribute("tilts", Tilts.getTilts());
    request.setAttribute("widths", Widths.getWidths());
    request.setAttribute("bodymaterials", Bodymaterials.getBodymaterials());
    request.setAttribute("roofmaterials", Roofmaterials.getRoofmaterials());
    request.setAttribute("roofcolors", Roofcolors.getRoofcolors());
    request.setAttribute("wallcolors", Wallcolors.getWallcolors());
    request.setAttribute("pillarcolors", Pillarcolors.getPillarcolors());

%>
<h1 class="text-center mt-4">Design din egen carport her</h1>



<table style="width:100%">
    <tr>
        <th><h5>Vælg dine mål her</h5></th>
        <th><h5>Præferencer</h5></th>
        <th><h5>Vælg farver</h5></th>
        <th><h5>Oversigt over carport</h5></th>
    </tr>

    <tr>
        <form class="text-left mt-0" name="carportCal" method="POST" action="FrontController">
            <input type="hidden" name="taget" value="carportCal">
            <input type="hidden" name="usersID" value="${sessionScope.usersID}">
            <td>
                <div class="col btn-group mt-4">
                    <select name="height" class="mdb-select md-form">
                        <option value="" disabled selected>Vælg Højde</option>
                        <c:forEach var="height" items="${heights}">
                            <option value="${height.value}" datatype="${height.id}">
                                    ${height.value} cm
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </td>

            <td>
                <h5>Tag</h5>
                <fieldset id="roof">
                <input type="radio" name="roof" value="0" onclick="show3();"/>
                Ja tak til fladt tag
                <br><input type="radio" name="roof" value="1" onclick="show4();"/>
                Ja tak til hældning på taget
                <div class="btn-group mt-4, hide" id="div3">
                    <select name="tilt" class="mdb-select md-form">
                        <option value="" disabled selected>Vælg ønskede hældning</option>
                        <c:forEach var="tilt" items="${tilts}">
                            <option value="${tilt.value}">
                                    ${tilt.value} grader
                            </option>
                        </c:forEach>
                    </select>
                </div>
                </fieldset>

                <script>
                    function show3() {
                        document.getElementById('div3').style.display = 'none';
                    }

                    function show4() {
                        document.getElementById('div3').style.display = 'block';
                    }
                </script>
            </td>

            <td>
                <div class="btn-group mt-4 col">
                    <select name="roofcolor" class="mdb-select md-form">
                        <option value="" disabled selected>Vælg ønskede farve til taget</option>
                        <c:forEach var="roofcolor" items="${roofcolors}">
                            <option value="${roofcolor.id}">
                                    ${roofcolor.name}
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </td>
            <td>
                <div id="carouselExampleIndicators" class="carousel slide col" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="..." alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="..." alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="..." alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </td>

    <tr>
        <td>
            <div class="col btn-group mt-4">
                <select name="width" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Bredde</option>
                    <c:forEach var="width" items="${widths}">
                        <option value="${width.value}">
                                ${width.value} cm
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>
        <td><h5>Skur</h5>
            <fieldset id="shed">
            <input type="radio" name="shed" value="1" onclick="show2();"/>
            Ja tak til skur
            <br> <input type="radio" name="shed" value="0" onclick="show1();"/>
            Nej tak til skur
            </fieldset>
        </td>
        <td>
            <div class="col btn-group mt-4">
                <select name="wallcolor" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg ønskede farve til væggene</option>
                    <c:forEach var="wallcolor" items="${wallcolors}">
                        <option value="${wallcolor.id}">
                                ${wallcolor.name}
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>
    </tr>
    <tr>

        <td>
            <div class="btn-group mt-4">
                <select name="length" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Længde</option>
                    <c:forEach var="length" items="${lengths}">
                        <option value="${length.value}">
                                ${length.value} cm
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>

        <td>
            <fieldset id="shedwidth">
            <div id="div1" class="hide">
                <input type="radio" name="shedwidth" value="2"> Ja tak til skuret skal fylde hele carportens bredde
                <br><input type="radio" name="shedwidth" value="1"> Ja tak til skuret skal fylde halvdelen af
                carportens bredde
                <div class="btn-group mt-4">
                    <select name="shedlength" class="mdb-select md-form">
                        <option value="" disabled selected>Vælg ønskede længde til skuret</option>
                        <c:forEach var="length" items="${lengths}">
                            <option value="${length.value}">
                                    ${length.value} cm
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            </div>
            </fieldset>
        </td>

        <td>
            <div class="col btn-group mt-4">
                <select name="pillarcolor" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg ønskede farve til stolperne</option>
                    <c:forEach var="pillarcolor" items="${pillarcolors}">
                        <option value="${pillarcolor.id}">
                                ${pillarcolor.name}
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>
    </tr>
    <tr>
        <td>Vælg dine materialer her</td>
    </tr>
    <tr>

        <td>
            <div class="btn-group mt-4">
                <select name="bodymaterial" class="mdb-select md-form">
                    <option value="" disabled selected>Beklædning til carporten</option>
                    <c:forEach var="bodymaterial" items="${bodymaterials}">
                        <option value="${bodymaterial.id}">
                                ${bodymaterial.name}
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>
    </tr>
    <tr>

        <td>
            <div class="btn-group mt-4">
                <select name="roofmaterial" class="mdb-select md-form">
                    <option value="" disabled selected>Beklædning til taget</option>
                    <c:forEach var="roofmaterial" items="${roofmaterials}">
                        <option value="${roofmaterial.id}">
                                ${roofmaterial.name}
                        </option>
                    </c:forEach>
                </select>
            </div>
        </td>
    </tr>
</table>

<script>
    function show2() {
        document.getElementById('div1').style.display = 'none';
    }

    function show1() {
        document.getElementById('div1').style.display = 'block';
    }
</script>

<script>
    function show1() {
        document.getElementById('div1').style.display = 'none';
    }

    function show2() {
        document.getElementById('div1').style.display = 'block';
    }
</script>

<div class="text-center mt-0">
<button type="submit" class="btn btn-primary">Send til medarbejder</button>
</form>
</div>
<br>


<c:if test="${requestScope.error!= null}">

    <h2>Error ! </h2>
    ${requestScope.error}

</c:if>


<a href="FrontController?taget=drawing">See drawing</a>




<%@include file="includes/footer.jsp" %>