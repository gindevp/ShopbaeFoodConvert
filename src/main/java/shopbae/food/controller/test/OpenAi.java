//package shopbae.food.controller.test;
//
//import com.openai.OpenAI;
//import com.openai.model.CompletionRequest;
//import com.openai.model.CompletionResponse;
//
//public class OpenAi {
//	
//
//	// ...
//
//	// Tạo đối tượng OpenAI với API key của bạn
//	OpenAI openAI = new OpenAI("YOUR_API_KEY");
//
//	// Tạo yêu cầu hoàn thành từ đoạn văn bản "input_text"
//	CompletionRequest request = new CompletionRequest.Builder()
//	    .prompt("input_text")
//	    .build();
//
//	// Gọi API hoàn thành và lấy kết quả trả về
//	CompletionResponse response = openAI.complete(request);
//
//	// Lấy phần kết quả từ API và in ra màn hình
//	System.out.println(response.getChoices().get(0).getText());
//}
