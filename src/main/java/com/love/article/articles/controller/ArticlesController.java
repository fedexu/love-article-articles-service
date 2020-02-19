package com.love.article.articles.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.love.article.articles.domain.Article;
import com.love.article.articles.service.ArticleService;


@RestController
@RequestMapping(value="/articles")
public class ArticlesController {

	// Logger
	private static final Logger LOGGER = LoggerFactory.getLogger(ArticlesController.class);
	
	@Autowired
	ArticleService articleService;

	@GetMapping
	public Page<Article> getPaged(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "20") int size) throws Exception {
		LOGGER.info("Invoke getPaged");
		return articleService.getPaged(PageRequest.of(page, size));
	}
		
}

