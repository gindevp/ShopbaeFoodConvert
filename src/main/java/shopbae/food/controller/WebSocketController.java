package shopbae.food.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.controller.test.ChatMessage;

@Controller
@RequestMapping("/socket")
public class WebSocketController {
	@RequestMapping("/")
public String name() {
	return "account/test/socket";
}
  @MessageMapping("/chat.send")
  @SendTo("/topic/public")
  public ChatMessage send(ChatMessage message) {
	  System.out.println(message);
    return message;
  }

}
