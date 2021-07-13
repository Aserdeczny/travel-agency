package pl.sda.travelagency.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import pl.sda.travelagency.repository.UserEntityRepository;

@Configuration
@EnableWebSecurity

public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    private final UserEntityRepository repository;

    public WebSecurityConfig(UserEntityRepository repository) {
        this.repository = repository;
    }

   // @Bean
    //protected PasswordEncoder passwordEncoder() {
     //   return new BCryptPasswordEncoder();
    //}


//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("admin").password("admin").roles("admin")
//                .and()
//                .withUser("guest").password("guest").roles("guest")
//                .and()
//                .withUser("user").password("user").roles("user");
//    }
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
//                .antMatchers("/dba/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DBA')")
//                .antMatchers("/login*").permitAll()
//                .antMatchers("/header*").permitAll()
//                .antMatchers("/regist*").permitAll()
//                .anyRequest().authenticated();
//        http.formLogin()
//                .loginPage("/login")
//                .loginProcessingUrl("/appLogin")
//                .usernameParameter("username")
//                .passwordParameter("pass")
//                .defaultSuccessUrl("/index", true)
//        ;
//        // .failureHandler(authenticationFailureHandler())
//        http.csrf().disable()
//                .headers().frameOptions().disable();
//        http.logout()
//                .logoutSuccessUrl("/login")
//                .logoutUrl("/logout")
//        //  .logoutSuccessHandler(logoutSuccessHandler())
//        ;
//    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //auth.authenticationProvider(authenticationProvider());
        auth.inMemoryAuthentication()
               .withUser("user").password("{noop}user").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("{noop}admin").roles("ADMIN");
      auth.inMemoryAuthentication().withUser("dba").password("{noop}dba").roles("DBA");
    }
    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        AppUserDetailsService appUserDetailsService = new AppUserDetailsService(repository);
        provider.setUserDetailsService(appUserDetailsService);
        return provider;
    }

    /*@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("AdminController", "MainController")
                .hasAnyAuthority("ROLE_USER")
                .and()
                .csrf().disable()
                .headers().frameOptions().disable()
                .and()
                .formLogin()
                .loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/login")
                //.failureForwardUrl("/login?error")
                .successForwardUrl("/index")
                .defaultSuccessUrl("/index", true)
                .and()
                .logout()
                .logoutSuccessUrl("/login");
        http.csrf().disable()
                .headers().frameOptions().disable();
}*/

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/dba/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DBA')")
                .antMatchers("/login*").permitAll()
                .antMatchers("/header*").permitAll()
                .antMatchers("/regist*").permitAll()
                .anyRequest().authenticated();
        http.formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/appLogin")
                .usernameParameter("username")
                .passwordParameter("password")
                .defaultSuccessUrl("/index", true)
        ;
        // .failureHandler(authenticationFailureHandler())
        http.csrf().disable()
                .headers().frameOptions().disable();
        http.logout()
                .logoutSuccessUrl("/login")
                .logoutUrl("/logout")
        //  .logoutSuccessHandler(logoutSuccessHandler())
        ;
    }
    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**");
    }
}
