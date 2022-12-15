package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import kr.smhrd.entity.members;


@Mapper
public interface MemberMapper {

	public void register(members vo); // insert SQL~

	public members login(members vo); // insert SQL~

	
}

