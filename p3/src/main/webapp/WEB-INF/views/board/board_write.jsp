<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� ���</title>
<link href="<c:url value='/resources/css/table.css' />" rel="stylesheet">
<link href="<c:url value='/resources/css/board.css' />" rel="stylesheet">
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-3.5.1.min.js' />"></script>
<link>
</head>
<body>
	<div class="container">
		<h1 style="text-align: center;">�����Խ��� �۾���</h1>
		<form action="<c:url value='/write.do' />" method="post">
			<table class="type08"
				style="text-align: center; margin-left: auto; margin-right: auto; margin-top: auto;">
				<tbody>
					<tr>
						<th scope="row" colspan="2">�۾���</th>
					</tr>
					<tr>
						<th scope="row">�� ��</th>
						<td style="text-align: left;"><input type="text" name="title"></td>
					</tr>
					<tr>
						<th scope="row">�� �� ��</th>
						<td style="text-align: left;"><input type="text" name="name"></td>
					</tr>
					<tr>
						<th scope="row">�� ��</th>
						<td><textarea rows="20" cols="50" name="content"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><a class="btn green small">���</a></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
	<script type="text/javascript">
		$('a').click(function() {
			if($('input[name=title]').val() == ""){
				alert("������ �Է��ϼ���");
				$('input[name=title]').focus();
			}else if($('input[name=name]').val() == ""){
				alert("�ۼ��ڸ� �Է��ϼ���");
				$('input[name=name]').focus();
			}else{
				$('form').submit();
			}
					
		});
	</script>
</body>
</html>