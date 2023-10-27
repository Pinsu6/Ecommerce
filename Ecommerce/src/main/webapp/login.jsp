<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="Components/common_css_js.jsp" %>
           <link rel="stylesheet" href="./css/style.css"/>
     
    </head>
    <body class="registerBody">
      

        <form action="LoginServlet" method="post">
            <div class="container">
                <div class="row mt-5">
                    <div class="col-md-6 offset-md-3 ">
                        <div class="card shadow-lg p-3 mb-3 bg-body-tertiary rounded">
                            
                            <div class="card-body px-5 ">
                                <div class="h1 text-center"> <i class="fa-solid fa-user "></i></div>
                                    <%@include file="/Components/Message.jsp" %>
                                    <%
                                        
                                      %>
                                <h3 class="text-center mb-4">Login Here</h3>

                                <form action="Register" method="post">
                                    
                                    <div class="form-group">
                                        <div class="mb-3">
                                            <input type="email" name="email" placeholder="user Email" class="form-control" name="userEmail" aria-describedby="User Email">

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="mb-3">

                                            <input type="password" name="password" placeholder="user Pssword" class="form-control" name="userPassword" aria-describedby="User password">

                                        </div>
                                    </div>
                                   
                                   
                                    <div class="container text-center ">
                                        <button type="submit" class="btn btn-primary mt-3">Submit!</button>
                                        <p class="mt-3">Don't have an account <a href="Register.jsp">Sign Up</a> </p>
                                    </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>  
        </form>
    </body>
</html>
