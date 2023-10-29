<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.helpper.FactoryProvider"%>
<%@page import="com.learn.mycart.dao.Categorydao"%>
<%@page import="com.learn.mycart.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User u = (User) session.getAttribute("current-user");

%>


<%    if (u.getUserType().equals("admin")) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="Components/common_css_js.jsp" %>
        <link rel="stylesheet" href="./css/style.css"/>
        <title>Admin Page</title>
    </head>
    <body>
        <%@include file="/Components/Message.jsp" %>
        <div class="container admin">
            <div class="row mt-5">
                <!--user coll-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body  text-center">
                            <img src="./img/user.png" style="max-width: 115px" class="img-fluid " alt="product_icon"/>
                            <h2 class="font-monospace">2022</h2>
                            <h1 class="font-monospace text-muted text-uppercase">Users</h1>
                        </div>
                    </div>
                </div>
                <!--categories-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="./img/category.png" style="max-width: 115px" class="img-fluid " alt="product_icon"/>
                            <h2 class="font-monospace">2022</h2>
                            <h1 class="font-monospace text-muted text-uppercase">Categories</h1>
                        </div>
                    </div>
                </div>
                <!--Products-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="./img/product.png" style="max-width: 115px" class="img-fluid " alt="product_icon"/>
                            <h2 class="font-monospace">2022</h2>
                            <h1 class="text-uppercase font-monospace text-muted">Products</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-6">
                    <div class="card" data-bs-toggle="modal" data-bs-target="#AddCategorie">
                        <div class="card-body text-center">
                            <img src="./img/categoryAdd.png" style="max-width: 115px" class="img-fluid " alt="category"/>

                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase font-monospace text-muted">Add category</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center" data-bs-toggle="modal" data-bs-target="#AddProduct">
                            <img src="./img/plus.png" style="max-width: 115px" class="img-fluid " alt="product_icon"/>

                            <p class="mt-2">Click here to add new product</p>
                            <h1 class="text-uppercase font-monospace text-muted">Add Products</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!--Category Modal -->
        <div class="modal fade" id="AddCategorie" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="productoperation"> 
                        <input type="hidden" name="operation" value="addcategory">
                        <div class="modal-header bg-info t">
                            <h1 class="modal-title fs-5 text-white " id="exampleModalLabel">Add Category</h1>

                        </div>
                        <div class="modal-body">


                            <div class="form-group">

                                <input class="form-control" name="title" placeholder="Enter Title Of category">  
                            </div>
                            <div class="form-group mt-4">
                                <textarea style="height: 350px" name="description" class="form-control" placeholder="Enetr Description Of category"></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-outline-success">Add Category</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--Category Modal End -->
        <!--Add Product Modal Start-->
        <div class="modal fade" id="AddProduct" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="productoperarion" method="post" enctype="multipart/form-data">  
                        <input type="hidden" name="operation" value="addproduct">
                        <div class="modal-header bg-info t">
                            <h1 class="modal-title fs-5 text-white " id="exampleModalLabel">Add Category</h1>

                        </div>
                        <div class="modal-body">


                            <div class="form-group">

                                <input class="form-control" name="title" placeholder="Enter Title Of Product">  
                            </div>
                            <div class="form-group mt-2">
                                <textarea style="height: 150px" name="description" class="form-control" placeholder="Enetr Description Of Product"></textarea>
                            </div>
                            <div class="form-group mt-2">
                                <input class="form-control" name="price" type="Number" placeholder="Enter Price Of Product">  
                            </div>
                            <div class="form-group mt-2">
                                <input class="form-control" name="discount" type="Number" placeholder="Enter Discount Of Product">  
                            </div>
                            <div class="form-group mt-2">
                                <input class="form-control" name="quantity" type="Number" placeholder="Enter quantity Of Product">  
                            </div>
                            <!--product category-->
                            <%                               
                                Categorydao cdao = new Categorydao(FactoryProvider.getFactory());
                                List<Category> c = cdao.getCategory();

                            %>
                            <div class="form-group mt-2">
                                <select class="form-select mt-2" name="catid" aria-label="Default select example">
                                    <%                                        
                                            for (Category title : c) {

                                    %>
                                    <option value="<%= title.getCategoryId()%>"><%= title.getCategoryTittle()%></option>
                                    <%
                                        }
                                    %>

                                </select>
                            </div>
                            <div class="form-group mt-2">
                                <label for="">Select Picture Of Product</label></br>
                                <input type="file" id="pic" name="pic">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-outline-success">Add Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--Add product Modal End--> 
    </body>
</html>
<%    } else if (u.getUserType().equals("normal")) {
        response.sendRedirect("login.jsp");
    }
%>