package com.sucky.project.football.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.sucky.project.football.model.Rank;

@Repository
public interface rankDAO {
	
	public List<Rank> selectRankList(@Param("leagueId") int leagueId);
}
