<%@ page import="FunctionLayer.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Semester projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    request.setAttribute("wallcolors",Wallcolors.getWallcolors());
    request.setAttribute("pillarcolors",Pillarcolors.getPillarcolors());

%>

<h1 class="text-center mt-4">Design din egen carport her</h1>


<form class="mt-4" name="" method="POST" action="FrontController">
    <input type="hidden" name="taget" value="">

    <table class="text-center mt-4" style="width:100%">
        <th>
        <th>
            <div class="btn-group mt-4">
                <select name="height" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Højde</option>
                    <c:forEach var="height" items="${heights}">
                        <option value="${height.value}" datatype="${height.id}">
                            ${height.value} cm
                        </option>
                    </c:forEach>
                </select>
            </div>
        </th>
        <th>
            <div class="btn-group mt-4">
                <select name="width" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Bredde</option>
                    <c:forEach var="width" items="${widths}">
                        <option value="${width.value}">
                            ${width.value} cm
                        </option>
                    </c:forEach>
                </select>
            </div>
        </th>
        <th>
            <div class="btn-group mt-4">
                <select name="length" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Dybde</option>
                    <c:forEach var="length" items="${lengths}">
                        <option value="${length.value}" >
                            ${length.value} cm
                        </option>
                    </c:forEach>
                </select>
            </div>
        </th>
        <th>
            <div class="mt-4"></div>
        </th>
        </th>
    </table>


    </div><!-- /btn-group -->
</form>

<form>
<input type="radio" name="tab" value="igotnone" onclick="show2();" />
Ja tak til skur
<input type="radio" name="tab" value="igottwo" onclick="show1();" />
Nej tak til skur
<div id="div1" class="hide">
    <input type="radio" name="gender" value="male"> Ja tak til skuret skal fylde hele carportens bredde
    <input type="radio" name="gender" value="female"> Ja tak til skuret skal fylde halvdelen af carportens bredde
    <div class="btn-group mt-4">
        <select name="length" class="mdb-select md-form">
            <option value="" disabled selected>Vælg Ønkede længde til skuret</option>
            <c:forEach var="length" items="${lengths}">
                <option value="${length.value}" >
                        ${length.value} cm
                </option>
            </c:forEach>
        </select>
    </div>
</div>

<script>
    function show2(){
        document.getElementById('div1').style.display ='none';
    }
    function show1(){
        document.getElementById('div1').style.display = 'block';
    }
</script>

    <div class="btn-group mt-4">
    <select name="bodymaterial" class="mdb-select md-form">
        <option value="" disabled selected>Vælg ønskede byggemateriale til beklædning</option>
        <c:forEach var="bodymaterial" items="${bodymaterials}">
            <option value="${bodymaterial.value}" >
                    ${bodymaterial.tiltVal}
            </option>
        </c:forEach>
    </select>
</div>
<div class="btn-group mt-4">
    <select name="roofmaterial" class="mdb-select md-form">
        <option value="" disabled selected>Vælg byggemateriale til taget</option>
        <c:forEach var="roofmaterial" items="${roofmaterials}">
            <option value="${roofmaterial.value}" >
                    ${roofmaterial.tiltVal}
            </option>
        </c:forEach>
    </select>
</div>
    <script>
        function show1(){
            document.getElementById('div1').style.display ='none';
        }
        function show2(){
            document.getElementById('div1').style.display = 'block';
        }
    </script>
</form>

<form>
    <input type="radio" name="tab" value="igotnone" onclick="show3();" />
    Ja tak til fladt tag
    <input type="radio" name="tab" value="igottwo" onclick="show4();" />
    Ja tak til hældning på taget
    <div class="btn-group mt-4, hide" id="div3">
        <select name="tilt" class="mdb-select md-form">
            <option value="" disabled selected>Vælg ønskede hældning</option>
            <c:forEach var="tilt" items="${tilts}">
                <option value="${tilt.value}" >
                        ${tilt.tiltVal} grader
                </option>
            </c:forEach>
        </select>
    </div>
    </div>

    <script>
        function show3(){
            document.getElementById('div3').style.display ='none';
        }
        function show4(){
            document.getElementById('div3').style.display = 'block';
        }
    </script></form>


<div class="btn-group mt-4">
    <select name="roofcolor" class="mdb-select md-form">
        <option value="" disabled selected>Vælg Ønkede farve til taget</option>
        <c:forEach var="roofcolor" items="${roofcolors}">
            <option value="${roofcolor.value}" >
                    ${roofcolor.tiltVal}
            </option>
        </c:forEach>
    </select>
</div>

<div class="btn-group mt-4">
    <select name="wallcolor" class="mdb-select md-form">
        <option value="" disabled selected>Vælg Ønkede farve til væggene</option>
        <c:forEach var="wallcolor" items="${wallcolors}">
            <option value="${wallcolor.value}" >
                    ${wallcolor.tiltVal}
            </option>
        </c:forEach>
    </select>
</div>

<div class="btn-group mt-4">
    <select name="pillarcolor" class="mdb-select md-form">
        <option value="" disabled selected>Vælg Ønkede farve til stolperne</option>
        <c:forEach var="pillarcolor" items="${pillarcolors}">
            <option value="${pillarcolor.value}" >
                    ${pillarcolor.tiltVal}
            </option>
        </c:forEach>
    </select>
</div>


<a href="FrontController?taget=redirect&destination=signin">login side</a> <br>
<a href="FrontController?taget=redirect&destination=signUp">opret bruger side</a> <br>
<a href="FrontController?taget=redirect&destination=collectlist">stykliste</a>

<c:if test="${requestScope.error!= null}">

    <h2>Error ! </h2>
    ${requestScope.error}

</c:if>

<%if ((session.getAttribute("email") != null)) { %>
<br><br>
        du er logget ind med ${sessionScope.email}

<% } else { %>
<br><br>du er ikke logget ind
<% } %>


<%@include file="includes/footer.jsp" %>