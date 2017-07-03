package br.com.caiser.financa.aplicavel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@EnableAutoConfiguration
public class Boot {
	public static void main(String[] args) {
		SpringApplication.run(Boot.class, args);
	}

	@GetMapping("/")
	@ResponseBody
	public String home() {
		return "home";
	}
}
