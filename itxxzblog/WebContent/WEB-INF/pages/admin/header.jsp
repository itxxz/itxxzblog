<div class="blog-masthead">
  <div class="container">
    <div class="navbar-brand" style="margin-left: -90px;">
    	<font color="white" size="5"><fmt:message key="ui.title" /></font>
    </div>
    <div id="theClock" style="font-weight: bold; width: 300px;"></div> 
    <div class="navbar-brand" style="float: right;">
   		<font color="white"><fmt:message key="ui.welcome" /></font>
   		<font color="white"><shiro:principal/></font>
   		<font color="white"><span id="show_current_time"></span></font>
    	<font color="white"><fmt:message key="ui.logout" /></font>
    </div>
  </div>
</div>
