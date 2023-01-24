/**
 * 
 */
package com.ipl.permutation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ipl.permutation.dao.ScheduleDAO;
import com.ipl.permutation.model.Schedule;

/**
 * @author iyero
 *
 */
@RestController
public class ScheduleController {

	
	@Autowired
	private ScheduleDAO scheduleDao;
	
	@RequestMapping("/schedule")
	public List<Schedule> getAllSchedules(){

		List<Schedule> list= scheduleDao.findAll();
		System.out.println(list.size());
		
		return scheduleDao.findAll();
	}
	
	@RequestMapping("/IplHello")
	public String getHelloPermutationss(){

		
		
		return "Hello World from IPL Permutations";
	}
	
	@RequestMapping("/permutations")
	public List<Schedule> getAllPermutationss(){

		List<Schedule> list= scheduleDao.findAll();
		System.out.println(list.size());
		
		return scheduleDao.findAll();
	}
}
