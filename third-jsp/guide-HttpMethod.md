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

<h2>웹 캐시</h2>
<h3>웹 캐시 정의</h3>
<p>매번 네트워크를 경유하여 리소스를 가져오는 것은 서버 리소스 낭비이다. 이것을 방지하기 위해서 사용하는 첫 번째 기술이 웹 캐시이다.</p>
<p>웹 캐시(Web Cache)는 클라이언트가 서버로부터 응답받은 HTML, JS, CSS 등의 리소스를 복사본으로 저장하여, 같은 요청을 할때 재사용하는 방식으로 동작한다. 클라이언트에 액세스 속도 증가를, 서버에 트래픽 감소를 가져다주는 유용한 기술이다.</p>

<h3>웹 캐시 종류</h3>
<li>브라우저 캐시</li>
<p>브라우저 캐시(Browser Cache)는 클라이언트의 브라우저에서 사용하는 내부 디스크 캐싱 방식이다. 주로, 리소스를 공유할 필요없는 개인의 캐시에 사용한다.<br>(예) 뒤로가기, 자동로그인</p>
<li>프록시 캐시</li>
<p>프록시 캐시(Proxy Cache)는 클라이언트와 서버 사이에 캐싱을 수행하는 중계 서버를 두어 트래픽을 분산하는 기술이다. 중계 서버에는 침입 차단 시스템(IPS, Intrusion Prevention System), 방화벽(Firewall)이 같이 설치되어 보안 역할을 수행하기도 한다.<br>(예) 해외에 본 서버(Origin Server)를 두고있는 한국 캐시 서버</p>

<h3>캐시 헤더 속성</h3>
<p>HTML 요청 및 응답 헤더는 Cache-Control, Expires, ETag 등의 속성을 지정하여 캐시 제어가 가능하다.</p>

<li>캐시 여부 속성</li>
<table>
    <th>Property</th>
    <th>Desc</th>
    <tr>
        <td>no-cache</td>
        <td>응답 데이터를 캐싱할때 데이터 유효성 검사를 하도록 설정한다. max-age=0과 동일하게 동작한다.</td>
    </tr>
    <tr>
        <td>no-store</td>
        <td>어떠한 데이터도 캐싱하지 않는다.</td>
    </tr>
    <tr>
        <td>public</td>
        <td>프록시 서버와 같은 공유 캐시에서 캐싱을 허용한다.</td>
    </tr>
    <tr>
        <td>private</td>
        <td>브라우저 캐시와 같은 로컬 캐시에서만 캐싱을 허용한다.</td>
    </tr>
</table>

<li>캐시 만료 속성</li>
<table>
    <th>Property</th>
    <th>Desc</th>
    <tr>
        <td>max-age</td>
        <td>캐시가 유효하다고 판단할 수 있는 상대적인 시간이다. 시간 이내라면 캐시된 데이터를 사용하고, 시간 초과라면 유효성 검증을 요청한다.</td>
    </tr>
    <tr>
        <td>s-maxage</td>
        <td>max-age와 동작방식은 일치하나, 공유 캐시만을 설정한다.</td>
    </tr>
    <tr>
        <td>max-stale</td>
        <td>만료된 이후에도 데이터를 사용하는 것을 허용하는 시간이다. 시간 이내라면 만료된 캐시를 사용할 수 있다.</td>
    </tr>
    <tr>
        <td>min-fresh</td>
        <td>캐시가 변경되지 않아야 할 최소 시간이다. 시간 이내라면 서버의 해당 데이터는 변경되지 않아야만 한다.</td>
    </tr>
</table>

<li>캐시 검증 속성</li>
<table>
    <th>Property</th>
    <th>Desc</th>
    <tr>
        <td>must-revalidate</td>
        <td>캐시된 데이터를 사용하기 전에 반드시 유효성 검사를 마쳐야한다. 네트워크 오류 상황의 만료된 캐시 사용을 방지하기 위해서이다.</td>
    </tr>
    <tr>
        <td>proxy-revalidate</td>
        <td>must-revalidate와 동작방식은 일치하나, 공유 캐시만을 설정한다.</td>
    </tr>
    <tr>
        <td>immutable</td>
        <td>컨텐츠가 만료되지 않았다면 재검증 요청을 전송하지 않는다.</td>
    </tr>
</table>

<li>캐시 기타 속성</li>
<table>
    <th>Property</th>
    <th>Desc</th>
    <tr>
        <td>only-if-cached</td>
        <td>캐시된 데이터가 있을 경우에만 반환한다. 캐시된 데이터가 없으면 서버에 요청하지 않는다.</td>
    </tr>
    <tr>
        <td>no-transform</td>
        <td>캐싱할 데이터에 대해서 Content-Encoding, Content-Range와 같은 압축 및 포맷 변환 등의 작업을 수행하지 않는다.</td>
    </tr>
</table>

```jsp
<%
    // 캐시 방지 스크립트릿 예제.
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0 호환 캐시 방지.
    response.setDateHeader("Expires", 0);     // 캐시 폐기 시간 = 0

    // HTTP 1.1와 같은 경우 캐시 방지.
    if(request.getProtocol().equals("HTTP/1.1")) {
        response.setHeader("Cache-Control", "no-cache");
    }
%>
```