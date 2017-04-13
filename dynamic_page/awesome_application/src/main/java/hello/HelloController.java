package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "<h1>Greetings from Spring Boot!</h1>";
    }

    @RequestMapping("/{name}")
    public String personal(@PathVariable String name) {
        return "<h1>Greetings from Spring Boot to "+name+"!</h1>";
    }

}