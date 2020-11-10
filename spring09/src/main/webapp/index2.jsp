<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 style="color: red">게시판 검색입니다</h3>
	<a href="one.do?no=1">1번 게시판 검색 고고</a>
	<br>
	<a href="one.do?no=2">2번 게시판 검색 고고</a>
	<br>
	<a href="one.do?no=3">3번 게시판 검색 고고</a>

	<p>${id}</p>
	<hr color="red">

	<!-- 태그 사이에 내용(contents)이 비어있음. 빈태그 -->
	<sql:setDataSource url="jdbc:mysql://localhost:3366/shop"
		driver="com.mysql.jdbc.Driver" user="root" password="1234"
		scope="application" var="db" />
	<sql:query var="list" dataSource="${db}">
		select * from reply
	</sql:query>

	<c:forEach items="${list.rows}" var="vo">
		${vo} <br>	
		- content: ${vo.content}, no: ${vo.no}
	</c:forEach>

	<sql:update dataSource="${db}">
		insert into bbs(title,content,writer) values (?, ? ,?)
		<sql:param value="${param.title}"/>
		<sql:param value="${ param.content}"/>
		<sql:param value="${param.writer}"/>
		
	</sql:update>
	<br>
	<form>
	제목 <input type="text" name="title">
	내용 <input type="text" name="content">
	작성자 <input type="text" name="writer">
	<button type="submit">확인</button>
	</form>

	<!-- if  -->
	<c:set var="id"></c:set>
	<c:choose>
	<c:when test="${id == apple}">
		<br><button>안녕 난 세션값이 있으면 생기는 버튼이야!!</button>

	</c:when>
	
	<c:otherwise>
		<br><button>안녕 나는 세션이 없을때 나오는 버튼이야</button>
	</c:otherwise>
	</c:choose>
	
	
</body>
</html>