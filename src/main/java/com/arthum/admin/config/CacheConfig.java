package com.arthum.admin.config;

import com.github.benmanes.caffeine.cache.Caffeine;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.caffeine.CaffeineCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.TimeUnit;

@Configuration
@EnableCaching
public class CacheConfig {

    @Value("${cache.factory.ttl:300}")
    private long factoryTtl;

    @Bean
    public CacheManager cacheManager() {
        CaffeineCacheManager cacheManager = new CaffeineCacheManager("factories");
        cacheManager.setCaffeine(Caffeine.newBuilder()
                .expireAfterWrite(factoryTtl, TimeUnit.SECONDS)
                .maximumSize(1000));
        return cacheManager;
    }
}
