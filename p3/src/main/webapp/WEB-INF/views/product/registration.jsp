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
	        	   <option>==����==</option>
				   <option value="0">�ѽ�</option>
				   <option value="1">���</option>
				</select>
	        </td>
	        
	        <td>
	           <input type="text" name="dishname" placeholder="�����̸��� �Է��ϼ���.">
	        </td>
	        <td>
	           <input type="number" name="price" placeholder="���İ����� �Է��ϼ���.">
	        </td>
	        <td>
	         	<input type="text" name="recipe" placeholder="��������� �Է��ϼ���.">
	        </td>
	        <td>
	         	<input type="number" name="cnt" placeholder="���İ����� �Է��ϼ���.">
	        </td>
	      </tr>
	      <tr>
	        <td>
	          ū�̹��� : <input type="file" name="image1" value="���ϼ���">
	        </td>
	        <td>
	          �����̹���1 : <input type="file" name="image2" value="���ϼ���">
	        </td>
	        <td>
	          �����̹���2 : <input type="file" name="image3" value="���ϼ���">
	        </td>
	        <td>
	          �����̹���3 : <input type="file" name="image4" value="���ϼ���">
	        </td>
	        <td>
	          �����̹���4 : <input type="file" name="image5" value="���ϼ���">
	        </td>
	      </tr>
	      <tr>
	        <td colspan="5" align="center">
	           <input type="submit" value="������">
	        </td>
	      </tr>
	    </table>
	  </form>
	  
	</div>
</body>
</html>