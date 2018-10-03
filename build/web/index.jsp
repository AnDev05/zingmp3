<%-- 
    Document   : index
    Created on : Sep 30, 2018, 9:17:34 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
<!--        <c:if test="${sessionScope.username!=null}">
            <h1>
                Hello, ${sessionScope.username}
            </h1>
        </c:if>
    -->
        <c:if test="${sessionScope.username!=null}">
            <h1>
                Hello, <%= session.getAttribute("username") %>
            </h1>
        </c:if>

    </body>
</html>
