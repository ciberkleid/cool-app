package io.pivotal.coolapp;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class CoolAppController {

    String[] coolSayings = {
            "Cool beans!",
            "Cool as a cucumber",
            "Cool as a breeze on a hot summer day",
            "Cool like a fool in a swimming pool"
    };

    Random random = new Random();

    @RequestMapping("/")
    public String getCoolSaying() {
        int index = random.nextInt(coolSayings.length);
        return "Hello, world";
    }

}
