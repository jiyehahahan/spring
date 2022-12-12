package com.spring_mvc.bookex.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_mvc.bookex.model.BookVO;
import com.spring_mvc.bookex.service.BookService;

@Controller
public class BookController {
	@Autowired
	BookService service;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/book/bookListAll")
	public String viewbookListAll(Model model) {
		ArrayList<BookVO> bookList = service.listAllBook();
		model.addAttribute("bookList", bookList);
		return "book/bookAllListView";
	}
	
	
	//도서 검색 폼 열기
	@RequestMapping("/book/bookSearchForm")
	public String bookSearchForm() {
		return "/book/bookSearchForm";
	}
	
	//도서 검색 처리
	@ResponseBody
	@RequestMapping("/book/bookSearch")
	public ArrayList<BookVO> productSearch1(@RequestParam HashMap<String, Object> param, Model model) {
		//서비스로 전송해서 DB 검색 결과 받아옴
		ArrayList<BookVO> bookList = service.bookSearch(param);
		
		return bookList;
	}
	
	//도서 검색 폼2 열기
		@RequestMapping("/book/bookSearchForm2")
		public String bookSearchForm2() {
			return "book/bookSearchForm2";
		}
		
	@RequestMapping("/book/bookSearch2")
	public String bookSearch2(@RequestParam HashMap<String, Object> param, Model model) {
		ArrayList<BookVO> bookList = service.bookSearch(param);
		model.addAttribute("bookList", bookList);
		return "book/bookSearchResultView";
	}
	
}
