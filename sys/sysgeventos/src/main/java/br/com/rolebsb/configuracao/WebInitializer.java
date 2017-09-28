package br.com.rolebsb.configuracao;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{ConfigWeb.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/app/"};
    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return null;
    }

}
