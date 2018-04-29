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
            <h1> Create Comment</h1>
            <form method="POST" action="CommentController">                 
                    <div class=form-element> 
                        <label for="title">Title</label> <br>
                        <input  type="text" name="title" placeholder="Enter the title" id="title" required> 
                    </div> 
                    <div class=form-element> 
                        <label for="text">Text</label> <br>
                        <input type="text" name="text" placeholder="Enter the Text" id="text" required> 
                    </div>
                    <input type="hidden" name="offerId" id="offerId" value="${offerId}" required> 
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
