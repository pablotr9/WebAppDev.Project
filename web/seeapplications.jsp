<%-- 
    Document   : seeapplications
    Created on : 04-may-2018, 17:38:39
    Author     : Pablo
--%>

<%-- 
    Document   : seecomments
    Created on : 04-may-2018, 16:49:21
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
            <div class="mypage" id="viewoffer" style="animation: 0s ease-in-out 0s 0 leftToRight;">
                
                    
                <c:if test ="${requestScope.Applications!=null}" var="Applications"  >
                     <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <p style="margin-bottom: 80px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> Applications for my offers </p>   
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                        <c:forEach items="${requestScope.Applications}" var="Applications"
                        varStatus="err"
                        begin="0" step="1">
                                <div class="row" >
                                    <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                        <div class="oferta" style="border-color: #f8f8f8; background-color:#efefef; animation: ${err.index/8+0.9}s ease-in-out 0s 1 leftToRight;">
                                            <div class="row">
                                                <div class="col-md-5"><div class="title3">${Applications.title}</div></div>
                                                <div class="col-md-7"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-1"></div>
                                                <div class="col-md-9">
                                                    <div class="description">
                                                        ${Applications.description} <br> <span style="float:right">Username: ${requestScope.Users[err.index].surname} - Email: ${requestScope.Users[err.index].name} </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"> <div class="price" style="font-size: 20px;">${Applications.date}</div></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div> 
                                </div>
                        </c:forEach>  
                        
                    
                </c:if>
                
                      
                    <div class="espacio">&nbsp;</div>
                      <div class="espacio">&nbsp;</div>
                      <div class="espacio">&nbsp;</div>
                      <div class="espacio">&nbsp;</div>
            </div>
            
        </div>
    </body>
</html>