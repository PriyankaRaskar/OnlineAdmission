package admission.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Date; 

import java.util.Set;

import admission.dao.DBConnection;
import admission.entity.StudentField;

     public class StudentDAO {

		public static boolean registerStudent(String sname,String mno,String email,String address,String cet,String university, String pwd) {
			boolean status = false;

			String sql = "insert into admission.student(sname,mno,email,address,cet,university,pwd) values (?,?,?,?,?,?,?)";
			PreparedStatement ps = null;
			Connection con = null;
			try {
				con = DBConnection.getConnection();
				ps = con.prepareStatement(sql);
				ps.setString(1, sname);
				
				ps.setString(2, mno);
				ps.setString(3, email);
				ps.setString(4, address);
				ps.setString(5, cet);
				ps.setString(6, university);
				ps.setString(7, pwd);
				ps.executeUpdate();

				status = true;
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					ps.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}

			}

			return status;
		}

}
    