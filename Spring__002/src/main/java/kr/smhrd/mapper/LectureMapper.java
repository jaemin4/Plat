package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.lectures;


@Mapper
public interface LectureMapper {


	public List<lectures> getList(); // select SQL~
	public List<lectures> getList_2();
	public List<lectures> getList_3();
	public List<lectures> getList_4();
	public List<lectures> getList_5();
	public List<lectures> MyPage_select();
}

