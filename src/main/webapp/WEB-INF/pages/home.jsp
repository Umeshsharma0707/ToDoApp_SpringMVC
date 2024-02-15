<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> <c:out value="${page}"></c:out> </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    
    <div class="container mt-3">
    	<h1 class="text-center">welcome TODO manager</h1>
     	
     	<c:if test="${not empty msg }">
     		
     	<div class="alert alert-success">
     		<c:out value="${msg }"></c:out>
     	</div>
     		
     	</c:if>
     
     
    	<div class="row mt-5">
    		<div class="col-md-2">
    	
    			<div class="list-group">
  <button type="button" class="list-group-item list-group-item-action active" aria-current="true">
    Menu
  </button>
  <a href='<c:url value="/add"></c:url>' class="list-group-item list-group-item-action"> ADD TODOs</a>
  <a href='<c:url value="/"></c:url>' class="list-group-item list-group-item-action">View TODO</a>
 
</div>
    			
    		</div>
    		<div class="col-md-10">
    			<h3 class="text-center">Content</h3>
    			<c:if test="${page=='home' }">
    				<h1 class="text-center">ALL TODOs</h1>
    				
    				<c:forEach var="t" items="${todos }">
    				
    				<div class="card">
    				
    				<div class="card-body">
    				
    					<h2>-->>>  <c:out value="${t.todoTitle }"></c:out></h2>
    					<h3>-->>>  <c:out value="${t.todoContent }"></c:out></h3>
    					<h4>-->>>  <c:out value="${t.tododate }"></c:out></h4>
    				</div>
    				</div>
    				<br>
    				</c:forEach>
    				
    			</c:if>
    			
    			<c:if test="${page=='add' }">
    				<h1 class="text-center">Add TODOs</h1>
    				
    				<form:form action="saveTodo" method="post" modelAttribute="todo">
    					<div class="form-group mb-10">
    						
    					<form:input path="todoTitle" cssClass="form-control" placeholder="Enter your TODO Title"/>    
    					
    					</div> 
    					<br>
    					<div class="form-group"> 
    						
    						<form:textarea path="todoContent" cssClass="form-control" placeholder="Enter your TODO Content" cssStyle="height:300px"/>
    					
    					</div> 
    					
    					<div class="container text-center mt-2">
    					<button name="action" class="btn btn-outline-success">Add TODO</button>
    					</div>
    					
    				</form:form>
    			</c:if>
    		</div>
    	
    	</div>
    
    </div>
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
  </body>
</html>
