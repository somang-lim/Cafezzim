package com.cafe.gitteam1.reserve;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MyPageBookingListMapper {
	public List<MyPageBookingListVo> myPageBookingList(String id, String nowDate);
	public List<MyPageBookingListVo> myPagePastBookingList(String id, String nowDate);
	public List<MyPageBookingListVo> bookingListSearch(String id, String findStr);
	public void delClick(String rid);
}
