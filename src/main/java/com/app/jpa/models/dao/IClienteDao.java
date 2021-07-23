package com.app.jpa.models.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.app.jpa.models.entity.Cliente;

public interface IClienteDao extends PagingAndSortingRepository<Cliente, Long> {
	
	@Query("select c from Cliente c left join fetch c.facturas f where c.id = ?1")
	public Cliente fechByIdWithFacturas(Long id);
}
