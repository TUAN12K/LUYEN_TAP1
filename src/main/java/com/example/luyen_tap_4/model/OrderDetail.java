package com.example.luyen_tap_4.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
@Entity
@Table(name = "orderdetail")
public class OrderDetail {
    @Id
    @ManyToOne
    @JoinColumn(name = "orderid", referencedColumnName = "orderid")
    private Order orderId;
    @Id
    @ManyToOne
    @JoinColumn(name = "productid", referencedColumnName = "productid")
    private Product product;
    @Column(name = "purchasedquantity")
    private Integer purchasedQuantity;
    @Column(name = "purchasedmoney")
    private BigDecimal purchasedMoney;
}
