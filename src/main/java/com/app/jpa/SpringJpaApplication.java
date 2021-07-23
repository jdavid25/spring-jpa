package com.app.jpa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.app.jpa.models.service.IUploadFileService;

@SpringBootApplication
public class SpringJpaApplication implements CommandLineRunner{
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private IUploadFileService uploadFileService;
	
	public static void main(String[] args) {
		SpringApplication.run(SpringJpaApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		uploadFileService.deleteAll();
		uploadFileService.init();
		
		String password = "12345";
		for(int i = 0; i < 2; i++) {
			String bcriptPassword = passwordEncoder.encode(password);
			System.out.println(bcriptPassword);
		}
	}

}
