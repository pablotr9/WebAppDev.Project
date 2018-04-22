<%-- 
    Document   : Register
    Created on : 22-Apr-2018, 22:40:59
    Author     : Emilio
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
            <form method=post action=RegitrationController >                 
                    <div class=form-element> 
                        <label for=username>Username</label> <br>
                        <input  type=text name=uname placeholder="Enter the username" id=uname required> 
                    </div> 
                    <div class=form-element> 
                        <label for=password>Password</label> <br>
                        <input type=password name=password placeholder="Enter the password" id=password required> 
                    </div>
                    <div class=form-element> 
                        <label for=rpassword>Repite the Password</label> <br>
                        <input type=password name=rpassword placeholder="Repeat the password"id=rpassword required> 
                    </div>
                    <div class=form-element> 
                        <label for=email>Email</label> <br>
                        <input type=email name=email placeholder="Enter the email" id=email required> 
                    </div>
                     <div class=form-element>   
                        <label for=gender> Choose a gender: </label><br>
                        <strong>Female</strong>
                        <input type="radio" name="gender" value="female" checked />
                        <strong>Male</strong>
                        <input type="radio" name="gender" value="male"  />      
                    </div>
                    <div class="form-element">   
                        <label for="telephone"> Telephone </label>
                        <input type="tel" placeholder="Enter telephone number" id="telephone" name="telephone" required />                    
                    </div>
                    <div class="form-element">   
                        <label for=spam> Subscribe to mail list.</label> <input type="checkbox" name="spam" id="spam" > 
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
