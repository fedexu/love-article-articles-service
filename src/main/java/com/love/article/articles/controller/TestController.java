package com.love.article.articles.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
	
	// Logger
	private static final Logger LOGGER = LoggerFactory.getLogger(TestController.class);
	
	@GetMapping(value = "/getTest")
	public String getTest(@RequestParam String param) {
		LOGGER.info("Invoke /getTest");
		return "Hello " + param;
	}
	
	@PostMapping(value = "/postTest")
	public String postTest(@RequestBody String param) {
		LOGGER.info("Invoke /postTest");
		return "Hello " + param;
	}

}
