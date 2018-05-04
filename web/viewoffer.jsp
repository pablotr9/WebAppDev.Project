<%-- 
    Document   : viewoffer
    Created on : 01-may-2018, 18:29:21
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
            <div class="mypage" id="viewoffer" style="animation:none;">
                
                <div style="padding-top: 50px;"></div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="myoffer">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="title4">${Offer.title}</div>
                                        </div>
                                        <div class="col-md-1"></div>
                                </div>
                                    
                                <div class="row">
                                    <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            <div class="description">Description: ${Offer.description}</div>
                                        </div>
                                    <div class="col-md-2"></div>
                                </div>
                                    
                                    <div style="height:50px;"></div>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <div class="description" style="background-color: #a5a5a5; opacity: 0.95; text-align: center; border-radius: 8px;">Name: ${requestScope.User.surname} <br>Surname: ${requestScope.User.address} <br> Email: ${requestScope.User.name}</div>
                                            </div>
                                            <div class="col-md-3"> </div>
                                    </div>

                                    <div style="height:60px;"></div>                                             
                                            
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-2"><a href="Application.jsp?offerId=${Offer.id}" class="btn btn-primary btn-lg" role="button" style="font-size: 28px;">Apply</a></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-4"><a href="GetCommentsController?offerId=${Offer.id}" class="btn btn-success btn-lg" role="button" style="margin-top:7px;">See Comments for ${User.surname}</a></div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    <div style="height:60px;"></div>   
                                            
                                    
                            </div>
                        </div>
                        <div class="col-md-2"></div>

                    </div>
                 
                
                
             <div class="espacio"></div>  
            </div>
            
        </div>
    </body>
</html>