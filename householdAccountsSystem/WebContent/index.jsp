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
	//入力値チェック
	function check() {
		if (loginForm.name.value == ""){
			alert("ユーザー名を入力してください");
			return false;
		} else if (loginForm.pass.value == ""){
			alert("パスワードを入力してください");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>

<body>
	<h1>我が家の家計簿へようこそ！</h1>
	<h2>さあ、見たくない現実を見ていこう</h2>
	<form  action="/householdAccountsSystem/LoginServlet" method="post" name="loginForm">
	NAME<br>
	<input type="text" name="name" placeholder="ユーザー名"><br>
	PASS<br>
	<input type="password" name="pass"  placeholder="パスワード"><br>
	<input type="submit" value="ログイン" onclick="return check()">
	</form>
	<p>未登録の場合は<a href="/householdAccountsSystem/SignInServlet">サインアップ</a>してください</p>

<script type="text/javascript" src="/householdAccountsSystem/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/householdAccountsSystem/js/bootstrap.min.js"></script>
</body>
</html>