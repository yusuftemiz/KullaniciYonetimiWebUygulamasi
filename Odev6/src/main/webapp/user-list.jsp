<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Kullanıcı Yönetimi Uygulaması</title>
<style>
a:link, a:visited {
	background-color: white;
	color: black;
	border: 2px solid green;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: green;
	color: white;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #04AA6D;
	color: white;
}
</style>

</head>
<body>
	<center>
		<h1>Kullanıcı Yönetimi</h1>
		<h2>
			<a href="new">Yeni Kullanıcı Ekle</a> &nbsp;&nbsp;&nbsp; <a
				href="list">Tüm Kullanıcı Listesi</a>

		</h2>
	</center>
	<div align="center">
		<table id="customers">
			<caption>
				<h2>Kullanıcı Listesi</h2>
			</caption>
			<tr>
				<th>No.</th>
				<th>İsim</th>
				<th>Email</th>
				<th>Ülke</th>
				<th>İşlemler</th>
			</tr>
			<c:forEach var="user" items="${listUser}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.country}" /></td>
					<td><a href="edit?id=<c:out value='${user.id}' />">Düzenle</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="delete?id=<c:out value='${user.id}' />">Sil</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
