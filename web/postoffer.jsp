<%-- 
    Document   : postoffer
    Created on : 29-abr-2018, 22:52:41
    Author     : Pablo
--%>

        <div class="logged">
            <%@include file="/WEB-INF/jspf/Header.jspf" %>

            
            <div class="title2"> Alempa </div>
            <div class="mypage" id="viewoffer" style="animation:none;">
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <p style="margin-bottom: 0px;margin-top: 15px;font-size: 34px; font-family: 'Lucida Console'"> Post an offer</p>   
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <form method="POST" action="OfferController">                 
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
                            <label for="category">Category</label>
                                <select name="category" id="category">
                                    <option>Carpenter</option>
                                    <option>Cleaner</option>
                                    <option>Electrician</option>
                                    <option>Plumber</option>
                                    <option>Babysitter</option>
                                </select>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <label for=description>Description</label> <br>
                            <input type="text" name="description"  id="description"> 
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <label for=price>Price per hour</label> <br>
                            <input type="text" name="price"  id="price"> 
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                
                
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class=element> 
                            <button type="submit" class="btn btn-primary" >Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
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