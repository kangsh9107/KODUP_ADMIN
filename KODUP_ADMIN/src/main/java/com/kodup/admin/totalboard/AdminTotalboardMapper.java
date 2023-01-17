package com.kodup.admin.totalboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AdminTotalboardMapper {

	public int totList(BoardPageVo pVo);
	
	public List<AdminTotalboardVo> select(BoardPageVo pVo);
/*-----------------------------------view--------------------------------------*/
	public AdminTotalboardVo view(int sno, String boardtype);
	public AdminTotalboardVo mansearch_view(int sno, String boardtype);
	public AdminTotalboardVo mansearch_view_info(int sno, String boardtype);
	public List<AdminTotalboardVo> premium_review(int mansearch_sno);
	public AdminTotalboardVo qna_view(int sno, String boardtype);

	public List<AdminTotalboardVo> repl_list(int sno);
	public AdminTotalboardVo repl_selected(int sno);

/*---------------------------modify--------------------------------------------*/
	public int freetalking_board_modify(AdminTotalboardVo atVo);
	public int infoshare_board_modify(AdminTotalboardVo atVo);
	public int jobsearch_board_modify(AdminTotalboardVo atVo);
	public int mansearch_board_modify(AdminTotalboardVo atVo);
	public int qna_board_modify(AdminTotalboardVo atVo);
	
/*--------------------------delete--------------------------------------------*/
	public int board_delete(AdminTotalboardVo atVo);
	public int board_restore(AdminTotalboardVo atVo);
	
/*--------------------------total_repl------------------------------------------*/
	public int repl_totList(BoardPageVo pVo);
	public List<AdminTotalboardVo> repl_select(BoardPageVo pVo);
    public int repl_delete(AdminTotalboardVo atVo);
    public int repl_restore(AdminTotalboardVo atVo);
}
