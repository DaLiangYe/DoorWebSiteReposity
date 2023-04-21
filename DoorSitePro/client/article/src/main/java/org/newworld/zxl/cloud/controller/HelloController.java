package org.newworld.zxl.cloud.controller;

import org.newworld.zxl.cloud.pvo.TestRequest;
import org.newworld.zxl.cloud.result.SingleResult;
import org.newworld.zxl.cloud.util.ValitationOfParamRequest;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.websocket.server.PathParam;

@RestController
public class HelloController {

    @RequestMapping("/ok")
    public SingleResult<String> hello(@RequestBody @Valid TestRequest request, BindingResult result){
        ValitationOfParamRequest.validate(result);
        return  SingleResult.buildSuccess("OK");
    }

}
