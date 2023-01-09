package com.kodup.admin.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kodup.admin.totalboard.AdminTotalboardVo;

@Repository
@Mapper
public interface AdminTotalboardMapper {

	public List<AdminTotalboardVo> select(String findStr);
}
