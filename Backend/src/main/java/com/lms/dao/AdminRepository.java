package com.lms.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lms.entity.Admin;

public interface AdminRepository
extends JpaRepository<Admin,Integer>{

Admin findByUsernameAndPassword(
    String username,
    String password);
}