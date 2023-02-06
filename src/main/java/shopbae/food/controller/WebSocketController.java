package shopbae.food.controller;



import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.controller.test.Message;
import shopbae.food.controller.test.OutputMessage;

@Controller
@RequestMapping("/a")
public class WebSocketController {
	
	@RequestMapping("/")
	public String name() {
		return "account/test/socket";
	}
	@MessageMapping("/chat")
	@SendTo("/topic/messages")
	public OutputMessage send(@Payload Message message) throws Exception {
		String time = new SimpleDateFormat("HH:mm").format(new Date());
		System.out.println(message.getFrom()+" "+ message.getText());
	    return new OutputMessage(message.getFrom(), message.getText(), time);
	}

}
