package com.jiaoyan.service.nearbybooks.userAddress.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.nearbybooks.UserAddress;
import com.jiaoyan.service.nearbybooks.userAddress.UserAddressService;

@Service("userAddressServiceImpl")
public class UserAddressServiceImpl implements UserAddressService {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	@Override
	public void save(UserAddress userAddress) throws Exception {
		dao.save("UserAddressMapper.save", userAddress);
	}

	@Override
	public void deleteUserAddress(String userId) throws Exception {
		dao.delete("UserAddressMapper.deleteUserAddress", userId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserAddress> getUserAddressList(String userId) throws Exception {
		return (List<UserAddress>) dao.findForList("UserAddressMapper.getUserAddressList", userId);
	}

	@Override
	public void deleteUserAddressById(String id) throws Exception {
		dao.delete("UserAddressMapper.deleteUserAddressById", id);
	}

	@Override
	public void update(UserAddress userAddress) throws Exception {
		dao.update("UserAddressMapper.update", userAddress);
	}

	@Override
	public UserAddress getUserAddressById(String id) throws Exception {
		return (UserAddress) dao.findForObject("UserAddressMapper.getUserAddressById", id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserAddress> getUserAddressByList() throws Exception {
		// TODO 自动生成的方法存根
		return (List<UserAddress>) dao.findForList("UserAddressMapper.getUserAddressByList", "1");
	}
}
