/**
 * 
 */
package com.ipl.permutation.logic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ipl.permutation.dao.ScheduleDAO;
import com.ipl.permutation.dao.TeamsDAO;
import com.ipl.permutation.model.Permutation;
import com.ipl.permutation.model.PlayoffProbability;
import com.ipl.permutation.model.PointsPermutation;
import com.ipl.permutation.model.Schedule;
import com.ipl.permutation.model.Team;

/**
 * @author iyero
 *
 */
@Component
public class PermuteIPL {
	@Autowired
	ScheduleDAO dao;
	@Autowired
	TeamsDAO teamsDao;
	int permId=0;
	List<Permutation> permList= new ArrayList<Permutation>();
	List<Schedule> listProcessed = new ArrayList<Schedule>();
	public List<Permutation> permuteSchedules() {

		List<Schedule> list= dao.findByResultIsNull();
		System.out.println(list.size());
		getPermutations(list,permList, listProcessed);
		System.out.println("permutations list"+permList.size());
		return permList;
	}

	private void getPermutations(List<Schedule> list,List<Permutation> permList,List<Schedule> listProcessed) {
		// TODO Auto-generated method stub
		if(list.size()==0) {
			//return permList;
		}else {
		Schedule s=list.get(0);
		System.out.println("match id"+s.getMatchId());
			s.setResult(s.getTeamA());
			if(permList.size()==0) {
				Permutation pnew = new Permutation();
				pnew.setId(permId++);
				pnew.setList(list);
				permList.add(pnew);
			}else {
			for(Permutation p:permList) {
				
				for(Schedule sch :p.getList()) {
					
					if(sch.getMatchId()== s.getMatchId()) {
						sch.setResult(s.getResult());
					}
					
				}
			}
			}
			System.out.println("WWW permlist size"+permList.size());
				Schedule s1=list.get(0);
				
		s1.setResult(s.getTeamB());
		List<Permutation> lList= new ArrayList<Permutation>();
		for(Permutation p:permList) {
			Permutation pl =new Permutation();
			pl.setId(permId++);
			pl.setList(p.getList());
			pl.getList().addAll(listProcessed);
			for(Schedule sch :pl.getList()) {
				
				if(sch.getMatchId()== s1.getMatchId()) {
					sch.setResult(s1.getResult());
				}
				
			}
			lList.add(pl);
		}
		permList.addAll(lList);
		System.out.println("lll permsize"+ permList.size());
		listProcessed.add(s);
		list.remove(0);	
	getPermutations(list, permList, listProcessed);
	
		}		
		//return getPermutations(list, permList);
	}
	
	public List<PointsPermutation> getPointsPermutation(List<Permutation> permlist){
		
		
		List<PointsPermutation> list = new ArrayList<PointsPermutation>();
		
		
		List<Team> teamList= teamsDao.findAll();
		
		for(Permutation perm: permlist){
			
			PointsPermutation pp= new PointsPermutation();
		pp.setTeamList(teamList);
		pp.setPermutationId(perm.getId());
		for(Team team: pp.getTeamList()) {
			int points=0;
			for(Schedule s:perm.getList()) {
				if(s.getResult().equalsIgnoreCase(team.getInitial())) {
					points+=2;
				}
				team.setPoints(points);
			}
		}
		list.add(pp);	
		}
		
		return list;
		
	}

	public PlayoffProbability getPlayoffProbabilities(List<PointsPermutation> pointsList) {
		PlayoffProbability playoff= new PlayoffProbability();
		List<Team> teamList= teamsDao.findAll();
		playoff.setTeams(teamList);
		int permutaions= pointsList.size();
		for(PointsPermutation pp:pointsList) {
			Collections.sort(pp.getTeamList(),Comparator.comparing(Team::getPoints).reversed());
			for(Team t:playoff.getTeams()) {
				if(pp.getTeamList().get(0).equals(t.getInitial()) || pp.getTeamList().get(1).equals(t.getInitial())
						|| pp.getTeamList().get(2).equals(t.getInitial()) || pp.getTeamList().get(3).equals(t.getInitial())) {
					t.setPlayoffCOunt(t.getPlayoffCOunt()+1);
				}
			}
		}
		for(Team t:playoff.getTeams()) {
			t.setPlayoffProbability(""+t.getPlayoffCOunt()/permutaions);
			System.out.println("Probability for "+t.getInitial()+" is "+t.getPlayoffProbability());
		}
		
		
		return playoff;
	}
	
			
	
	
}
