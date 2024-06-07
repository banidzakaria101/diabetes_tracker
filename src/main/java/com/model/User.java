package com.model;

import javax.persistence.*;
import java.util.Set;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String userName;

    @Column(nullable = false)
    private String userAge;

    @Column(nullable = false)
    private String userGender;

    @OneToMany(mappedBy = "user")
    private Set<DiabetesTest> tests;

    public User() {
    }

    public User(String userGender, String userAge, Long id, String userName) {
        this.userGender = userGender;
        this.userAge = userAge;
        this.id = id;
        this.userName = userName;
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public Set<DiabetesTest> getTests() {
        return tests;
    }

    public void setTests(Set<DiabetesTest> tests) {
        this.tests = tests;
    }
}
