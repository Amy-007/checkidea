package com.amy.demo.utils;

import org.springframework.stereotype.Component;


@Component
public class StaticInitializerUtil {

    private TokenSettings tokenSettings;

    public StaticInitializerUtil(TokenSettings tokenSettings) {
        JwtTokenUtil.setTokenSettings(tokenSettings);
    }
}
