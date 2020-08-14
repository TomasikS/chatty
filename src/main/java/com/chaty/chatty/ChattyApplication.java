package com.chaty.chatty;

import com.chaty.chatty.user.ActiveUserStore;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class ChattyApplication {

	public static void main(String[] args) {
		SpringApplication.run(ChattyApplication.class, args);
	}

	@Bean
	public ActiveUserStore activeUserStore(){
		return new ActiveUserStore();
	}

}
