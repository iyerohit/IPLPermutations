package com.ipl.permutation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ipl.permutation.dao.ScheduleDAO;
import com.ipl.permutation.dao.TeamsDAO;
import com.ipl.permutation.logic.PermuteIPL;
import com.ipl.permutation.model.Permutation;
import com.ipl.permutation.model.PlayoffProbability;
import com.ipl.permutation.model.PointsPermutation;

@RestController
public class PermuteController {

	@Autowired
	ScheduleDAO dao;
	
	@Autowired
	TeamsDAO teamsDao;
	
	@Autowired
	PermuteIPL permute;
	
	@RequestMapping("/getPermutations")
	public 	List<Permutation> permuteIPL() {	
	return permute.permuteSchedules()	;
		
	}
	@RequestMapping("/getPlayoffProbabilities")
	public 	PlayoffProbability permuteIPLPlayoffProbabilities() {
	List<Permutation> permList= permute.permuteSchedules()	;
	PlayoffProbability playoff= new PlayoffProbability();
	List<PointsPermutation> pointsList=permute.getPointsPermutation(permList);
	playoff= permute.getPlayoffProbabilities(pointsList);
	return playoff;	
	}
}
