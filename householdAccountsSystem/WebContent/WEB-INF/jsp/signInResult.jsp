<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="entity.SignIn" %>
 <%
 	String em = (String) request.getAttribute("em");
 	SignIn signInUser = (SignIn) request.getAttribute("signInUser");
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>家計簿アプリケーション</title>
</head>
<body>
	<% if(em != null) {%>
	<p><%= em %></p><br>
	<a href="/householdAccountsSystem/SignInServlet" >入力画面へ戻る</a>


	<% } else if(signInUser == null) {%>
	<p>入力されたユーザー名はすでに利用されています</p>
	<a href="/householdAccountsSystem/SignInServlet" >入力画面へ戻る</a>


	<% } else { %>
	<p><%= signInUser.getUserName() %>さん、登録完了しました。</p>
	<h3><a href="/householdAccountsSystem">ログイン画面へ戻る</a></h3>
	<% } %>
</body>
</html>