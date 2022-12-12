package com.spring_mvc.bookex.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_mvc.bookex.dao.IBookDAO;
import com.spring_mvc.bookex.model.BookVO;

@Service
public class BookService implements IBookService {
	@Autowired
	@Qualifier("IBookDAO")
	IBookDAO dao;
	
	@Override
	public ArrayList<BookVO> listAllBook() {
		// IBookDAO의 listAllBook() 호출 : DI 필요
		return dao.listAllBook();
	}

	@Override
	public void insertBook(BookVO book) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateBook(BookVO book) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteBook(String bookNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public BookVO detailViewBook(String bookNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<BookVO> bookSearch(HashMap<String, Object> map) {
		return dao.bookSearch(map);
	}

}
