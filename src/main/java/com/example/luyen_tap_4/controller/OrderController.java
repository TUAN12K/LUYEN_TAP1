package com.example.luyen_tap_4.controller;

import com.example.luyen_tap_4.model.Order;
import com.example.luyen_tap_4.repository.IOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/luyen-tap")
public class OrderController {

    @Autowired
    private IOrderRepository iOrderRepository;

    @GetMapping
    private String viewOrder(Model model
            , @RequestParam(defaultValue = "1") int page) {
        Page<Order> pageOders;
         if(page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 10);
        pageOders = iOrderRepository.findAll(pageable);
        model.addAttribute("pageOders", pageOders);
        return "luyen-tap/order";
    }
}
