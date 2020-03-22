<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>家計簿アプリケーション</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/fixed.css">
<script type="text/javascript">
	function check() {
		if (signInForm.name.value.match(/^\w{3,10}$/) == null){
			alert("ユーザー名は３～１０文字の英数字で入力してください");
			return false;
		} else if (signInForm.pass.value.match(/^\w{5,10}$/) == null){
			alert("パスワードは５～１０文字の英数字で入力してください");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>

<body>
	<h1>我が家の家計簿へようこそ！</h1>
	<h2>見たくない現実がそこにはある</h2>
	<form action="/householdAccountsSystem/SignInServlet" method="post" name="signInForm">
	NAME : <br>
	<input type="text" name="name" placeholder="ユーザー名"><br>
	PASS : <br>
	<input type="password" name="pass"  placeholder="パスワード"><br>
	<input type="submit" value="サインアップ" onclick="return check()">
	</form>
	<h3><a href="/householdAccountsSystem">ログイン画面へ戻る</a></h3>

<script type="text/javascript" src="/householdAccountsSystem/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/householdAccountsSystem/js/bootstrap.min.js"></script>
</body>
</html>