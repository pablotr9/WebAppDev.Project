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