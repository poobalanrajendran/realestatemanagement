package com.chainsys.realestatemanagement.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.realestatemanagement.pojo.Payments;

public interface PaymentsRepository extends CrudRepository<Payments,Integer> {
Payments findById(int id);
Payments save(Payments payment);
void deleteById(int id);
List<Payments> findAll();
}
