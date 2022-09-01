<h1>HTTP 가이드</h1>

<h2>HTTP 패킷</h2>
<p>클라이언트(Client)가 서버(Server)로 요청을 할때 전송하는 데이터를 HTTP 패킷(Packet)이라 한다. HTTP 패킷은 헤더(Header), 바디(Body)로 나누어진다.</p>
<li><b>헤더(Header)</b></li>
<p>클라이언트 정보, 브라우저 정보, 접속 URL과 같은 데이터를 담고 있다. 클라이언트가 요청할 때 사용하는 <b>요청 헤더(Request Header)</b>, 서버로부터 응답받는 <b>응답 헤더(Response Header)</b>로 나눌 수 있다.</p>
<li><b>바디(Body)</b></li>
<p>평소에는 비어있다가 특정 요청이 들어오면 데이터를 담게 된다. 클라이언트가 POST 요청할 때 사용하는 <b>요청 바디(Request Body)</b>, 서버가 요청받은 페이지 HTML 소스를 담을 때 사용하는 <b>응답 바디(Response Body)</b>로 나눌 수 있다.</p>

<h2>HTTP 메소드</h2>
<p>HTTP 메소드(HTTP Method)는 클라이언트가 웹 서버에게 요청할 때 필요한 목적, 데이터를 전달하는 메소드이다.</p>
<table>
    <th>Method</th>
    <th>Desc</th>
    <tr>
        <td>GET</td>
        <td>클라이언트가 서버로 요청할 때, 데이터를 URL 뒤에 붙인 <b>QueryString</b>의 형태로 전달하는 전송 방식이다.<br>브라우저에 따라서 길이에 제한이 있고, URL에 데이터가 노출된다는 단점이 있다. 주로 간단한 리소스를 조회할 때 사용한다. <b>==SELECT</b></td>
    </tr>
    <tr>
        <td>POST</td>
        <td>클라이언트가 서버로 요청할 때, 데이터를 인코딩하여 <b>HTTP 바디</b>를 통해 전달하는 전송 방식이다.<br>URL에 데이터가 노출되지 않고, 길이에 제한이 없다. 서버에 리소스를 생성, 업데이트할 때 사용한다. <b>==INSERT</b></td>
    </tr>
    <tr>
        <td>PUT</td>
        <td>클라이언트가 서버의 특정 데이터를 수정하기 위해서 사용하는 전송 방식이다.<br>수정할 데이터에 URL 파라미터(QueryString)를, 수정할 값에 HTTP 바디를 사용한다. <b>==UPDATE</b></td>
    </tr>
    <tr>
        <td>PATCH</td>
        <td>클라이언트가 서버의 특정 데이터의 일부를 수정하기 위해서 사용하는 전송 방식이다.<br>PUT과 유사하지만 데이터 전체가 아닌, 일부를 수정하는 의미로 사용한다. <b>==UPDATE</b></td>
    </tr>
    <tr>
        <td>DELETE</td>
        <td>클라이언트가 서버의 특정 데이터를 삭제하기 위해서 사용하는 전송 방식이다.<br>삭제에는 값이 필요하지 않으므로, HTTP 바디를 사용하지 않는다. <b>==DELETE</b></td>
    </tr>
</table>

```json

```

<table>
    <th>Scope</th>
    <th>Desc</th>
    <tr>
        <td>page</td>
        <td>클라이언트의 요청에 따라서 <b>page</b></td>
    </tr>
</table>

