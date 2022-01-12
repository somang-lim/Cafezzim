package com.cafe.gitteam1.member;

import javax.servlet.http.HttpServletResponse;
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
	
	// ------------------------ 로그인 -----------------------------
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
				
				isSignIn = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSignIn;
	}
	
	// ------------------------ 로그아웃 -----------------------------
	public void signOut(HttpSession session) {
		session.invalidate();
	}
	
	// ----------------------- 아이디 찾기 ----------------------------
	public String searchId(MemberVo vo) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		String member_id = mapper.searchId(vo);
		
		try {
			if(member_id != null) {
				manager.commit(status);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return member_id;
	}
	
	// ----------------------- 비밀번호 찾기 ---------------------------
	public boolean searchPw(MemberVo vo) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		String pwCheck = mapper.searchPw(vo);
		boolean isPwCheck = false;

		try {
			if(pwCheck != null) {
				manager.commit(status);
				isPwCheck = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isPwCheck;
	}
	
	// ----------------------- 비밀번호 변경 ---------------------------
	public boolean changePw(String newPwd, String member_id) {
		status = manager.getTransaction(new DefaultTransactionDefinition());
		boolean isChangePwd = false;
		boolean result = mapper.changePw(newPwd, member_id);

		try {
			if(result) {
				isChangePwd = true;
				manager.commit(status);
			} else {
				manager.rollback(status);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isChangePwd;
	}
}