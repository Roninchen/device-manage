package com.stylefeng.guns.rest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@EnableDubboConfiguration
//@EnableAsync
@SpringBootApplication(scanBasePackages  = {"com.stylefeng.guns"})
public class GatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }
}
