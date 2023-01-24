/**
 * 
 */
package com.ipl.permutation.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author iyero
 *
 */
@Entity
@Table(name="schedule")
public class Schedule {

	@Id
	private int matchId;
	private String teamA;
	private String teamB;
	private String venue;
	private String matchDay;
	private String matchTime;
	private String result;
	/**
	 * @return the matchId
	 */
	public int getMatchId() {
		return matchId;
	}
	/**
	 * @param matchId the matchId to set
	 */
	public void setMatchId(int matchId) {
		this.matchId = matchId;
	}
	/**
	 * @return the teamA
	 */
	public String getTeamA() {
		return teamA;
	}
	/**
	 * @param teamA the teamA to set
	 */
	public void setTeamA(String teamA) {
		this.teamA = teamA;
	}
	/**
	 * @return the teamB
	 */
	public String getTeamB() {
		return teamB;
	}
	/**
	 * @param teamB the teamB to set
	 */
	public void setTeamB(String teamB) {
		this.teamB = teamB;
	}
	/**
	 * @return the venue
	 */
	public String getVenue() {
		return venue;
	}
	/**
	 * @param venue the venue to set
	 */
	public void setVenue(String venue) {
		this.venue = venue;
	}
	/**
	 * @return the matchDay
	 */
	public String getMatchDay() {
		return matchDay;
	}
	/**
	 * @param matchDay the matchDay to set
	 */
	public void setMatchDay(String matchDay) {
		this.matchDay = matchDay;
	}
	/**
	 * @return the matchTime
	 */
	public String getMatchTime() {
		return matchTime;
	}
	/**
	 * @param matchTime the matchTime to set
	 */
	public void setMatchTime(String matchTime) {
		this.matchTime = matchTime;
	}
	/**
	 * @return the result
	 */
	public String getResult() {
		return result;
	}
	/**
	 * @param result the result to set
	 */
	public void setResult(String result) {
		this.result = result;
	}
	
}
