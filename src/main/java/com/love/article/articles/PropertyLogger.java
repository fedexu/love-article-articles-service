package com.love.article.articles;

import java.util.Arrays;
import java.util.stream.StreamSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.env.AbstractEnvironment;
import org.springframework.core.env.EnumerablePropertySource;
import org.springframework.core.env.Environment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.stereotype.Component;

@Component
/** 
 * Logs sytem properties, configuration properties and environment properties at 
 * Spring startup.
 */
public class PropertyLogger  {

    private static final Logger LOGGER = LoggerFactory.getLogger(PropertyLogger.class);

    @EventListener
    public void handleContextRefresh(ContextRefreshedEvent event) {
        final Environment env = event.getApplicationContext().getEnvironment();
        
        LOGGER.info("====== Environment and configuration ======");
               
        final MutablePropertySources sources = ((AbstractEnvironment) env).getPropertySources();
        
        StreamSupport.stream(sources.spliterator(), false)
                .filter(ps -> ps instanceof EnumerablePropertySource)
                .map(ps -> ((EnumerablePropertySource<?>) ps).getPropertyNames())
                .flatMap(Arrays::stream)
                .distinct()
                .filter(prop -> !(
                		   prop.toLowerCase().contains("credentials") 
                		|| prop.toLowerCase().contains("password") 
                		|| prop.toLowerCase().contains("secret")
                ))
                .forEach(prop -> LOGGER.info("{}: {}", prop, env.getProperty(prop)));
        
        LOGGER.info("===========================================");
    }
}
