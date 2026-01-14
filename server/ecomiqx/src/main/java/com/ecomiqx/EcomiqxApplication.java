package com.ecomiqx;

import com.ecomiqx.environment.Environment;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EcomiqxApplication
{

	public static void main(String[] args) {
		Environment.loadEnv();
		SpringApplication.run(EcomiqxApplication.class, args);
	}

}
