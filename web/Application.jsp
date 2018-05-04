<%-- 
    Document   : Application
    Created on : 02-may-2018, 17:57:49
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
        
    <script>
        function sendToPostOffer(e){
            alert("jeje");
        }
        
    </script>
        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation:none;">
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <p style="margin-bottom: 0px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'">Application </p>   
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <form method="POST" action="ApplicationController">                 
                    </div>
                    <div class="col-md-4"></div>
                    
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <label for=title>Title</label> <br>
                            <input type="text" name="title"  id="title"> 
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <label for=description>Description</label> <br>
                            <input type="text" name="description"  id="description"> 
             <input type="hidden" name="offerId"  id="offerId" value="${param.offerId}"> 
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
             
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element>
                            <button type="submit" class="btn btn-primary btn-lg" style="font-size: 18px;">Send application</button>
                            <a href="weblogged.jsp" class="btn btn-primary btn-lg" role="button" style="font-size: 18px;">Cancel</a>
                        </div> 
                    </div>
                    <div class="col-md-4"></div>
                </div> 
            </form>
                        <div class="espacio"></div>
            </div>
            
        </div>
    </body>
</html>