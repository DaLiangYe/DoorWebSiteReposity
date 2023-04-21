package org.newworld.zxl.cloud.controller;

import org.newworld.zxl.cloud.redis.Redis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TempTest {

    @Autowired
    private Redis redis;

    @RequestMapping("/redis")
    public String getRedisStr(){
        redis.setNotExpire("zxl","Redis Alive");
        String zxl = (String)redis.get("zxl");
        return zxl;
    }
}
