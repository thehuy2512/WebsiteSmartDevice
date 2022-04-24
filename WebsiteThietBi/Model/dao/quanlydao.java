package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.quanlybean;

public class quanlydao {
	public quanlybean KTDNquanly(String username,String password) throws Exception{
		String sql ="select * from quanly where tendangnhap=? and matkhau=?";
		
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,username);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();

		if (rs.next()==false) {
			rs.close();
			st.close();
			cn.cn.close();
			return null;
		}
			
		else {
		
			quanlybean bean = new quanlybean(rs.getLong(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			
			rs.close();
			st.close();
			cn.cn.close();
			return bean;
			
		}
	}
}
