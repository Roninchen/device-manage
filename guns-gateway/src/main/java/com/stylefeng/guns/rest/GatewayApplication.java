package com.stylefeng.guns.rest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

//@EnableDubboConfiguration
//@EnableAsync
@EnableSwagger2
@SpringBootApplication(scanBasePackages  = {"com.stylefeng.guns"})
public class GatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }
}
