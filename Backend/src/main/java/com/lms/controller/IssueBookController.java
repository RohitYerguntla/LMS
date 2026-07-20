package com.lms.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lms.dao.BookRepository;
import com.lms.dao.IssueBookRepository;
import com.lms.dao.StudentRepository;
import com.lms.entity.Book;
import com.lms.entity.IssueBook;
import com.lms.entity.Student;

import java.time.temporal.ChronoUnit;

@Controller
public class IssueBookController {

    @Autowired
    private BookRepository bookRepo;

    @Autowired
    private StudentRepository studentRepo;

    @Autowired
    private IssueBookRepository issueRepo;

    @GetMapping("/issueBook")
    public String issuePage(Model model) {

        model.addAttribute("students",
                studentRepo.findAll());

        model.addAttribute("books",
                bookRepo.findAll());

        return "issueBook";
    }

//    @PostMapping("/saveIssue")
//    public String saveIssue(@RequestParam int studentId,
//                            @RequestParam int bookId) {
//
//        Student student =
//                studentRepo.findById(studentId).orElse(null);
//
//        Book book =
//                bookRepo.findById(bookId).orElse(null);
//
//        if(book != null && book.getQuantity() > 0) {
//
//            IssueBook issue = new IssueBook();
//
//            issue.setStudent(student);
//            issue.setBook(book);
//
//            issue.setIssueDate(LocalDate.now());
//
//            issue.setStatus("ISSUED");
//
//            issueRepo.save(issue);
//
//            book.setQuantity(book.getQuantity() - 1);
//
//            bookRepo.save(book);
//        }
//
//        return "redirect:/issuedBooks";
//    }
    
    
    @PostMapping("/saveIssue")
    public String saveIssue(@RequestParam int studentId,
                            @RequestParam int bookId,
                            Model model) {

        Student student =
                studentRepo.findById(studentId).orElse(null);

        Book book =
                bookRepo.findById(bookId).orElse(null);

        if(book == null || book.getQuantity() <= 0) {

            model.addAttribute("error",
                    "Book is not available. Quantity is 0.");

            model.addAttribute("students",
                    studentRepo.findAll());

            model.addAttribute("books",
                    bookRepo.findAll());

            return "issueBook";
        }

        IssueBook issue = new IssueBook();

        issue.setStudent(student);
        issue.setBook(book);
        issue.setIssueDate(LocalDate.now());
        issue.setStatus("ISSUED");

        issueRepo.save(issue);

        book.setQuantity(book.getQuantity() - 1);

        bookRepo.save(book);

        return "redirect:/issuedBooks";
    }
    
    @GetMapping("/issuedBooks")
    public String issuedBooks(Model model) {

        model.addAttribute(
                "issues",
                issueRepo.findAll());

        return "issuedBooks";
    }
    
    
    @GetMapping("/returnBook/{id}")
    public String returnBook(@PathVariable int id) {

        IssueBook issue =
                issueRepo.findById(id).orElse(null);

        if(issue != null &&
           issue.getStatus().equals("ISSUED")) {

            issue.setReturnDate(
                    LocalDate.now());

            long days =
                    ChronoUnit.DAYS.between(
                            issue.getIssueDate(),
                            LocalDate.now());

            if(days > 7) {

                double fine =
                        (days - 7) * 10;

                issue.setFine(fine);
            }

            issue.setStatus("RETURNED");

            Book book = issue.getBook();

            book.setQuantity(
                    book.getQuantity() + 1);

            bookRepo.save(book);

            issueRepo.save(issue);
        }

        return "redirect:/issuedBooks";
    }
}