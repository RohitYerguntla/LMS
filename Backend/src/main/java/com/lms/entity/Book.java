package com.lms.entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name="books")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(nullable = false)
    private int totalQuantity;
    
    
    @OneToMany(mappedBy = "book")
    private List<IssueBook> issuedBooks;
    
    @Column(unique = true)
    private String title;
    private String author;
    private String category;
    private int quantity;
    
    
    public Book() {
	}
    
    
	public Book(String title, String author, String category, int quantity) {
		super();
		this.title = title;
		this.author = author;
		this.category = category;
		this.quantity = quantity;
	}
	
	
	public int getTotalQuantity() {
		return totalQuantity;
	}


	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}


	public List<IssueBook> getIssuedBooks() {
		return issuedBooks;
	}


	public void setIssuedBooks(List<IssueBook> issuedBooks) {
		this.issuedBooks = issuedBooks;
	}


	public int getId() {
	    return id;
	}

	public void setId(int id) {
	    this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}