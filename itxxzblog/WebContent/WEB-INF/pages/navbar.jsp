
 <div class="blog-masthead">
<div class="container">
  <nav id="itxxz_blog_nav" class="blog-nav">
 	 <c:forEach var="item" items="${navList}" varStatus="s">
  		<a class="blog-nav-item<c:if test="${item.id ==category.id}"> active</c:if>" href="<c:url value='${item.linkUrl}'/>">${item.navName}</a>
	</c:forEach>
     </nav>
   </div>
 </div>
