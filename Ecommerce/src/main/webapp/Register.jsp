

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="./css/style.css"/>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body class="registerBody">
        
        <%@include file="Components/navbar.jsp" %>
        
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-6 offset-md-3 ">
                    <div class="card shadow-lg p-3 mb-3 bg-body-tertiary rounded">
                        <div class="card-body px-5 ">
                            <div class="h1 text-center"> <i class="fa-solid fa-user-secret "></i></div>
                            <h3 class="text-center mb-4">Sign here</h3>

                            <form>
                                <div class="form-group">
                                    <div class="mb-3">

                                        <input type="text" placeholder="user Name" class="form-control" id="userName" aria-describedby="User Name">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">
                                        <input type="email" placeholder="user Email" class="form-control" id="userEmail" aria-describedby="User Email">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">

                                        <input type="password" placeholder="user Pssword" class="form-control" id="userPassword" aria-describedby="User password">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3">
                                        <input type="text" placeholder="user Phone" class="form-control" id="userPhone" aria-describedby="User Phone">

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="mb-3">
                                        <textarea style="height: 100px" class="form-control" ></textarea>

                                    </div>
                                </div>
                                <div class="container text-center">
                                    <button type="button" class="btn btn-primary">Submit!</button>
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
