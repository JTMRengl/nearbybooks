package com.jiaoyan.service.nearbybooks.userAddress;

import java.util.List;

import com.jiaoyan.entity.nearbybooks.UserAddress;

public interface UserAddressService {
	
	
	/**
	 * 保存用户地址
	 * @param pd
	 * @throws Exception
	 */
	public void save(UserAddress userAddress)throws Exception;
	
	
	/**
	 * 保存用户地址
	 * @param pd
	 * @throws Exception
	 */
	public void update(UserAddress userAddress)throws Exception;	
	
	
	/**
	 * 删除用户地址
	 * @param pd
	 * @throws Exception
	 */
	public void deleteUserAddress(String userId)throws Exception;
	
	/**
	 * 查询用户地址列表
	 * @param pd
	 * @throws Exception
	 */	
	public List<UserAddress> getUserAddressList(String userId)throws Exception;
	
	/**
	 * 查询单个用户地址
	 * @param pd
	 * @throws Exception
	 */
	public UserAddress getUserAddressById(String id)throws Exception;	
	
	/**
	 * 删除单个用户地址
	 * @param pd
	 * @throws Exception
	 */
	public void deleteUserAddressById(String id)throws Exception;	
	
	/**
	 * 查询用户地址列表
	 * @param pd
	 * @throws Exception
	 */	
	public List<UserAddress> getUserAddressByList()throws Exception;
}
