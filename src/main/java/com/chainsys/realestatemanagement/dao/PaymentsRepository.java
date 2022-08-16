package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.model.Payments;

public interface PaymentsRepository extends CrudRepository<Payments,Long> {
Payments findById(long id);
Payments save(Payments payment);
void deleteById(long id);
List<Payments> findAll();
Payments findByid(int id);
List<Payments> findByBuyerAssestid(int buyerAssestid);

}
