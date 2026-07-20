package com.lms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.lms.entity.Student;

public interface StudentRepository
        extends JpaRepository<Student, Integer> {

}