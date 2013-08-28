package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.ItemOrder;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = ItemOrder.class)
public interface ItemOrderRepository {

    List<ItemOrder> findAll();
}
