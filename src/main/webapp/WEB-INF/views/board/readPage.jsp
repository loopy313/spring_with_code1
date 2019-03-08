<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <script>
 	$(function(){
 		var formObj=$("form[role='form']");
 		console.log(formObj);
 		$(".modifyBtn").on("click",function(){
 			formObj.attr("action","/board/modifyPage");
 			formObj.attr("method","get");
 			formObj.submit();
 		});
 		$(".removeBtn").on("click", function() {
 			formObj.attr("action","/board/removePage");
 			formObj.submit();
 		});
 		$(".goListBtn").on("click",function(){
 			formObj.attr("method","get");
 			formObj.attr("action","/board/listPage");
 			formObj.submit();
 		});
 	});
 </script>
<form role="form" action="modifyPage" method="post">
<input type='hidden' name='bno' value="${boardVO.bno}">
<input type='hidden' name='page' value="${cri.page}">
<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
</form>

<div class="box-body">
<div class="form-group">
	<label for="exampleInputTitle1">Title</label><input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
</div>
<div class="form-group">
	<label for="exampleInputContent1">Content</label><textarea name="content" class="form-control" rows="3" readonly="readonly">${boardVO.content}</textarea>
</div>
<div class="form-group">
	<label for="exampleInputWriter1">Writer</label><input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
</div>
</div>
<div class="box-footer">
	<button type="submit" class="btn btn-warning modifyBtn">Modify</button>
	<button type="submit" class="btn btn-danger removeBtn">REMOVE</button>
	<button type="submit" class="btn btn-primary goListBtn">GO LIST</button>
</div>

<%@ include file="../include/footer.jsp" %>
