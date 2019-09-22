package io.yodo.spring.security.demo.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Arrays;
import java.util.logging.Logger;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "io.yodo.spring.security.demo")
@PropertySource("classpath:persistence-postgres.properties")
public class DemoConfig implements WebMvcConfigurer {

    private final Environment env;

    private Logger logger = Logger.getLogger(getClass().getName());

    @Autowired
    public DemoConfig(Environment env) {
        this.env = env;
    }

    // view resolver - thing to map view names to templates
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver vr = new InternalResourceViewResolver();
        vr.setPrefix("WEB-INF/view/");
        vr.setSuffix(".jsp");
        return vr;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @SuppressWarnings("ConstantConditions")
    @Bean
    public DataSource securityDataSource() throws PropertyVetoException {
        // create connection pool
        ComboPooledDataSource secDataSource = new ComboPooledDataSource();

        // set jdbc driver
        secDataSource.setDriverClass(env.getProperty("jdbc.driver"));

        // set database connection props
        String jdbcUrl = env.getProperty("jdbc.url");
        String jdbcUser = env.getProperty("jdbc.user");
        String jdbcPassword = env.getProperty("jdbc.password");

        logger.info("Connecting to " + jdbcUrl + " as " + jdbcPassword);

        secDataSource.setJdbcUrl(jdbcUrl);
        secDataSource.setUser(jdbcUser);
        secDataSource.setPassword(jdbcPassword);

        // set connection pool props
        int cpInitPoolSize = env.getProperty("connection.pool.initialPoolSize", Integer.class);
        int cpMinPoolSize = env.getProperty("connection.pool.minPoolSize", Integer.class);
        int cpMaxPoolSize = env.getProperty("connection.pool.maxPoolSize", Integer.class);
        int cpMaxIdleTime = env.getProperty("connection.pool.maxIdleTime", Integer.class);

        secDataSource.setInitialPoolSize(cpInitPoolSize);
        secDataSource.setMinPoolSize(cpMinPoolSize);
        secDataSource.setMaxPoolSize(cpMaxPoolSize);
        secDataSource.setMaxIdleTime(cpMaxIdleTime);

        return secDataSource;
    }
}
