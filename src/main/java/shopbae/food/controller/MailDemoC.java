package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.model.Mail;
import shopbae.food.service.MailService;
@Controller
@RequestMapping("/mail")
public class MailDemoC {
	@Autowired
    private MailService mailService;

    @GetMapping("")
    public String home(){
    	System.out.println("mail");
        Mail mail = new Mail();
        mail.setMailFrom("nguyenhuuquyet07092001@gmail.com");
        mail.setMailTo("quuyyeett@gmail.com");
        mail.setMailSubject("Spring Boot - Email Example");
        mail.setMailContent("Learn How to send Email using Spring Boot!!!");

        mailService.sendEmail(mail);
        return "redirect:/home";
    }
}
