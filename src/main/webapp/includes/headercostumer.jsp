<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.navbar-default {
    background-color: #000975;
    display: flex;
    justify-content: space-around;
    align items: center;
    margin: opx;
    padding: opx;
    box-sizing: border-box;

}
    }
</style>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-default">
<a class="navbar-brand" href="index.jsp">
    <img src="images/logo.png" width="60" height="60" alt="">
  </a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a style="color:white" ;="" class="nav-link" href="FrontController?taget=orderViewCustomer&destination=orderlistCustomer">Ordre historik <span class="sr-only">(current)</span></a>
          </li>
             <%if ((session.getAttribute("email") != null)) { %>
                          <li style="color:white" class="nav-item dropdown">
                                 <a style="color:white" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   ${sessionScope.email}
                                 </a>
                                 <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                   <a style="color:red" class="dropdown-item" href="FrontController?taget=logout&destination=index">Logud</a>
                                 </div>
                               </li>
                  <% } else { %>
                          <li class="nav-item">
                         <a class="nav-link" href="FrontController?taget=redirect&destination=signin" style="color:white">Login/Registrer</a>
                       </li>
                 <% } %>
        </ul>
      </div>
    </nav>
