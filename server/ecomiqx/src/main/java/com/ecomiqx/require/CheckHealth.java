package com.ecomiqx.require;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@RequestMapping("/check/health")
public class CheckHealth {

        @GetMapping
       public ResponseEntity<String> getMessage()
        {
            return ResponseEntity.status(HttpStatus.OK).body("OK");
        }

    @GetMapping("/db")
     public String dbPassowrd(){
            return "db is working fine here .......";
    }


}
