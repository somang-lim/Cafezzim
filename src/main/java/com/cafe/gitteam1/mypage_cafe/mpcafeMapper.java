package com.cafe.gitteam1.mypage_cafe;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.cafe.gitteam1.mypage_cafe.mpcafeVo;

@Repository
@Mapper
public interface mpcafeMapper {
	public List<mpcafeVo> search(String findStr);
	public List<dayoffVo> dayoffSelect(String cafe_id);
	public int modify(mpcafeVo vo);
	public int scnmodify(mpcafe_listVo lvo);
	public mpcafeVo view(String cafe_id);
	public List<mpcafe_listVo> otherphotos(String cafe_id);
	public List<mpcafe_listVo> cafesearch(String cafe_id);
	public List<mpcafe_listVo> menu(String cafe_id);
	public int insertOff(dayoffVo vo);
	public int deleteOff(String cafe_id);

}
