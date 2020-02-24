package com.love.article.articles.security;

import org.springframework.beans.factory.annotation.Value;

import lombok.Getter;
import lombok.ToString;
	
 @Getter 		
 @ToString		
public class JwtConfig {

	@Value("${security.jwt.uri:/auth/login/**}")
    private String Uri;

    @Value("${security.jwt.header:Authorization}")
    private String header;

    @Value("${security.jwt.prefix:Bearer }")
    private String prefix;

    @Value("${security.jwt.expiration:#{24*60*60}}")
    private int expiration;

    @Value("${security.jwt.secret:JwtSecretKey}")
    private String secret;
    
}
