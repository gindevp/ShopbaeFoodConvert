<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>WebSocket Chat Example</title>
</head>
<body>
  <h2>WebSocket Chat Example</h2>
  <div id="chat-section">
    <ul id="message-list">
    </ul>
    <form action="#" id="message-form">
      <input type="text" id="message-input" />
      <input type="submit" value="Send" />
    </form>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-JUMjoW8OzDJw4oFpWIB2Bu/c6768ObEthBMVSiIx4ruBIEdyNSUQAjJNFqT5pnJ6" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1.5.0/dist/sockjs.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/stomp.js@2.3.3/lib/stomp.min.js"></script>

  <script>
    var socket = new SockJS("/websocket");
    var stompClient = Stomp.over(socket);

    stompClient.connect({}, function (frame) {
      console.log("Connected: " + frame);
      stompClient.subscribe("/topic/public", function (message) {
        showMessage(JSON.parse(message.body).content);
      });
    });

    function sendMessage() {
      stompClient.send("/app/chat.send", {}, JSON.stringify({ content: $("#message-input").val() }));
      $("#message-input").val("");
      return false;
    }

    function showMessage(message) {
      $("#message-list").append("<li>" + message + "</li>");
    }

    $("#message-form").submit(function (e) {
      e.preventDefault();
      sendMessage();
    });
  </script>
</body>
</html>
