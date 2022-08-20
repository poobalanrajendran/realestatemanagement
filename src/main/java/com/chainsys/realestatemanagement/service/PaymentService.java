package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.PaymentsRepository;
import com.chainsys.realestatemanagement.model.Payments;

@Service
public class PaymentService {
@Autowired
private PaymentsRepository paymentRepo;
public List<Payments> getpayment()
{
	return paymentRepo.findAll();
}
@Transactional

public Payments save(Payments payment)
{
	return paymentRepo.save(payment);
}
public Payments findById(long id)
{
	return paymentRepo.findById(id);
}
@Transactional
public void deleteById(long id)
{
	paymentRepo.deleteById(id);
}
public List<Payments> getTransactionDetails(int buyerAssestid)
{
	return paymentRepo.findByBuyerAssestid(buyerAssestid);
}
}
