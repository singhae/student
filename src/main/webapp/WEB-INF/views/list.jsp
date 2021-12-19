<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #green;}
#list tr:hover {background-color: #green;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){ //딜리트 펑션 자바스크립트로 
		var a = confirm("정말로 삭제하겠습니까?");
		/* alt id; */
		/* alert(id);
		alert("./deletepost/{id}" + seq);
 */		if(a) location.href="./deletepost/" + id; // 여기 *컨트롤러 밸류 : "/board//deletepost/{id}"
	}
</script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Gender</th>
	<th>Content</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getWriter()}</td>
		<td>${u.getContent()}</td>

		<td><a href="./edit/${u.getSeq()}">Edit</a></td><!--  //여기  -->
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td><!--  //여기  -->
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">Add New Post</button>
</body>
</html>