package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Table;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Table.class)
public interface TableRepository {

    List<Table> findAll();
}
