package com.creativesoftware.employeemanagement.models;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String name;
    private String email;
    private String dob;
    @ElementCollection
    private List<String> skills=new ArrayList<>();
}
