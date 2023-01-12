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
	
	public int freetalking_board_modify(AdminTotalboardVo atVo);
	public int infoshare_board_modify(AdminTotalboardVo atVo);
	public int jobsearch_board_modify(AdminTotalboardVo atVo);
	public int mansearch_board_modify(AdminTotalboardVo atVo);
	public int qna_board_modify(AdminTotalboardVo atVo);
	
	public int board_delete(AdminTotalboardVo atVo);
}
