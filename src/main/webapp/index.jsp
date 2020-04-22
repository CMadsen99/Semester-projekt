<%@ page import="FunctionLayer.Heights" %>
<%@ page import="FunctionLayer.Lengths" %>
<%@ page import="FunctionLayer.Tilts" %>
<%@ page import="FunctionLayer.Widths" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Semester projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%!

    @Override
    public void jspInit() {
        Heights.initHeights();
        Lengths.initLengths();
        Tilts.initTilts();
        Widths.initWidths();
    }

%>

<%

    request.setAttribute("heights", Heights.getHeights());
    request.setAttribute("lengths", Lengths.getLengths());
    request.setAttribute("tilts", Tilts.getTilts());
    request.setAttribute("widths", Widths.getWidths());

%>

<c:forEach var="højde" items="${heights}">
    ${højde.value}<br>
</c:forEach>



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
                            ${height.value} meter
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
                            ${width.value} meter
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
                            ${length.value} meter
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


<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
    <label class="form-check-label" for="exampleRadios1">
        Ja tak til faldt tag
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
    <label class="form-check-label" for="exampleRadios2">
        Ja tak til hældning på taget
    </label>
    <div class="btn-group mt-4">
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


<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option1" checked>
    <label class="form-check-label" for="exampleRadios3">
        Ja tak til skur
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios4" value="option2">
    <label class="form-check-label" for="exampleRadios4">
        Nej tak til skur
    </label>
</div>

<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios5" value="option1" checked>
    <label class="form-check-label" for="exampleRadios5">
        Ja tak til skuret skal fylde hele carportens bredde
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios6" value="option2">
    <label class="form-check-label" for="exampleRadios6">
        Nej tak til skuret skal fylde halvdelen af skurets bredde
    </label>
</div>

<%@include file="includes/footer.jsp" %>