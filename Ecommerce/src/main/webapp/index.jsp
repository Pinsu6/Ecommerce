
<%@page import="com.learn.mycart.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User u = (User) session.getAttribute("current-user");
    if (u == null) {

        response.sendRedirect("login.jsp");
        return;
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <%            u = (User) session.getAttribute("current-user");
            out.print(u.getUserName());
        %>
    </body>
</html>

