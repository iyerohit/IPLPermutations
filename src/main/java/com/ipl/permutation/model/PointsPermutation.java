/**
 * 
 */
package com.ipl.permutation.model;

import java.util.List;

/**
 * @author iyero
 *
 */
public class PointsPermutation {

	public int id;
	
	public int permutationId;
	
	public List<Team> teamList;

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
	 * @return the permutationId
	 */
	public int getPermutationId() {
		return permutationId;
	}

	/**
	 * @param permutationId the permutationId to set
	 */
	public void setPermutationId(int permutationId) {
		this.permutationId = permutationId;
	}

	/**
	 * @return the teamList
	 */
	public List<Team> getTeamList() {
		return teamList;
	}

	/**
	 * @param teamList the teamList to set
	 */
	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}
	
	
	
}
