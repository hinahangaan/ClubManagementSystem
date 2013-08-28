package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Waiter;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Waiter.class)
public interface WaiterRepository {

    List<Waiter> findAll();
}
