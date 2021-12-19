<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student board</title>
<style>
/* 
html {

   background: linear-gradient(to bottom, #8c83af, #FFFFFF);

  height: auto !important;

}

body {

background: transparent;

animation: snow 20s linear infinite;

background-image:url('https://cdn.discordapp.com/attachments/460145928850898945/515694458633846831/snow.png'), url("https://cdn.discordapp.com/attachments/460145928850898945/515694460668084274/snow3.png"), url("https://cdn.discordapp.com/attachments/460145928850898945/515694462278828073/snow2.png");

}


@keyframes snow {

0% {background-position: 0px 0px, 0px 0px, 0px 0px;}

100% {background-position: 500px 1000px, 400px 400px, 300px 300px;}

} */
body {
	background-image: url('https://cdn.crowdpic.net/list-thumb/thumb_l_8582BAAFFC1167ABBC20F9373E649C4A.jpg');
	/* background-repeat: no-repeat;   */
	 /* background-image: url('https://png.pngtree.com/png-clipart/20201117/ourmid/pngtree-christmas-tree-branch-decoration-with-realstic-gift-box-png-image_2438283.jpg'); */
}
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
  color: black;
  font-size: 20px;
}
/* #list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;} */
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
 font-size: 20px;
  background-color: green;
  color: black;
}
</style>
<script>
	function delete_ok(id){ //딜리트 펑션 자바스크립트로 
		var a = confirm("정말로 삭제하겠습니까?");
		/* alt id; */
		/* alert(id);
		alert("./deletepost/{id}" + seq);
 */		if(a) location.href="./deletestudent/" + id; // 여기 *컨트롤러 밸류 : "/board//deletepost/{id}"
	}
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style = "text-align: center"> INFORMATION </h1>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>StudentID</th>
	<th>Graduate</th>
	<th>age</th>
	<th>  MBTI  </th>
	<th>Date</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.studentname}</td>
		<td>${u.studentid}</td>
		<td>${u.gradudate}</td>
		<td>${u.age}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>

		<td><a href="./edit/${u.seq}">Edit</a></td><!--  //여기  -->
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td><!--  //여기  --> 
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add1'">Add New Post</button>
</body>
</html>