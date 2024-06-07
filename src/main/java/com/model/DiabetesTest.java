package com.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class DiabetesTest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private int BGLs;

    @Column(nullable = false)
    private Date testDate;

    @ManyToOne
    private User user;

    public DiabetesTest() {
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getBGLs() {
        return BGLs;
    }

    public void setBGLs(int BGLs) {
        this.BGLs = BGLs;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
