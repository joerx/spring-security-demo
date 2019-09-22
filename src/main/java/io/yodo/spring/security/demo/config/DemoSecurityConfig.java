package io.yodo.spring.security.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

    private static final String ROLE_PHILOSOPHER = "PHILOSOPHER";
    private static final String ROLE_STOIC = "STOIC";
    private static final String ROLE_ACADEMIC = "ACADEMIC";

    private final DataSource securityDataSource;

    @Autowired
    public DemoSecurityConfig(DataSource securityDataSource) {
        this.securityDataSource = securityDataSource;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(securityDataSource);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
//                .antMatchers("/**").permitAll()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/forum/**").hasRole(ROLE_PHILOSOPHER)
                .antMatchers("/stoa/**").hasRole(ROLE_STOIC)
                .antMatchers("/academy/**").hasRole(ROLE_ACADEMIC)
                .and()
                .formLogin()
                    .loginPage("/login")
                    .loginProcessingUrl("/authenticate")
                    .permitAll()
                .and()
                .logout()
                    .logoutSuccessUrl("/?logout")
                    .permitAll()
                .and()
                .exceptionHandling()
                    .accessDeniedPage("/access-denied");
    }
}
