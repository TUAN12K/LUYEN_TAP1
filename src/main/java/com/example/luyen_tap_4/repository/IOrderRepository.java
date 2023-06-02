package com.example.luyen_tap_4.repository;

import com.example.luyen_tap_4.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IOrderRepository extends JpaRepository<Order, Integer> {

}
