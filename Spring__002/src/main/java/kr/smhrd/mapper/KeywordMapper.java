package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.keywords;


@Mapper
public interface KeywordMapper {


	public List<keywords> SelectKeyword(String lec_id); //

}

