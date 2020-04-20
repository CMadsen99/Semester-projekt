


<title>Cupcake projekt</title>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>






<h1 class="text-center mt-4">Design din egen carport her</h1>


<form class="mt-4" name="cupcakeBasket" method="POST" action="FrontController">
    <input type="hidden" name="taget" value="cupcakeBasket">

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

<%@include file="includes/footer.jsp" %>