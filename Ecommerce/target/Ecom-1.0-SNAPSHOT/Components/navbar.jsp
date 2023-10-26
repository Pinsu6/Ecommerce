
<%@page import="com.learn.mycart.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/style.css"/>
        <%@include file="common_css_js.jsp" %>
        <title></title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark sticky-top navBackground">
            <div class="container">
                <a class="navbar-brand" href="#">Mycart</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Category
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>

                    </ul>
                    <ul class="navbar-nav   ml-auto">
                        <%
                            User u1 = (User) session.getAttribute("current-user");
                            
                            if (u1 == null) {
                        %>
                        <li class="nav-item">
                            <a class="nav-link " aria-current="page" href="login.jsp">Login</a>
                        </li > 
                        <li class="nav-item"s>  
                            <a class="nav-link " aria-current="page" href="Register.jsp">Register</a> 
                        </li>
                        <%
                            }
                            else
                            {
                            %>
                            <li class="nav-item">
                                <a class="nav-link " aria-current="page" href="#"><%=u1.getUserName()%></a>
                        </li > 
                        <li class="nav-item"s> 
                            
                            <a class="nav-link " aria-current="page" href="LogoutServlet">Logout</a> 
                        </li>
                            <%
                            }
                        %>


                    </ul>
                </div>
            </div>
        </nav>


    </body>
</html>
