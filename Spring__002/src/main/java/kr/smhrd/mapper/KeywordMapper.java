package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.keywords;
import kr.smhrd.entity.lectures;


@Mapper
public interface KeywordMapper {


	public List<keywords> SelectKeyword(keywords vo); 
	public List<lectures> SelectLecLang(keywords vo);

}

