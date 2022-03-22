package com.sucky.project.football.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.project.football.dao.rankDAO;
import com.sucky.project.football.model.Rank;

@Service
public class rankVO {
	
	@Autowired
	private rankDAO rankdao;
	
	public List<Rank> getRankList(int leagueId){
		
		return rankdao.selectRankList(leagueId);
	}
}
