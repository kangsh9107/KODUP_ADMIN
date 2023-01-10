package com.kodup.admin.totalboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminTotalboardMapper {

	public List<AdminTotalboardVo> select(BoardPageVo pVo);
	public int totList(BoardPageVo pVo);
	
	public AdminTotalboardVo view(int sno, String boardtype);
}
