package com.example.itnangboot3.service;

import com.example.itnangboot3.dao.LoginDao;
import com.example.itnangboot3.entity.LoginEntity;
import com.example.itnangboot3.vo.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoginServiceImpl {
	
	@Autowired
	LoginDao logindao;


	public void signUp(LoginVO uservo) {
		LoginEntity loginEntity = LoginEntity.toUsersEntity(uservo);
		logindao.save(loginEntity);
	}
}
