package com.spring_mvc.bookex.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_mvc.bookex.model.BookVO;

public interface IBookService {

	public ArrayList<BookVO> listAllBook(); //전체 도서 조회
	public void insertBook(BookVO book);
	public void updateBook(BookVO book);
	public void deleteBook(String bookNo);
	public BookVO detailViewBook(String bookNo); //상세 도서 조회
	public ArrayList<BookVO> bookSearch(HashMap<String, Object> map);
}
