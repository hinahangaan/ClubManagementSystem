package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Item;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Item.class)
public interface ItemRepository {

    List<Item> findAll();
}
