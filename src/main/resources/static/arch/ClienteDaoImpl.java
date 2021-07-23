package com.app.jpa.models.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.jpa.models.entity.Cliente;

@Repository
public class ClienteDaoImpl implements IClienteDao {
	
	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	//@Transactional(readOnly = true)
	@Override
	public List<Cliente> findAll() {
		return em.createQuery("from Cliente").getResultList();
	}

	//@Transactional
	@Override
	public void save(Cliente cliente) {
		if(cliente.getId() != null && cliente.getId() > 0) {
			em.merge(cliente);
		}else {
			em.persist(cliente);
		}
	}

	//@Transactional(readOnly = true)
	@Override
	public Cliente findOne(Long id) {
		return em.find(Cliente.class, id);
	}
	
	//@Transactional
	@Override
	public void delete(Long id) {
		em.remove(findOne(id));
	}

}
