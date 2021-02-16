<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
	  <form action="<c:url value='/regist.do'/>" enctype="multipart/form-data" method="post">
	    <input type="hidden" name="dishnum"  value="<c:out value='${totalCount }'/>">
	    <table border="1">
	      <tr>
	        <td>
	        	<select name="foodkind">
	        	   <option>==선택==</option>
				   <option value="0">한식</option>
				   <option value="1">양식</option>
				</select>
	        </td>
	        <td>
	           <input type="text" name="dishname" placeholder="음식이름을 입력하세요.">
	        </td>
	        <td>
	           <input type="number" name="price" placeholder="음식가격을 입력하세요.">
	        </td>
	      </tr>
	      <tr>
	        <td>
	         	<input type="text" name="recipe" placeholder="음식재료을 입력하세요.">
	        </td>
	        <td>
	         	<input type="number" name="cnt" placeholder="음식갯수을 입력하세요.">
	        </td>
	        <td>
	          <input type="file" name="image" value="파일선택">
	        </td>
	      </tr>
	      <tr>
	        <td colspan="3" align="center">
	           <input type="submit" value="보내기">
	        </td>
	      </tr>
	    </table>
	  </form>
	  
	</div>
</body>
</html>