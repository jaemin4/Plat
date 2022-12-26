package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.smhrd.entity.favorites;
import kr.smhrd.entity.lectures;


@Mapper
public interface FavoritesMapper {

	public List<favorites> f_select_lec(favorites vo);
	public void f_insert(favorites vo);
	public void f_delete(favorites vo);
	/* public List<lectures> f_select_v(String mem_id); */
	
	public List<lectures> MyPage_select(String mem_id);
	
}

