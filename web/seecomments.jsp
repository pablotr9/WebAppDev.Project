<%-- 
    Document   : seecomments
    Created on : 04-may-2018, 16:49:21
    Author     : Pablo
--%>


        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation: 0s ease-in-out 0s 0 leftToRight;">
              
                    
                <c:if test ="${requestScope.Comments!=null}" var="Comments"  >
                     <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <p style="margin-bottom: 80px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> Comments  <br> <a id="testat" href="newComment.jsp?offerId=${param.offerId}" class="btn btn-success btn-lg" role="button" style="margin-top:15px;position:fixed; z-index: 25;">Add a new comment</a></p>   
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                        <c:forEach items="${requestScope.Comments}" var="Comments"
                        varStatus="err"
                        begin="0" step="1">
                                <div class="row" >
                                    <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                        <div class="oferta" style="border-color: #f8f8f8; background-color:#efefef; animation: ${err.index/8+0.9}s ease-in-out 0s 1 leftToRight;">
                                            <div class="row">
                                                <div class="col-md-5"><div class="title3">${Comments.title}</div></div>
                                                <div class="col-md-7"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-1"></div>
                                                <div class="col-md-9">
                                                    <div class="description">
                                                        ${Comments.text} <br>  <span style="float:right;"> By <span style="color:navy;">${requestScope.Users[err.index].username}</span></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"> <div class="price"></div></div>
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