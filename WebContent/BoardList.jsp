<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function search(){
		var keyword = document.getElementById("keyword").value;
		location.href="boardsearch?keyword="+keyword;
	}
	function sort(){
		location.href="boardsort";
	}
</script>
</head>
<body>
<h2>BoardList.jsp</h2>
	<input type="text" id="keyword" placeholder="검색어 입력">
	<button onclick="search()">검색</button>
<table border="1">
	<tr>
		<th>글번호</th> <th>글쓴이</th> <th>제목</th>
		<th>내용</th> <th>작성일자</th> <th>조회수</th>
		<th>첨부파일</th>
		<c:forEach var="board" items="${boardList}">
			<tr>
			<td>${board.bnumber}</td>
			<td>${board.bwriter}</td>
			<td><a href="boardview?bnumber=${board.bnumber}">${board.btitle}</a></td>
			<!-- 글 제목을 클릭 했을 때 boardview 주소로 가면서 bnumber를 가지고 가야함. -->
			<td>${board.bcontents}</td>
			<td>${board.bdate}</td>
			<td>${board.bhits}</td>
			<td>${board.bfilename}</td>
			</tr><br>
		</c:forEach>
	</table>
	<button onclick="location.href='BoardWrite.jsp'" >글쓰기</button>
	<button onclick="location.href='BoardWriteFile.jsp'" >글쓰기(파일)</button>
	<button onclick="sort()" >조회수 정렬</button>
</body>
</html>