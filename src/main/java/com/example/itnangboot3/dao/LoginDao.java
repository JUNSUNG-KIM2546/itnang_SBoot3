package com.example.itnangboot3.dao;

import com.example.itnangboot3.entity.LoginEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface LoginDao extends JpaRepository<LoginEntity, Long> {

}
