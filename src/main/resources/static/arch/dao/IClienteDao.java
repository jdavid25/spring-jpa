package com.app.jpa.models.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.app.jpa.models.entity.Cliente;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long> {
	
}
