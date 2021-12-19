<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<style>
	input,textarea{
		border: 3px solid black;
		
	}
	
	body {
	background-color: #1e3932;
	color:white;
	font-size: 20px;
	
} 
</style>	
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
	<form:form commandName="studentVO" action="../editok" method="GET"> 

		<form:hidden path="seq" /> 

		<table id="edit">
			<tr>
				<td>Name:</td>
				<td><form:input path="studentname" /></td> 
				<!-- path에 해당되는 값은 도메인 모델의 Bean 객체를 의미한다. 
				input는 path를 지정해주면 설정한 문자열은 id와 name속성으로 지정되고 
				boardVO 안에 들어있는 프로퍼티와 같은 이름을 찾아서 자동으로 value에 주입해주게 된다.-->
			</tr>
			<tr>
				<td>Student it:</td>
				<td><form:input  path="studentid" /></td>
				<!-- boardVO 안에 들어있는 writer 를 찾아서  자동으로 value에 주입해주게 된다. -->
			</tr>
			<tr>
				<td>Graduate :</td>
				<td><form:radiobutton path="gradudate" value="yes" label="Yes"/></td>
				
				<!-- boardVO 안에 들어있는 writer 를 찾아서  자동으로 value에 주입해주게 된다. -->
			</tr>
			<tr>
				<td>Age:</td>
				<td><form:input  path="age" /></td>
				<!-- boardVO 안에 들어있는 writer 를 찾아서  자동으로 value에 주입해주게 된다. -->
			</tr>
			<tr>
				<td>MBTI:</td>
				<td><form:textarea cols="50" rows="5"
						name="content" path="content" /></td>
						<!-- boardVO 안에 들어있는 content 를 찾아서  자동으로 value에 주입해주게 된다. -->
			</tr>

			<tr>
				<td><input type="submit" value="수정하기" /></td>
			</tr>
			<tr>
				<td><input type="button" value="취소하기" onclick="history.back()" /></td>
			</tr>
			<tr><input type="reset" value="RESET" /></td></tr>
			<%-- 버튼 타입의, 클릭이벤트 history.back() 호출됨. 주석처리 제대로 하기^^.... --%>
		</table>
	</form:form>

</body>
</html>