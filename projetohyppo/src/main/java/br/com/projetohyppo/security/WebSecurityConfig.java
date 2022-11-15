package br.com.projetohyppo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http
			.httpBasic()
			.and()
			.authorizeHttpRequests()
			.anyRequest().authenticated();
		
	}		
	
	// desabilita o spring security

//		 protected void configure1(HttpSecurity httpSecurity) throws Exception {
//	        httpSecurity.authorizeRequests().antMatchers("/login").permitAll();
//	        }

		//@Override
		//protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			//auth.userDetailsService(userDetailsServiceImpl).passwordEncoder(new BCryptPasswordEncoder());
		//}

}
