package com.chainsys.realestatemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.realestatemanagement.dao.PaymentsRepository;
import com.chainsys.realestatemanagement.pojo.Payments;

@Service
public class PaymentService {
@Autowired
private PaymentsRepository paymentRepo;
public List<Payments> getpayment()
{
	List<Payments>listPay=paymentRepo.findAll();
	return listPay;
}
@Transactional

public Payments save(Payments payment)
{
	return paymentRepo.save(payment);
}
public Payments findById(int id)
{
	return paymentRepo.findById(id);
}
@Transactional
public void deleteById(int id)
{
	paymentRepo.deleteById(id);
}

}