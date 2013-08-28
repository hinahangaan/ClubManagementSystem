package com.clubmanagementsystem.app.repository;
import com.clubmanagementsystem.app.domain.Lady;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Lady.class)
public interface LadyRepository {

    List<Lady> findAll();
}
