<%-- 
    Document   : postoffer
    Created on : 29-abr-2018, 22:52:41
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
            <div class="mypage" id="viewoffer">
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <p style="margin-bottom: 30px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> Post an offer</p>   
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            
                            <label for=selectOption>Select a category</label> <br>
                            <select id="selectOption">
                                <option value="1">Cleaner</option>
                                <option value="2" selected="selected">Babysitter</option>
                                <option value="3">Carpenter</option>
                                <option value="4">Electrician</option>
                                <option value="5">Plumber</option>
                              </select>
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
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <label for=price>Price per hour</label> <br>
                            <input type="text" name="price"  id="price"> 
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <button type="submit" class="btn btn-primary" onclick="sendToPostOffer()">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </div> 
                    </div>
                    <div class="col-md-4"></div>
                </div> 
            </div>
            
        </div>
    </body>
</html>