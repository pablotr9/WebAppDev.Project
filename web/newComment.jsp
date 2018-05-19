<%-- 
    Document   : newComment
    Created on : 02-may-2018, 19:05:52
    Author     : Pablo
--%>

        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation:none;">
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <p style="margin-bottom: 0px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> Post a comment </p>   
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <form method="POST" action="CommentController">                 
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
                            <label for=description>text</label> <br>
                            <input type="text" name="texto"  id="texto"> 
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