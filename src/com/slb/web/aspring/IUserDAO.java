package com.slb.web.aspring;

import java.util.List;

import com.slb.web.aspring.model.UserDto;

/**
 * ½Ó¿Ú²ã
 * @author GISApe
 * @date 2014/01/18
 *
 */
public interface IUserDAO {

	public void save(UserDto user) throws Exception;

	public void delete(UserDto user) throws Exception;

	public void update(UserDto user) throws Exception;

	public List searchAll() throws Exception;
}
