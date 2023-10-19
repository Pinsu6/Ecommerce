<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="./css/style.css"/>

    </head>
    <body class="registerBody">

        <%@include file="Components/navbar.jsp" %>

        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6 offset-md-3 ">
                    <div class="card shadow-lg p-3 mb-3 bg-body-tertiary rounded">
                        <div class="card-body px-5 ">
                            <div class="h1 text-center"> <i class="fa-solid fa-user "></i></div>
                            <%@include file="/Components/Message.jsp" %>
                            <h3 class="text-center mb-4">Sign here</h3>

                            <form action="Register" method="post">
                                <div class="form-group">
                                    <div class="mb-3">

                                        <input type="text" placeholder="user Name" class="form-control" name="userName" aria-describedby="User Name" maxlength="10" pattern="[A-Za-z]{1,10}" title="Only alphabetical characters allowed, up to 10 characters"  required="">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">
                                        <input type="email" placeholder="user Email" class="form-control" name="userEmail" aria-describedby="User Email">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">

                                        <input type="password" placeholder="user Pssword" class="form-control" name="userPassword" aria-describedby="User password">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">
                                        <input type="text" placeholder="user Phone" class="form-control" name="userPhone" aria-describedby="User Phone" maxlength="10" pattern="[0-9]{1,10}" title="Only Number characters allowed, up to 10 characters" >

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="mb-3">
                                        <textarea style="height: 100px" class="form-control" placeholder="user Address" name="userAddress" ></textarea>

                                    </div>
                                </div>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-primary">Submit!</button>
                                      <p class="mt-3">Already  have an account <a href="login.jsp">Login</a> </p>
                                </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>  
    </div>
</div>
        
</body>
</html>
