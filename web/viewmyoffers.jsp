<%-- 
    Document   : viewmyoffers
    Created on : 01-may-2018, 17:52:38
    Author     : Pablo
--%>

        
        
        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation: 0s ease-in-out 0s 0 leftToRight;">
                
                    
                <c:if test ="${requestScope.Offers!=null}" var="Offers"  >
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <p style="margin-bottom: 10px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> My posted offers  <br> <a href="GetMyApplicationsController" class="btn btn-success btn-lg" role="button" style="margin-top:15px; z-index: 25;">See applications for my offers</a></p>   
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                        <c:forEach items="${requestScope.Offers}" var="Offers"
                        varStatus="err"
                        begin="0" step="1">
                            <a  href="#prueba">
                                <div class="row" >
                                    <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                        <div class="oferta" style="background-color:#cfdef7; animation: ${err.index/8+0.9}s ease-in-out 0s 1 leftToRight;">
                                            <div class="row">
                                                <div class="col-md-5"><div class="title3">${Offers.title}</div></div>
                                                <div class="col-md-7"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-1"></div>
                                                <div class="col-md-9">
                                                    <div class="description">
                                                        Description: &nbsp&nbsp&nbsp ${Offers.description}
                                                    </div>
                                                </div>
                                                <div class="col-md-2"> <div class="price">${Offers.price}?</div></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div> 
                                </div>
                            </a>
                        </c:forEach>  
                        
                    
                </c:if>
                
                      <div class="espacio"></div>  
            </div>
            
        </div>
    </body>
</html>