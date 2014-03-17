package com.slb.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.slb.web.aspring.bll.UserService;
import com.slb.web.aspring.model.UserDto;

/**
 * 用户操作控制器
 * @author GISApe
 * @date 2014/01/23
 * 
 */
@Controller
@RequestMapping("user")
public class UserController {

	private static Logger _logger = Logger.getLogger(UserController.class);
	
	@Resource
	private UserService userService = null;
	
	@RequestMapping("usersave")
	@ResponseBody
    public String userSave(@RequestBody UserDto dto) throws Exception {
		_logger.debug("User Save start...");
		
    	try {
    		userService.save(dto);
    		
    		_logger.debug("User Save end");
    		
    	} catch (Exception e) {
    	
    		_logger.debug(e.getMessage());
    		
    		throw e;
    	}
    	// 返回json格式, 跳转到success方法, 否则虽然成功, 但仍然进入error
    	return "{\"success\": true}";
    }
	
	@RequestMapping("userquery")
	@ResponseBody  
	public List userQuery(HttpServletRequest request, HttpServletResponse response) throws Exception {
		_logger.debug("User Query start...");
		
		List ret =  userService.query();
		
		_logger.debug("User Query end");
		
		return ret;
	}
}
