<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<tr align="center">
	<td style="width: 50px; background: green">${status.index + 1}</td>
	<td style="width: 300px; background: yellow">${replyVO.content}</td>
	<td style="width: 100px; background: gray">${replyVO.writer}</td>
	<td><a href="delete.do?no=${replyVO.no}&original=${replyVO.original}">
			<button style="background: yellow">삭제</button>
	</a></td>
</tr>