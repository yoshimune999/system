//USERテーブルにアクセスしユーザー情報を取ってくるDAO


package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Account;
import entity.Login;

public class UserDAO {
	//DB接続に使用する情報
	private final String JDBC_URL = "jdbc:h2:tcp://localhost/~/houseHold";
	private final String DB_USER = "sa";
	private final String DB_PASS = "";

	public Account findByUser(Login login) {
		//accountを定義してnullを入れておく
		Account account = null;

		//DBへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
			//SELECT文を準備
			String sql = "SELECT NAME,PASS,ID FROM USER WHERE NAME = ? AND PASS = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, login.getUserName());
			pStmt.setString(2, login.getPass());

			//SELECT文を実行し、結果表をrsに格納
			ResultSet rs = pStmt.executeQuery();
			//一致したuserが存在した場合、そのユーザーを表すAccountインスタンスを生成する
			if (rs.next()) {
				//rsからデータを取得
				String userName = rs.getString("NAME");
				String pass = rs.getString("PASS");
				int id = rs.getInt("ID");
				//データをインスタンスに格納
				account = new Account(userName, pass, id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		//見つかったuserまたはnullを返す（つまりaccountがトグルになっている）
		return account;
	}
}
