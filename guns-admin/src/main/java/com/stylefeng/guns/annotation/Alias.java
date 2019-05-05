package com.stylefeng.guns.annotation;

import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Alias {

    /**
     * 字段的别名
     * @return
     */
    String name() default "";
}
