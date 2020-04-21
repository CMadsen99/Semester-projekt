


<title>Cupcake projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>






<h1 class="text-center mt-4">Design din egen carport her</h1>


<form class="mt-4" name="" method="POST" action="FrontController">
    <input type="hidden" name="taget" value="">

    <table class="text-center mt-4" style="width:100%">
        <th>
        <th>
            <div class="btn-group mt-4">
                <select name="topping" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Højde</option>
                    <c:forEach var="" items="">
                        <option value="" >
                            </option>
                    </c:forEach>
                </select>
            </div>
        </th>
        <th>
            <div class="btn-group mt-4">
                <select name="topping" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Bredde</option>
                    <c:forEach var="" items="">
                        <option value="" >
                        </option>
                    </c:forEach>
                </select>
            </div>
        </th>
        <th>
            <div class="btn-group mt-4">
                <select name="topping" class="mdb-select md-form">
                    <option value="" disabled selected>Vælg Dybde</option>
                    <c:forEach var="" items="">
                        <option value="" >
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
        <select name="topping" class="mdb-select md-form">
            <option value="" disabled selected>Vælg ønskede hældning</option>
            <c:forEach var="" items="">
                <option value="" >
                </option>
            </c:forEach>
        </select>
    </div>
</div>


<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
    <label class="form-check-label" for="exampleRadios1">
        Ja tak til skur
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
    <label class="form-check-label" for="exampleRadios2">
        Nej tak til skur
    </label>
</div>

<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
    <label class="form-check-label" for="exampleRadios1">
        Ja tak til skuret skal fylde hele carportens bredde
    </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
    <label class="form-check-label" for="exampleRadios2">
        Nej tak til skuret skal fylde halvdelen af skurets bredde
    </label>
</div>

<%@include file="includes/footer.jsp" %>