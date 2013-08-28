package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Stock;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Stock.class)
public interface StockRepository {

    List<Stock> findAll();
}
