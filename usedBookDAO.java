package usedBookProject;

import java.sql.Connection;
/*import java.sql.DriverManager;*/
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.PreparedStatement;

public class usedBookDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public void connect_cp() {
		
		try {
			
			Context initctx = new InitialContext();
			
			//Context.xml 접근
			Context envctx = (Context)initctx.lookup("java:/comp/env");
			
			//커넥션 풀에 접근 (커넥션을 1개 얻기위해서)
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			
			//커넥션을 하나 빌려오기 
			conn = ds.getConnection();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	public void disconnect() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void insertBook(usedBookDO udo) {
		connect_cp();
		
		String sql = "insert into usedbook (ISBN, title, author, category, published_date, price, `condition`, `deal`, description) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, udo.getISBN());
			pstmt.setString(2, udo.getTitle());
			pstmt.setString(3, udo.getAuthor());
			pstmt.setString(4, udo.getCategory());
			pstmt.setString(5, udo.getPublished_date());
			pstmt.setString(6, udo.getPrice());
			pstmt.setString(7, udo.getCondition());
			pstmt.setString(8, udo.getDeal());
			pstmt.setString(9, udo.getDescription());
		
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		disconnect();
	}
	
	
	
	public ArrayList<usedBookDO> getAllBook() {
		connect_cp();
		ArrayList<usedBookDO> aList = new ArrayList<usedBookDO>();

		try {
			String sql = "select * from usedbook";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				usedBookDO udo = new usedBookDO();
				udo.setNum(rs.getInt(1));
				udo.setISBN(rs.getString(2));
				udo.setTitle(rs.getString(3));
				udo.setAuthor(rs.getString(4));
				udo.setCategory(rs.getString(5));
				udo.setPublished_date(rs.getString(6));
				udo.setPrice(rs.getString(7));
				udo.setCondition(rs.getString(8));
				udo.setDeal(rs.getString(9));
				udo.setDescription(rs.getString(10));
				
				aList.add(udo);
			}
			
			disconnect();
			
		}	catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return aList;
			
		}
	
	public usedBookDO getOneBook(int num) {
		connect_cp();
		usedBookDO udo = new usedBookDO();
		
		try {
			
			String sql = "select * from usedbook where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				udo.setNum(rs.getInt(1));
				udo.setISBN(rs.getString(2));
				udo.setTitle(rs.getString(3));
				udo.setAuthor(rs.getString(4));
				udo.setCategory(rs.getString(5));
				udo.setPublished_date(rs.getString(6));
				udo.setPrice(rs.getString(7));
				udo.setCondition(rs.getString(8));
				udo.setDeal(rs.getString(9));
				udo.setDescription(rs.getString(10));
			}
			
			disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return udo;
	}
	
	public usedBookDO getOneCategory(String category) {
		connect_cp();
		usedBookDO udo = new usedBookDO();
		
		try {
			
			String sql = "select * from usedbook where category=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				udo.setNum(rs.getInt(1));
				udo.setISBN(rs.getString(2));
				udo.setTitle(rs.getString(3));
				udo.setAuthor(rs.getString(4));
				udo.setCategory(rs.getString(5));
				udo.setPublished_date(rs.getString(6));
				udo.setPrice(rs.getString(7));
				udo.setCondition(rs.getString(8));
				udo.setDeal(rs.getString(9));
				udo.setDescription(rs.getString(10));
			}
			
			disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return udo;
	}
	
	public void modifyBook(usedBookDO udo) {
		connect_cp();
		
		try {
			String sql = "update usedbook set ISBN=?, title=?, author=?, category=?, published_date=?, price=?, `condition`=?, `deal`=?, description=? where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, udo.getISBN());
			pstmt.setString(2, udo.getTitle());
			pstmt.setString(3, udo.getAuthor());
			pstmt.setString(4, udo.getCategory());
			pstmt.setString(5, udo.getPublished_date());
			pstmt.setString(6, udo.getPrice());
			pstmt.setString(7, udo.getCondition());
			pstmt.setString(8, udo.getDeal());
			pstmt.setString(9, udo.getDescription());
			pstmt.setInt(10, udo.getNum());
			pstmt.executeUpdate();
			
			disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	public void deleteBook(int num) {
		connect_cp();
		
		try {
			String sql= "delete from usedbook where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	


	}
	
	

