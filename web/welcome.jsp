<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
        <head>
                <meta charset="utf-8">
                <title>Logged In</title>
        </head>
        <body>
                <div style="text-align: center">
                        <h1>Welcome to DBTK</h1>
                        <b>${userName} (${userId})</b>
                        <br><br>
                        <a href="${pageContext.request.contextPath}/logout">Logout</a>
                </div>
        </body>
</html>