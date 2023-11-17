<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 있냥?!(자유게시판) </title>
</head>
	<link rel="shortcut icon" href="../resources/project/image/favicon/favicon.ico">
<body>
	
	<div class="container">
		<div>
			<h3><a href="?page=1"> 자유게시판 </a></h3>
		</div>
		
		<div>
			<table class="table table-striped table-hover" border="1">
			
				<thead class="table-dark">
					<tr>
						<th> 말머리 </th>
						<th> 제목 </th>
						<th> 작성자 </th>
						<th> 작성일 </th>
						<th> 수정일 </th>
						<th> 조회수 </th>
						<th> 관리 </th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="item" items="${boardlist}">
						<tr>
							<th> ${item.boardId} </th>
							<th> ${item.boardSj} </th>
							<th> ${item.userId} </th>
							<th> <fmt:formatDate value="${item.boardFrst}" pattern="yyyy.MM.dd"/> </th>
							<th> <fmt:formatDate value="${item.boardLast}" pattern="yyyy.MM.dd"/> </th>
							<th> ${item.boardCo} </th>
							<th> <a href="delete/${item.boardId}" class="btn btn-danger btn-sm"> <i class="bi bi-trash"></i> </a> <a href="update/${item.boardId}" class="btn btn-warning btn-sm"> <i class="bi bi-recycle"></i> </a> </th>
						</tr>
					</c:forEach>
				</tbody>
					
			</table>
		</div>
		<div class="mb-5">
			<a href="add" class="btn btn-primary btn-sm"> <i class="bi bi-file-earmark-plus"></i> </a>
		
			<!-- <a href="dummy" class="btn btn-warning btn-sm"> 대량 등록 </a>
		
			<a href="init" class="btn btn-danger btn-sm"> 초기화 </a> -->
			
			<a href="../homes" class="btn btn-secondary btn-sm">이전으로</a>
		</div>
	</div>

</body>
</html>