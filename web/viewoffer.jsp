<%-- 
    Document   : viewoffer
    Created on : 01-may-2018, 18:29:21
    Author     : Pablo
--%>


        
        
        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation:none;">
                
                <div style="padding-top: 50px;"></div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="myoffer">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="title4">${Offer.title}</div>
                                        </div>
                                        <div class="col-md-1"></div>
                                </div>
                                    
                                <div class="row">
                                    <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            <div class="description">Description: ${Offer.description}</div>
                                        </div>
                                    <div class="col-md-2"></div>
                                </div>
                                    
                                    <div style="height:50px;"></div>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <div class="description" style="background-color: #a5a5a5; opacity: 0.95; text-align: center; border-radius: 8px;">Name: ${requestScope.User.surname} <br>Surname: ${requestScope.User.address} <br> Email: ${requestScope.User.name}</div>
                                            </div>
                                            <div class="col-md-3"> </div>
                                    </div>

                                    <div style="height:60px;"></div>                                             
                                            
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-2"><a href="Application.jsp?offerId=${Offer.id}" class="btn btn-primary btn-lg" role="button" style="font-size: 28px;">Apply</a></div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-4"><a href="GetCommentsController?offerId=${Offer.id}" class="btn btn-success btn-lg" role="button" style="margin-top:7px;">See Comments for ${User.surname}</a></div>
                                        <div class="col-md-2"></div>
                                    </div>
                                    <div style="height:60px;"></div>   
                                            
                                    
                            </div>
                        </div>
                        <div class="col-md-2"></div>

                    </div>
                 
                
                
             <div class="espacio"></div>  
            </div>
            
        </div>
    </body>
</html>