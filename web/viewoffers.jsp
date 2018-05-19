<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : viewoffers
    Created on : 29-abr-2018, 13:08:12
    Author     : Pablo
--%>


        
        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" >
                
                <c:if test ="${requestScope.Offers==null}" var="Offers" >
                    <%@include file="/WEB-INF/jspf/showcategories.jspf" %>
                </c:if>
                    
                <c:if test ="${requestScope.Offers!=null}" var="Offers" >
                    <h1 id="selectcat" style="animation: 0s ease-in-out 0s 0 leftToRight;"> List of ${cat}s</h1><br>
                        
                        <c:forEach items="${requestScope.Offers}" var="Offers"
                        varStatus="err"
                        begin="0" step="1">
                            <a href="ViewOfferController?offerId=${Offers.id}">
                                <div class="row">
                                    <div class="col-md-1"></div>                            
                                    <div class="col-md-10">
                                        <div class="oferta" style=" animation: ${err.index/3+0.9}s ease-in-out 0s 1 leftToRight;">
                                            <div class="row">
                                                <div class="col-md-5"><div class="title3">${Offers.title}</div></div>
                                                <div class="col-md-7"> Name:&nbsp ${requestScope.Users[err.index].surname} &nbsp&nbsp&nbsp Surname:&nbsp ${requestScope.Users[err.index].address} &nbsp &nbsp Address:&nbsp ${requestScope.Users[err.index].name}  </div>
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