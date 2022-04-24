package dao;

import java.sql.Statement;
import java.util.ArrayList;

import bean.hoadonbean;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class hoadondao {
	public long themHoadon(long makh,long thanhtien,boolean trangthai) throws Exception{
		String sql="insert into hoadon(makh,thanhtien,trangthai) values(?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		st.setLong(1, makh);
		st.setLong(2, thanhtien);
		st.setBoolean(3, trangthai);
		int affectedRows = st.executeUpdate();
		if(affectedRows == 0)
			return (long)-1;
		try (ResultSet generatedKeys = st.getGeneratedKeys()){
			if(generatedKeys.next()) {
				return generatedKeys.getLong(1);
			}
			else return (long)-2;
		}
	}
	public ArrayList<hoadonbean> getHoadon(long makh) throws Exception{
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		String sql = "select * from hoadon where makh=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st =cn.cn.prepareStatement(sql);
		st.setLong(1, makh);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new hoadonbean(rs.getLong(1), rs.getLong(2), rs.getDate(3), rs.getLong(4), rs.getBoolean(5)));			
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public ArrayList<hoadonbean> getAllHoadon() throws Exception{
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		String sql = "select * from hoadon order by ngaymua desc";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st =cn.cn.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new hoadonbean(rs.getLong(1), rs.getLong(2), rs.getDate(3), rs.getLong(4), rs.getBoolean(5)));			
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public boolean xacnhanHD(long mahd) throws Exception{
		String sql="update hoadon set trangthai='true' where mahd=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setLong(1, mahd);
		
		return  st.executeUpdate()>0;
		
	}
}	