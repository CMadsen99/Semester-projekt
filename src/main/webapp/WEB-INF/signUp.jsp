<title>Registrer</title>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/headercostumer.jsp" %>

<h2 class="text-center mt-4">${requestScope.registermsg}</h2>
<h2 class="text-center mt-4">${requestScope.passwordMsg}</h2>
<h1 class="text-center mt-4">Registrer her:</h1>


<div class="row">

    <div class="col-lg-4"></div>

    <div class="col-lg-4">


        <form name="register" action="FrontController" method="POST">

            <input type="hidden" name="taget" value="register"/>

            <div class="form-group">
                <label for="name">Indtast navn:</label>
                <input type="text" name="name" class="form-control" id="name">
            </div>

            <div class="form-group">
                <label for="email">Indtast e-mail:</label>
                <input type="email" name="email" class="form-control" id="email">
            </div>

            <div class="form-group">
                <label for="password">Indtast password:</label>
                <input type="password" name="password1" class="form-control" id="password">
            </div>

            <div class="form-group">
                <label for="passsword">Indtast password igen:</label>
                <input type="password" name="password2" class="form-control" id="passsword">
            </div>

            <div class="form-group">
                <label for="city">Indtast by:</label>
                <input type="text" name="city" class="form-control" id="city">
            </div>

            <div class="form-group">
                <label for="zipcode">Indtast posnummer:</label>
                <input type="number" inputmode="numeric" pattern="[0-9]*" name="<zipcode>" class="form-control" id="zipcode">
            </div>

            <div class="form-group">
                <label for="adress">Indtast gade og gade nummer:</label>
                <input type="text" name="address" class="form-control" id="adress">
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary mt-4">Register</button>
            </div>
        </form>
    </div>

    <div class="col-lg-4"></div>

</div>
<!-- row -->


<%@include file="../includes/footer.jsp" %>
