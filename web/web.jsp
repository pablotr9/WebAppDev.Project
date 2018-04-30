<%-- 
    Document   : Register
    Created on : 22-Apr-2018, 22:40:59
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
        <c:if test ="${sessionScope.USER!=null}" var="USER" >
            <c:redirect url="weblogged.jsp"/>
        </c:if>


    </head>
    <body>
         
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#reg').submit(function(e) {

                $('#resreg').text("");
                  $(".error").remove();
                    
                  if ($('#unamer').val().length < 6) {
                  e.preventDefault();
                    $('#resreg').html( $('#resreg').val() + "Username needs 6+ chars");
                  }else if ($('#name').val().length < 1) {
                  e.preventDefault();
                    $('#resreg').html( "Name cannot be empty!");
                  }else if ($('#surname').val().length < 1) {
                  e.preventDefault();
                    $('#resreg').html("Surname needs 6+ chars");
                  }else if ($('#address').val().length < 1) {
                  e.preventDefault();
                    $('#resreg').html( "Address cannot be empty!");
                  }else if ($('#passwordr').val().length < 6) {
                  e.preventDefault();
                    $('#resreg').html( "Password needs 6+ chars");
                  }else if ($('#passwordr').val() !=  $('#rpasswordr').val() ) {
                  e.preventDefault();
                    $('#resreg').html("Both password have to be equal!");
                  }else{
                      var form = $('#reg');
                        form.submit(function () {

                        $.ajax({
                        type: form.attr('method'),
                        url: form.attr('action'),
                        data: form.serialize(),
                        success: function (data) {
                        var result=data;
                        $('#resreg').text(result);
                        }
                        });

                        return false;
                        });
                  }

                });
                
                
                $('#log').submit(function(e) {

                    $('#resreg2').text("");
                  $(".error").remove();

                  if ($('#uname').val().length < 6) {
                  e.preventDefault();
                    $('#resreg2').html(  "Username needs 6+ chars");
                }else if ($('#password').val().length < 6) {
                  e.preventDefault();
                    $('#resreg2').html( "Password must be 6+ chars long");
                  }else{
                      var form = $('#log');
                        form.submit(function () {

                        $.ajax({
                        type: form.attr('method'),
                        url: form.attr('action'),
                        data: form.serialize(),
                        success: function (data) {
                        var result=data;
                        $('#resreg2').text(result);
                        }
                        });

                        return false;
                        });
                  }

                });

              });
        </script>
        
        
        <div class="ct" id="t1">
            <div class="ct" id="t2">
              <div class="ct" id="t3">
                <div class="ct" id="t4">
           <section>  
             <%@include file="/WEB-INF/jspf/navigation.jspf" %>
             <div class="page" id="p1">
                 
                 <li class="icon"><span class="title">Alempa</span> <span class="hint">Esto es textillo sobre nuestra pagina<br/> Ponemos textillo sobre de que va xd</span></li>   
                 <div class="prueba2" id="error"> 
                     <p id="resreg3">
                         
                         <c:if test ="${not empty requestScope.errors}" var="errors" >
                                <c:forEach items="${requestScope.errors}" var="errors"
                                varStatus="err"
                                begin="0" step="1">
                                ${errors}</br>
                                </c:forEach>       
                        </c:if>
                                
                     </p>
                </div>  
             </div>
               
             <div class="page" id="p2">
                     <%@include file="/WEB-INF/jspf/Login.jspf" %>
                     
             </div> 
                 
             <div class="page" id="p3" style="overflow: scroll;">
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
