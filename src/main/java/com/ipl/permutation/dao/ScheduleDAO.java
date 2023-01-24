/**
 * 
 */
package com.ipl.permutation.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ipl.permutation.model.Schedule;

/**
 * @author iyero
 *
 */
public interface ScheduleDAO extends JpaRepository<Schedule, Integer> {

	
	List<Schedule> findByResultIsNull();
}
