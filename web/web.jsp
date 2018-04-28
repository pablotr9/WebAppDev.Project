<%-- 
    Document   : Register
    Created on : 22-Apr-2018, 22:40:59
    Author     : Emilio
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
        <div class="ct" id="t1">
            <div class="ct" id="t2">
              <div class="ct" id="t3">
                <div class="ct" id="t4">
           <section>  
             <%@include file="/WEB-INF/jspf/navigation.jspf" %>
             <div class="page" id="p1">
                 <li class="icon"><span class="title">Alempa</span> <span class="hint">Esto es textillo sobre nuestra pagina<br/> Ponemos textillo sobre de que va xd</span></li>   
             </div>
               
             <div class="page" id="p2">
                     <%@include file="/WEB-INF/jspf/Login.jspf" %>
                 
             </div> 
                 
             <div class="page" id="p3">
                   <%@include file="/WEB-INF/jspf/Register.jspf" %>
             </div>
             
             <div class="page" id="p4">
              <li class="icon"><span class="title">Contact</span><span class="hint">xd</span></li>
             </div>  

           </section>

                </div>
                </div>
              </div>
             </div>
           
    </body>
</html>
