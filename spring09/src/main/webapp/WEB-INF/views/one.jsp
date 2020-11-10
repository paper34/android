<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#reply').click(function() {
			contentValue = $('#content').val()
			$.ajax({

				url : "create.do",
				data : {
					content : contentValue,
					original : '${one.no}', // one.get~~
					writer : '${id}'

				},

				success : function(result) {
					$('#t3').append(result)
					location.reload()
				}

			})

		})

	})
</script>
</head>
<body>
	<h3>게시물 하나 검색화면입니다.</h3>
	<hr color="red">
	<table>
		<tr>
			<td style="color: blue; width: 150px; background: pink">게시물 번호</td>
			<td style="color: black; width: 250px; background: gray">${one.no}</td>
		</tr>
		<tr>
			<td style="color: blue; width: 150px; background: pink">게시물 제목</td>
			<td style="color: black; width: 250px; background: gray">${one.title}</td>
		</tr>
		<tr>
			<td style="color: blue; width: 150px; background: pink">게시물 내용</td>
			<td style="color: black; width: 250px; background: gray"
				height="100px">${one.content}</td>
		</tr>
		<tr>
			<td style="color: blue; width: 150px; background: pink">게시물 작성자</td>
			<td style="color: black; width: 250px; background: gray">${one.writer}</td>
		</tr>
	</table>

	<hr color="green">
	댓글
	<input id="content">
	<button id="reply">댓글달기</button>
	<div id="d2" style="width: 300px; height: 100px">

		<c:forEach items="${list}" var="vo" varStatus="status">
			<table style="width: 450px; height: 50px" id="t2">
				<tr align="center">
					<td style="width: 50px; background: green">${status.index + 1}</td>
					<td style="width: 300px; background: yellow">${vo.content}</td>
					<td style="width: 100px; background: gray">${vo.writer}</td>
					<td><a href="delete.do?no=${vo.no}&original=${vo.original}">
							<button style="background: yellow">삭제</button>
					</a></td>
				</tr>
			</table>
		</c:forEach>

	</div>
		
		
	<a href="../../mvc05/index2.jsp">첫페이지로</a>	
</body>
</html>