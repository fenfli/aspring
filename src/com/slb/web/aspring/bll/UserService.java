package com.slb.web.aspring.bll;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.slb.web.aspring.IUserDAO;
import com.slb.web.aspring.model.UserDto;

/**
 * ÒµÎñÂß¼­²ã
 * @author GISApe
 * @date 2014/01/18
 *
 */
@Service
public class UserService {
	
	@Resource
	private IUserDAO getUserDao = null;
	
	public void save(UserDto user) throws Exception {
		getUserDao.save(user);
	}
	
	public List query() throws Exception {
		return getUserDao.searchAll();
	}
}
