<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <script type="text/javascript">

	var socketConn = new WebSocket('ws://localhost:8080/socketHandler');


	function send() {
		var clientMsg = document.getElementById('clientMsg');
		if (clientMsg.value) {
			socketConn.send(clientMsg.value);
			clientMsg.value = '';
			var serverMsg = document.getElementById('serverMsg');
			serverMsg.value='';

		}
	}


	socketConn.onmessage = function(event) {
		var serverMsg = document.getElementById('serverMsg');serverMsg.value = "";
		serverMsg.value = event.data;

	}
</script>
</head>
<body>


<hr />
<label>Message</label>
<br>
<textarea rows="8" cols="8" id="clientMsg"></textarea>
<br>
<button onclick="send()">Send</button>
<br>
<label>Message</label>
<br>
<textarea rows="8" cols="8" id="serverMsg" readonly="readonly"></textarea>
<br>

<br>
<a href="<c:url value='/login' />">Click here to login</a>
<br>
<br>
<a href="<c:url value='/logout' />">Click here to logout</a>
<br>
</body>
</html>