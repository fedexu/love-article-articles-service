package com.love.article.articles.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.love.article.articles.domain.Article;
import com.love.article.articles.service.ArticleService;

@RestController
@RequestMapping(value="/article")
public class ArticleController {

	// Logger
	private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);
	
	@Autowired
	ArticleService articleService;

	@PostMapping
	public Article createNewArticle(@Valid @RequestBody Article article) throws Exception {
		LOGGER.info("Invoke createNewArticle");
		return articleService.createNewArticle(article);
	}
}
