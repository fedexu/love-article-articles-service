package com.love.article.articles.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.love.article.articles.domain.Article;
import com.love.article.articles.repository.ArticleRepository;

@Service
public class ArticleService {

	@Autowired
	ArticleRepository articleRepository;

	public Article createNewArticle(Article article) throws Exception {
		if (article.id != null && articleRepository.existsById(article.id)) {
			throw new Exception("This article already exist!");
		}
		return articleRepository.save(article);
	}

	public Page<Article> getPaged(Pageable pageable) throws Exception{

		Page<Article> paged = articleRepository.findAll(pageable);
		if (pageable.getPageNumber() > paged.getTotalPages()) {
			throw new Exception("Articles page not found");
		}

		return paged;
	}

}
