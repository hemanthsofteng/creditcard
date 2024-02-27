package springbootjsp.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/account")
public class TestController {

    @Value("${db.username}")
    private String dbUserName;
    @Value("${db.password}")
    private String dbPassword;
    
    @GetMapping(value = "/{accountNo}/balance",produces = MediaType.TEXT_PLAIN_VALUE)
    public String getMethodName(@PathVariable("accountNo") String accountNo) {
        return "userName:"+dbUserName+" - password:"+dbPassword;
    }
    
}
