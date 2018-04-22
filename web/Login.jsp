<%-- 
    Document   : Login
    Created on : 22-abr-2018, 21:26:58
    Author     : Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<link rel="stylesheet" href="styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="/WEB-INF/jspf/Header.jspf" %>
        
        <div class="myform">
            <h1> Login </h1>
            <form method=post action=LoginController >                 
                    <div class=form-element> 
                        <label for=username>Username</label> <br>
                        <input  type=text name=uname id=uname> 
                    </div> 
                    <div class=form-element> 
                        <label for=password>Password</label> <br>
                        <input type=password name=password id=password> 
                    </div>               
                      <div class=form-element> 
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-primary">Reset</button>
                    </div>                    

            </form>
            
            <c:if test ="${not empty requestScope.errors}" var="errors" >
                    
                <c:forEach items="${requestScope.errors}" var="errors"
                varStatus="err"
                begin="0" step="1">
                ${errors}</br>
                </c:forEach>       
                        
            </c:if>
        </div>
        
        
        
        
        
    </body>
</html>
