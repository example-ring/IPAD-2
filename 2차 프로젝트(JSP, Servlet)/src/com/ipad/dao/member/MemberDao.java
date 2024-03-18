package com.ipad.dao.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

import com.ipad.dto.member.MemberDto;

public class MemberDao {

	private DataSource dataSource;
	private Connection connection;
	private PreparedStatement preparedStatement;

	private static MemberDao instance;

	public MemberDao() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataSource = (DataSource) envContext.lookup("jdbc/Oracle11g");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static MemberDao getInstance() {
		if (instance == null) {
			instance = new MemberDao();
		}

		return instance;
	}

	
	public int insertMember(MemberDto dto) {
		int ri = 0;
		try {
			connection = dataSource.getConnection();
			String query = "INSERT INTO MEMBER (id, pw, email, name, addr, pin, year, month, day) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, dto.getId());
			preparedStatement.setString(2, dto.getPw());
			preparedStatement.setString(3, dto.getEmail());
			preparedStatement.setString(4, dto.getName());
			preparedStatement.setString(5, dto.getAddr());
			preparedStatement.setString(6, dto.getPin());
			preparedStatement.setString(7, dto.getYear());
			preparedStatement.setString(8, dto.getMonth());
			preparedStatement.setString(9, dto.getDay());

			preparedStatement.executeUpdate();
			ri = 1;

			System.out.println("insertMember 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return ri;

	}

//	public ArrayList<MemberDto> membersAll() {
//		ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();
//		Connection connection = null;
//		PreparedStatement preparedStatement = null;
//		ResultSet resultSet = null;
//		String query = "SELECT * FROM MEMBER";
//
//		try {
//			connection = dataSource.getConnection();
//			preparedStatement = connection.prepareStatement(query);
//			resultSet = preparedStatement.executeQuery();
//
//			while (resultSet.next()) {
//
//				String id = resultSet.getString("id");
//				String pw = resultSet.getString("pw");
//				String name = resultSet.getString("name");
//				String email = resultSet.getString("email");
//				String addr = resultSet.getString("addr");
//				String pin = resultSet.getString("pin");
//				String year = resultSet.getString("year");
//				String month = resultSet.getString("month");
//				String day = resultSet.getString("day");
//
//				MemberDto mDto = new MemberDto(id, pw, name, email, addr, pin, year, month, day);
//				dtos.add(mDto);
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("멤버 리스트 메소드 실행 안 돼~");
//		} finally {
//			try {
//				resultSet.close();
//				preparedStatement.close();
//				resultSet.close();
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//
//		return dtos;
//	}

	public int confirmId(String id) {

		int ri = 0;

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String query = "SELECT ID FROM MEMBER WHERE ID = ?";

		try {
			connection = dataSource.getConnection();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				ri = 1;
			} else {
				ri = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				resultSet.close();
				preparedStatement.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return ri;
	}

	public int userCheck(String id, String pw) {

		int ri = 0;
		String dbPw;

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String query = "SELECT PW FROM MEMBER WHERE ID = ?";

		try {
			connection = dataSource.getConnection();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				dbPw = resultSet.getString("pw");
				if (dbPw.equals(pw)) {
					ri = 1;
				} else {
					ri = 0;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				resultSet.close();
				preparedStatement.close();
				connection.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}

	

	public MemberDto getMember(String id) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String query = "SELECT * FROM MEMBER WHERE ID = ?";
		MemberDto mDto = null;

		try {

			connection = dataSource.getConnection();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();

		

			if (resultSet.next()) {

				mDto = new MemberDto();
				mDto.setId(resultSet.getString("id"));
				mDto.setPw(resultSet.getString("pw"));
				mDto.setName(resultSet.getString("name"));
				mDto.setEmail(resultSet.getString("email"));
				mDto.setAddr(resultSet.getString("addr"));
				mDto.setPin(resultSet.getString("pin"));
				mDto.setYear(resultSet.getString("year"));
				mDto.setMonth(resultSet.getString("month"));
				mDto.setDay(resultSet.getString("day"));

				System.out.println(mDto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				resultSet.close();
				preparedStatement.close();
				connection.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return mDto;

	}

	public int updateMember(MemberDto mDto) {

		int ri = 0;

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "UPDATE MEMBER SET PW=?, EMAIL=?, ADDR=? WHERE ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, mDto.getPw());
			preparedStatement.setString(2, mDto.getEmail());
			preparedStatement.setString(3, mDto.getAddr());
			preparedStatement.setString(4, mDto.getId());

			ri = preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				preparedStatement.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return ri;
	}

	public MemberDto findId(String name, String email, String pin) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		MemberDto memberDto = null;

		try {

			connection = dataSource.getConnection();
			String query = "select * from member where name = ? and email = ? and pin = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, pin);

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				memberDto = new MemberDto();
				memberDto.setId(resultSet.getString("id"));
				memberDto.setPw(resultSet.getString("pw"));
				memberDto.setEmail(resultSet.getString("email"));
				memberDto.setName(resultSet.getString("name"));
				memberDto.setAddr(resultSet.getString("addr"));
				memberDto.setPin(resultSet.getString("pin"));
				memberDto.setYear(resultSet.getString("year"));
				memberDto.setMonth(resultSet.getString("month"));
				memberDto.setDay(resultSet.getString("day"));

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			try {
				connection.close();
				preparedStatement.close();
				resultSet.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return memberDto;
	}

	public MemberDto findPw(String id, String name, String email) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		MemberDto memberDto = null;

		try {
			connection = dataSource.getConnection();
			String query = "select * from member where id = ? and name = ? and email = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, email);

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				memberDto = new MemberDto();
				memberDto.setId(resultSet.getString("id"));
				memberDto.setPw(resultSet.getString("pw")); // 비밀번호 정보 가져오기
				memberDto.setEmail(resultSet.getString("email"));
				memberDto.setName(resultSet.getString("name"));
				memberDto.setAddr(resultSet.getString("addr"));
				memberDto.setPin(resultSet.getString("pin"));
				memberDto.setYear(resultSet.getString("year"));
				memberDto.setMonth(resultSet.getString("month"));
				memberDto.setDay(resultSet.getString("day"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
				preparedStatement.close();
				resultSet.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return memberDto;
	}

	public int updatePw(MemberDto mDto) {

		int result = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {

			connection = dataSource.getConnection();
			String query = "UPDATE MEMBER SET PW=? WHERE ID=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, mDto.getPw());
			preparedStatement.setString(2, mDto.getId());

			result = preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				preparedStatement.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return result;
	}
	
	public int deleteMember(String id) {
	    int result = 0;

	    Connection connection = null;
	    PreparedStatement preparedStatement = null;

	    try {
	        connection = dataSource.getConnection();

	      
	        String query = "DELETE FROM MEMBER WHERE ID=?";
	        preparedStatement = connection.prepareStatement(query);
	        preparedStatement.setString(1, id);

	        result = preparedStatement.executeUpdate();

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (preparedStatement != null)
	                preparedStatement.close();
	            if (connection != null)
	                connection.close();
	        } catch (Exception e2) {
	            e2.printStackTrace();
	        }
	    }

	    return result;
	}

}