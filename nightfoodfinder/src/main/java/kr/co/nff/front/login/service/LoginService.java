package kr.co.nff.front.login.service;

import kr.co.nff.repository.vo.Store;

public interface LoginService {
	void insertStore(Store store);
	public int storeEmailChk(String storeEmail);
}