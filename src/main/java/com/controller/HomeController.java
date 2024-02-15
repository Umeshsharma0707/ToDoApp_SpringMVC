package com.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.Todo;

@Controller
public class HomeController {

	@Autowired
	ServletContext context;
	
	
		@RequestMapping("/")
		public String home(Model m) {
			String page = "home";
			m.addAttribute("page", page);
			List<Todo> list = (List<Todo>)context.getAttribute("list");
			m.addAttribute("todos", list);
			return "home";
		}
		
		// add
		@RequestMapping("/add")
		public String add(Model m) {
			
			Todo t = new Todo();
			m.addAttribute("todo", t);
			m.addAttribute("page", "add");
			return "home";
		}
		
		@RequestMapping("/saveTodo") 
		public String saveTodo(@ModelAttribute("todo") Todo t , Model m) {
			t.setTododate(new Date());
			
			List<Todo> list = (List<Todo>)context.getAttribute("list");
			list.add(t);
			System.out.println(t);
			m.addAttribute("msg", "Successfully added");
			return "home";
		}
		
		
		
}
