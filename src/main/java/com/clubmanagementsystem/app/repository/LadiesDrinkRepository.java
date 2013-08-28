package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.LadiesDrink;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = LadiesDrink.class)
public interface LadiesDrinkRepository {

    List<LadiesDrink> findAll();
}
