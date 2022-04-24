package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class khachhangdao {
	public khachhangbean KTDN(String username,String password) throws Exception{
		String sql ="select * from khachhang where tendangnhap=? and matkhau=?";
		
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
		
			khachhangbean bean = new khachhangbean(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			
			rs.close();
			st.close();
			cn.cn.close();
			return bean;
			
		}
	}
	public khachhangbean KTDangKy(String username) throws Exception{
		String sql ="select * from khachhang where tendangnhap=?";
		
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,username);
		ResultSet rs = st.executeQuery();

		if (rs.next()==false) {
			rs.close();
			st.close();
			cn.cn.close();
			return null;
		}
			
		else {
		
			khachhangbean bean = new khachhangbean(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			System.out.println(bean);
			rs.close();
			st.close();
			cn.cn.close();
			return bean;
			
		}
	}
	public boolean themuser(String hoten, String diachi,String sdt, String tendangnhap,String matkhau)  throws Exception {	
		String sql ="insert into khachhang(tenkh,diachi,sdt,tendangnhap,matkhau) values(?,?,?,?,?)";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1,hoten);
			st.setString(2,diachi);
			st.setString(3,sdt);
			st.setString(4, tendangnhap);
			st.setString(5, matkhau);
			//ResultSet rs = st.executeQuery();
			return st.executeUpdate()>0;		
	}
	public ArrayList<khachhangbean> getKhachHang() throws Exception{
		ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();
		String sql="select * from khachhang";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
		
			khachhangbean bean = new khachhangbean(rs.getLong(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
			ds.add(bean);
		}	
			rs.close();
			st.close();
			cn.cn.close();
		return ds;			
	}
	public boolean doimatkhau(String tendangnhap,String matkhau)  throws Exception {	
		String sql ="update khachhang set matkhau=? where tendangnhap=?";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1, matkhau);
			st.setString(2, tendangnhap);
			//ResultSet rs = st.executeQuery();
			return st.executeUpdate()>0;		
	}
}
