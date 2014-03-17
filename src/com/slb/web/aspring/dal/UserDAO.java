package com.slb.web.aspring.dal;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.slb.web.aspring.IUserDAO;
import com.slb.web.aspring.model.UserDto;

/**
 * ���ݷ��ʲ�
 * @author GISApe
 * @date 2014/01/18
 * 
 */
@Repository
@Transactional
public class UserDAO implements IUserDAO {
	
	@Resource
	private JdbcTemplate jdbcTemplate; 

	/**
	 * �û�����
	 * @param UserDto
	 * @return
	 */
	@Override
	public void save(UserDto user) throws Exception {
		String sql = "INSERT INTO ACCOUNT (USER_ID, USER_CODE, USER_NAME, PWD, STATE) "
				+ "VALUES((SELECT MAX(ACCOUNT.USER_ID)+1 FROM ACCOUNT), ?, ?, ?, ?)";
		jdbcTemplate.update(sql,new Object[] { user.getUserCode(), user.getUserName(), 
				user.getPassWord(),user.getState() });

/*
 * 		Test NullPonterException
 */

//		List<String> list = null;
//		list.add("");
		
	}

	/**
	 * �û�ɾ��
	 * @param UserDto
	 * @return
	 */
	@Override
	public void delete(UserDto user) throws Exception {
		/*
		 * code 
		 */
	}
	
	/**
	 * �û�����
	 * @param UserDto
	 * @return 
	 */
	@Override
	public void update(UserDto user) throws Exception {
		/*
		 * code
		 */
	}
	
	/**
	 * ��ѯ�����û� 
	 * @param 
	 * @return List
	 */
	@Override
	public List searchAll() throws Exception {
		String sql = "SELECT * FROM ACCOUNT ORDER BY USER_ID DESC";
		List list = jdbcTemplate.queryForList(sql);
		
		return list;
	}

}
