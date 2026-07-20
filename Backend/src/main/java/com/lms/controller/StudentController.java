package com.lms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lms.dao.StudentRepository;
import com.lms.entity.Student;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repository;

    @GetMapping("/students")
    public String viewStudents(Model model) {

        List<Student> students = repository.findAll();

        model.addAttribute("students", students);

        return "viewStudents";
    }

    @GetMapping("/addStudent")
    public String addStudentPage() {
        return "addStudent";
    }

    @PostMapping("/saveStudent")
    public String saveStudent(Student student) {

        repository.save(student);

        return "redirect:/students";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable int id) {

        repository.deleteById(id);

        return "redirect:/students";
    }

    @GetMapping("/editStudent/{id}")
    public String editStudent(@PathVariable int id,
                              Model model) {

        Student student =
                repository.findById(id).orElse(null);

        model.addAttribute("student", student);

        return "editStudent";
    }

    @PostMapping("/updateStudent")
    public String updateStudent(Student student) {

        repository.save(student);

        return "redirect:/students";
    }
}