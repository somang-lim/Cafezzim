package com.cafe.gitteam1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
@Transactional
public class MemberService {
	
	@Autowired
	MemberMapper mapper;
	
	@Autowired
	PlatformTransactionManager manager;
	
	TransactionStatus status;
	
	public boolean signInCheck(MemberVo vo, HttpSession session) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		boolean isSignIn = false;
		String name = mapper.signInCheck(vo);
		MemberVo vo2 = mapper.viewMember(vo);
		
		try {
			if(name != null) {
				manager.commit(status);
				session.setAttribute("member_id", vo2.getMember_id());
				session.setAttribute("name", vo2.getMember_name());
				session.setAttribute("grade", vo2.getMember_grade());
				
				System.out.println("member_id=" + vo2.getMember_id());
				System.out.println("name=" + vo2.getMember_name());
				System.out.println("grade=" + vo2.getMember_grade());
				
				isSignIn = true;
			} else {
				manager.rollback(status);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSignIn;
	}
	
	public void signOut(HttpSession session) {
		session.invalidate();
	}
}
