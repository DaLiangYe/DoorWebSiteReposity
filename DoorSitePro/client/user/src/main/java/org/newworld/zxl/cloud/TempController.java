package org.newworld.zxl.cloud;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TempController {
    @RequestMapping("hello")
    public String test(){
        return "hello world";
    }
}
