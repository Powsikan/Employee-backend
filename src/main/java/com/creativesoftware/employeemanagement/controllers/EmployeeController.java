package com.creativesoftware.employeemanagement.controllers;

import com.creativesoftware.employeemanagement.models.Employee;
import com.creativesoftware.employeemanagement.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
@CrossOrigin("*")
@RestController
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @PostMapping("/add")
    public Employee addEmployee(@RequestBody Employee employee){
        return employeeRepository.save(employee);
    }

    @GetMapping("/get-all")
    public List<Employee> getEmployees(){
        return employeeRepository.findAll();
    }

    @GetMapping("/get/{id}")
    public Optional<Employee> getEmployee(@PathVariable long id){
        return employeeRepository.findById(id);
    }

    @PutMapping("/update/{id}")
    public Employee updateEmployee(@PathVariable long id , @RequestBody Employee employee){
        return employeeRepository.save(employee);
    }

    @DeleteMapping("delete/{id}")
    public String deleteEmployee(@PathVariable long id){
         employeeRepository.deleteById(id);
         return "User Deleted";
    }
}
