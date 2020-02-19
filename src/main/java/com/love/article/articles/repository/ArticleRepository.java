package com.love.article.articles.repository;

import java.util.UUID;

import com.love.article.articles.domain.Article;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArticleRepository extends JpaRepository<Article, UUID>{

}
