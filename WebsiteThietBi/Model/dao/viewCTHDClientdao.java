package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.viewCTHDClient;

public class viewCTHDClientdao {
	public ArrayList<viewCTHDClient> getCTHD (long mahd) throws Exception{
			ArrayList<viewCTHDClient> ds = new ArrayList<viewCTHDClient>();
			String sql = "select * from viewCTHDClient where mahd=?";
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st =cn.cn.prepareStatement(sql);
			st.setLong(1, mahd);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				ds.add(new viewCTHDClient(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getLong(4), rs.getString(5), rs.getLong(6), rs.getLong(7)));
			}
			rs.close();
			st.close();
			cn.cn.close();
			return ds;
		}
	
}
