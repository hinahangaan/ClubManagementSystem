// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.repository;

import com.clubmanagementsystem.app.domain.Lady;
import com.clubmanagementsystem.app.repository.LadyRepository;
import org.bson.types.ObjectId;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

privileged aspect LadyRepository_Roo_Mongo_Repository {
    
    declare parents: LadyRepository extends PagingAndSortingRepository<Lady, ObjectId>;
    
    declare @type: LadyRepository: @Repository;
    
}