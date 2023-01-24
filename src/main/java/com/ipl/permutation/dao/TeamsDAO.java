/**
 * 
 */
package com.ipl.permutation.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ipl.permutation.model.Team;

/**
 * @author iyero
 *
 */
public interface TeamsDAO extends JpaRepository<Team, Integer> {

}
