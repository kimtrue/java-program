package kr.co.nff.admin.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.nff.repository.dao.ReviewDAO;
import kr.co.nff.repository.vo.Review;

@Service
public class AdminReviewServiceImpl implements AdminReviewService {

	@Autowired
	private ReviewDAO dao;
	
	public List<Review> listReview() {
		return dao.selectReview();
	}

}