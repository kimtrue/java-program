package kr.co.nff.admin.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.nff.repository.dao.UserDAO;
import kr.co.nff.repository.vo.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO dao;
	
	
	public List<User> listUser() {
		return dao.selectUser();
	}

	public User detailUser(int no) {
		return dao.selectOneUser(no);
	}

	public void deleteUser(int no) {
		dao.deleteUser(no);
	}

}
