<%-- 
    Document   : list-tasks
    Created on : Oct 27, 2017, 6:45:34 PM
    Author     : raitis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/static/jquery/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h2> ${data}</h2>
    </body>
</html>
