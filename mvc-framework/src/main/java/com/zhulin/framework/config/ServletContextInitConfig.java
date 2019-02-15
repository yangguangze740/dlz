package com.zhulin.framework.config;

import com.zhulin.common.constant.Constants;
import com.zhulin.system.domain.UiConfig;
import com.zhulin.system.service.IUiConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import java.util.List;

@Configuration
public class ServletContextInitConfig {

    @Autowired
    private IUiConfigService uiConfigService;

    @Bean
    public ServletContextInitializer initializer() {

        return new ServletContextInitializer() {
            @Override
            public void onStartup(ServletContext servletContext) throws ServletException {

                List<UiConfig> configs = uiConfigService.selectUiConfigList(new UiConfig());

                UiConfig config = null;

                if (configs.isEmpty()) {
                    config = new UiConfig();

                    config.setUiConfigId(Constants.UI_CONFIG_DEFAULT_ID);
                    config.setUiTitleName(Constants.UI_CONFIG_DEFAULT_TITLE_NAME);
                    config.setLittleTitle(Constants.UI_CONFIG_DEFAULT_LITTLE_TITLE);
                    config.setFaviconIco(Constants.UI_CONFIG_DEFAULT_TITLE_ICO_FILE_NAME);
                    config.setLoginImage(Constants.UI_CONFIG_DEFAULT_LOGIN_IMAGE_FILE_NAME);
                    config.setSystemName(Constants.UI_CONFIG_DEFAULT_SYSTEM_NAME);
                } else {
                    config = configs.get(0);
                }

                servletContext.setAttribute(Constants.UI_CONFIG_KEY, config);
            }
        };
    }
}
