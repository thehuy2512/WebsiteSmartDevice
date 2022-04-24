package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.thuonghieubean;

public class thuonghieudao {
	public ArrayList<thuonghieubean> getThuonghieu() throws Exception{
		ArrayList<thuonghieubean> ds = new ArrayList<thuonghieubean>();
		String sql = "select * from thuonghieu";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st =cn.cn.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new thuonghieubean(rs.getString(1), rs.getString(2), rs.getString(3)));			
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
}
