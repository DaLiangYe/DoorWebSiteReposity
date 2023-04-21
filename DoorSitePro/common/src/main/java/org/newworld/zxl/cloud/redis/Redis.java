package org.newworld.zxl.cloud.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;

/*
* Redis操作组件类
* */
@Component
public class Redis {

    @Autowired
    private StringRedisTemplate redisTemplate;

    public void setNotExpire(String key, String value){
        redisTemplate.opsForValue().set(key,value);
    }

    /*
    * @param expireTime  the millionSeconds that expire time
    * */
    public void set(String key, String value, long expireTime){
        redisTemplate.opsForValue().set(key,value,expireTime, TimeUnit.MILLISECONDS);
    }

    public Object get(String key){
        return redisTemplate.opsForValue().get(key);
    }

    public void delete(String key){
        redisTemplate.delete(key);
    }

}
