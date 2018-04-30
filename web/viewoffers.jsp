<%-- 
    Document   : viewoffers
    Created on : 29-abr-2018, 13:08:12
    Author     : Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="logo4.png" />
        <title>Alempa</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css'>
        <link rel="stylesheet" href="styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer">
                
                <c:if test ="${requestScope.Offers==null}" var="Offers" >
                    <%@include file="/WEB-INF/jspf/showcategories.jspf" %>
                </c:if>
                    
                <c:if test ="${requestScope.Offers!=null}" var="Offers" >
                    <h1> List of offers [poner nombre usuario jsp] </h1>
                    jejej <br> jejej <br> jejej <br> jejej <br> jejej <br> jejej <br> jejej <br> jejej <br> 
                    jejej <br> jejej <br> jejej <br> jejej <br> je
                
                </c:if>
                
                
            </div>
            
        </div>
    </body>
</html>