package com.service;

import com.model.DiabetesTest;
import com.repository.DiabetesTestRepository;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DiabetesTestService {

    @Autowired
    private DiabetesTestRepository diabetesTestRepository;
    @Autowired
    private UserRepository userRepository;

    public DiabetesTest save(DiabetesTest diabetesTest) {
        return diabetesTestRepository.save(diabetesTest);
    }

    public List<DiabetesTest> findAll() {
        return diabetesTestRepository.findAll();
    }

    public  DiabetesTest findById(Long id) {
        return diabetesTestRepository.findById(id).orElse(null);
    }

    public void delete(Long id) {
        diabetesTestRepository.deleteById(id);
    }
}
