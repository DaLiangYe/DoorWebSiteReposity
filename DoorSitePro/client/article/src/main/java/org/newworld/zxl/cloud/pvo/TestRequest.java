package org.newworld.zxl.cloud.pvo;


import javax.validation.constraints.NotNull;

public class TestRequest {

    @NotNull(message = "name不能为空")
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}