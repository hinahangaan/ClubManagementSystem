package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Order;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Order.class)
public interface OrderRepository {

    List<Order> findAll();
}
