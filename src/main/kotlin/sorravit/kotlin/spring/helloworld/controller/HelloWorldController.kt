package sorravit.kotlin.spring.helloworld.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseBody
import org.springframework.web.bind.annotation.RestController

@Controller
@RequestMapping("/")
class HelloWorldController {
    @ResponseBody
    @GetMapping("/")
    fun helloWorld(): String {
        return "Hello from the container side (\"Hopefully\")"
    }
}