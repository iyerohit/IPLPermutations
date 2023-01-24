/**
 * 
 */
package com.ipl.permutation.model;

import java.util.List;

/**
 * @author iyero
 *
 */
public class PlayoffProbability {

	
	public int id;
	
	public List<Team> teams;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the teams
	 */
	public List<Team> getTeams() {
		return teams;
	}

	/**
	 * @param teams the teams to set
	 */
	public void setTeams(List<Team> teams) {
		this.teams = teams;
	}
	
	
}
