package com.repository;

import com.model.DiabetesTest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DiabetesTestRepository extends JpaRepository<DiabetesTest, Long> {
}
