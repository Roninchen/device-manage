package com.stylefeng.guns.rest.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket computeRestApi() {
        return new Docket(DocumentationType.SWAGGER_2).groupName("filenamager")
                .select()  // 选择那些路径和api会生成document
                .apis(RequestHandlerSelectors.basePackage("com.stylefeng.guns.rest.modular.user")) // 拦截的包路径
                .paths(PathSelectors.any())// 拦截的接口路径
                .build();
    }

    private ApiInfo computeApiInfo() {
        Contact contact = new Contact("XXXX", "XXXX", "XXXXX");
        ApiInfo apiInfo = new ApiInfoBuilder()
                .title("并行计算服务 - API接口")
                .description("REST风格API")
                .contact(contact)
                .version("1.0")
                .build();
        return apiInfo;
    }

}
