package br.com.rolebsb.configuracao;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages="br.com.rolebsb.controladores")
public class ConfigWeb extends WebMvcConfigurerAdapter{

	private int maxUploadSizeInMb = 5 * 1024 * 1024;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setPrefix("/WEB-INF/");
		viewResolver.setSuffix(".jsp");
		viewResolver.setViewClass(JstlView.class);
		registry.viewResolver(viewResolver);
	}
	
	 @Bean
	   public CommonsMultipartResolver multipartResolver() {

	        CommonsMultipartResolver cmr = new CommonsMultipartResolver();
	        cmr.setMaxUploadSize(maxUploadSizeInMb * 2);
	        return cmr;

	    }
	
}
