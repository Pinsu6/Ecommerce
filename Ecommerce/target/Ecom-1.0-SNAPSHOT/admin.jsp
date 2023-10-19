
<%@page import="com.learn.mycart.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User u = (User) session.getAttribute("current-user");
    
%>


<%   
    if (u.getUserType().equals("admin")) 
        {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin</h1>
        <%
            u = (User) session.getAttribute("current-user");
            out.print(u.getUserName());
        %>
    </body>
</html>
<%
    }
else if (u.getUserType().equals("normal")) {
    response.sendRedirect("login.jsp");
     }
%>
<!DOCTYPE html>
