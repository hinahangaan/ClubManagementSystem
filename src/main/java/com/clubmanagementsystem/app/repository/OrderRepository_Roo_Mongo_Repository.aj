// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.repository;

import com.clubmanagementsystem.app.domain.Order;
import com.clubmanagementsystem.app.repository.OrderRepository;
import org.bson.types.ObjectId;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

privileged aspect OrderRepository_Roo_Mongo_Repository {
    
    declare parents: OrderRepository extends PagingAndSortingRepository<Order, ObjectId>;
    
    declare @type: OrderRepository: @Repository;
    
}
