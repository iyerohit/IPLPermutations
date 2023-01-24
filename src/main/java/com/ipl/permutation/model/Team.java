/**
 * 
 */
package com.ipl.permutation.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @author iyero
 *
 */
@Entity
@Table(name="teams")
public class Team {

	@Id
	public int id;
	
	public String teamName;
	
	public String city;
	
	public String playoffProbability;
	
	public String initial;
	
	@Transient
	public int points;
	
	@Transient
	public int playoffCOunt;

	/**
	 * @return the playoffCOunt
	 */
	public int getPlayoffCOunt() {
		return playoffCOunt;
	}

	/**
	 * @param playoffCOunt the playoffCOunt to set
	 */
	public void setPlayoffCOunt(int playoffCOunt) {
		this.playoffCOunt = playoffCOunt;
	}

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
	 * @return the teamName
	 */
	public String getTeamName() {
		return teamName;
	}

	/**
	 * @param teamName the teamName to set
	 */
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the playoffProbability
	 */
	public String getPlayoffProbability() {
		return playoffProbability;
	}

	/**
	 * @param playoffProbability the playoffProbability to set
	 */
	public void setPlayoffProbability(String playoffProbability) {
		this.playoffProbability = playoffProbability;
	}

	/**
	 * @return the initial
	 */
	public String getInitial() {
		return initial;
	}

	/**
	 * @param initial the initial to set
	 */
	public void setInitial(String initial) {
		this.initial = initial;
	}

	/**
	 * @return the points
	 */
	public int getPoints() {
		return points;
	}

	/**
	 * @param points the points to set
	 */
	public void setPoints(int points) {
		this.points = points;
	}
	
	
}
