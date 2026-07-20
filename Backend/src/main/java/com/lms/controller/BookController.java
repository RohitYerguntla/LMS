package com.lms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.lms.dao.BookRepository;
import com.lms.entity.Book;

@Controller
public class BookController {

    @Autowired
    private BookRepository repository;
    
    @GetMapping("/addBook")
    public String addBookPage() {
        return "addBook";
    }
    
    
    @PostMapping("/saveBook")
    public String saveBook(Book book) {

        book.setQuantity(
                book.getTotalQuantity());

        repository.save(book);

        return "redirect:/books";
    }

    @GetMapping("/books")
    public String viewBooks(Model model) {

        List<Book> books = repository.findAll();

        model.addAttribute("books", books);

        return "viewBooks";
    }
    
    @GetMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable int id) {

        repository.deleteById(id);

        return "redirect:/books";
    }
    
    @GetMapping("/editBook/{id}")
    public String editBook(@PathVariable int id,
                           Model model) {

        Book book =
                repository.findById(id).orElse(null);
        
       
        model.addAttribute("book", book);

        return "editBook";
    }
    
//    @PostMapping("/updateBook")
//    public String updateBook(Book book) {
//
//    	 book.setQuantity(
//                 book.getTotalQuantity());
//
//        repository.save(book);
//
//        return "redirect:/books";
//    }
    
    
    @PostMapping("/updateBook")
    public String updateBook(Book updatedBook) {

        Book existingBook =
            repository.findById(updatedBook.getId())
                      .orElseThrow();

        int addedBooks =
            updatedBook.getTotalQuantity()
            - existingBook.getTotalQuantity();

        existingBook.setTitle(updatedBook.getTitle());
        existingBook.setAuthor(updatedBook.getAuthor());
        existingBook.setCategory(updatedBook.getCategory());

        existingBook.setTotalQuantity(
            updatedBook.getTotalQuantity()
        );

        existingBook.setQuantity(
            existingBook.getQuantity() + addedBooks
        );

        repository.save(existingBook);

        return "redirect:/books";
    }
    
    
}