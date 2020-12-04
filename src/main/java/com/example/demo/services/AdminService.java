package com.example.demo.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.repository.AdminRepo;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class AdminService {
	
	private final AdminRepo adminRepository;
	
	public AdminService(AdminRepo adminRepository) {
		this.adminRepository = adminRepository;
	}
	public Admin findByEmailAndPassword(String email, String password) {
		return adminRepository.findByEmailAndPassword(email, password);
	}
        public void saveAdmin(Admin admin) {
		
		adminRepository.save(admin);
	}
        
        public List<Admin> showAllAdmin(){
		List<Admin> admins = new ArrayList<Admin>();
		for(Admin admin:adminRepository.findAll()) {
			admins.add(admin);
		}
		return admins;
	}
        
        public void deleteAdmin(int id) {
		adminRepository.deleteById(id);
	}
        
     
        public Admin findByEmailnameAndPassword(String email, String password) {
		return adminRepository.findByEmailAndPassword(email, password);
	}

        
}
