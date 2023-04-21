package org.newworld.zxl.cloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


/*
* 配置中心的极大注意点：
* ①因为配置中心server与client的链接早于client与注册中心的链接，因此client寻址server应采用IP+port直连的形式
* ②如果config server使用的是本地仓库文件，那么文件必须要提交到本地仓库才会生效。并且只需提交至本地仓库而无需重启config server即可生效。
* ③config client不支持热部署，如需支持热部署，可后期增加研发投入
* ④受限于github网络连接不稳定原因，请优先选择使用git本地仓的方式。
* */
@SpringBootApplication
@EnableEurekaClient
@EnableConfigServer
public class DistributeConfig {
    public static void main(String[] args) {
        SpringApplication.run(DistributeConfig.class,args);
    }
}