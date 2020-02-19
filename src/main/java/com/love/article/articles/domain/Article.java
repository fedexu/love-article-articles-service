package com.love.article.articles.domain;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "articles")
@Getter
@Setter
public class Article {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public UUID id;
	@NotNull
	public String name;
	@NotNull
	public String description;
	public String markdown;
	public String html;
	public String url;
	public String tag;
}
