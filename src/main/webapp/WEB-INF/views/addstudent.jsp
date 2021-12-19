<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!--페이지 디렉티브,컨텐트타입  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input,textarea{
		border: 3px solid black;
		
	}
	td{
	text-decoration: underline;
	}
</style>
</head>
<body>

<h1>Add New Post</h1>
<form action="add_ok" method="get"> <!-- 액션태그 , 겟 방식으로 addok 동작   -->
<table id="add"> <!-- <td> 태그는 HTML 테이블에서 하나의 데이터 셀(data cell)을 정의할 때 사용합니다. -->
<!-- <tr><td>Category:</td><td><input type="text" name="category"/></td></tr> -->
<tr><td> Name:</td><td><input type="text" name="studentname"/></td></tr> <!-- text 타입의 인풋을 만듦. 
이름은 title  -->
<tr><td>Student_id:</td><td><input type="text" name="studentid"/></td></tr> <!-- 이름이 writer 인풋박스 만들어줌  -->
<tr><td>Graduate:</td><td><input type="radio" name="gradudate" value="yes"/>Yes
<input type="radio" name="gradudate" value="no"/>No

<tr><td>Age:</td><td><input type="text" name="age"/></td></tr>
<tr><td>MBTI:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<!--이름이 content 인 텍스트에리아 만들어줌  -->
</table> <!--  posts.jsp 링크. submit 타입. 값은 AddPost -->
<button type="reset">Reset</button>
<button type="button" onclick="location.href='list'">목록보기</button>
<button type="submit">등록하기</button>
</form>

</body>
</html>