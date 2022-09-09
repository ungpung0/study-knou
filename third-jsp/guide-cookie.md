<h3>쿠키 정의</h3>
<p>HTTP 프로토콜은 클라이언트의 정보를 저장하지 않는 <b>Stateless</b>. 클라이언트와 연결을 지속하지 않는 <b>Connectionless</b> 특성을 가지고 있다. 따라서 동일한 브라우저에서 재요청을 했을 때 동일 클라이언트 여부를 파악할 수 없다.<br>이러한 문제를 해결하기 위해서 등장한 것이 <b>쿠키(Cookie)</b>이다. 쿠키는 서버가 아닌 클라이언트가 저장하는 임시 파일인데, 클라이언트가 요청할 때 같이 전송함으로써 동일 브라우저 여부를 판단할 수 있다.</p>

<h3>쿠키 메소드</h3>
<p>JSP에서는 스크립트릿 내부에 다음 메소드를 통해서 쿠키를 조작할 수 있다.</p>
<table>
    <th>Method</th>
    <th>Desc</th>
    <tr>
        <td>getName()</td>
        <td>쿠키의 이름을 반환한다.</td>
    </tr>
    <tr>
        <td>getValue()</td>
        <td>쿠키의 값을 반환한다.</td>
    </tr>
    <tr>
        <td>getDomain()</td>
        <td>쿠키의 도메인을 반환한다.</td>
    </tr>
    <tr>
        <td>getPath()</td>
        <td>쿠키의 경로를 반환한다.</td>
    </tr>
    <tr>
        <td>getMaxAge()</td>
        <td>쿠키의 유효시간을 반환한다.</td>
    </tr>
    <tr>
        <td>setValue()</td>
        <td>쿠키의 값을 설정한다.</td>
    </tr>
    <tr>
        <td>setDomain()</td>
        <td>쿠키의 도메인을 설정한다.</td>
    </tr>
    <tr>
        <td>setPath()</td>
        <td>쿠키의 경로를 설정한다.</td>
    </tr>
    <tr>
        <td>setMaxAge()</td>
        <td>쿠키의 유효시간을 설정한다. 0으로 설정하면 쿠키를 삭제할 수 있다.</td>
    </tr>
</table>

<h3>쿠키 예제</h3>
<li>쿠키 생성하기</li>

```jsp
<%
    // 쿠키 생성 예제.
    Cookie cookie = new Cookie("cookieName", "cookieValue");
    response.addCookie(cookie);
%>
```

<li>쿠키 읽어오기</li>

```jsp
<%
    // 쿠키 읽기 예제.
    Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0) {
        for(int i = 0; i < cookies.length; i++) {
            out.println(cookies[i].getName() + ":" + cookies[i].getValue());
        }
    }else {
        out.println("There is no Cookies!");
    }
%>
```

<li>쿠키 변경하기</li>

```jsp
<%
    // 쿠키 변경 예제.
    Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0) {
        for(int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("cookieName")) {
                Cookie cookie = new Cookie("cookieName", "cookieValueModified");
                response.addCookie(cookie);
            }
        }
    }
%>
```

<li>쿠키 삭제하기</li>

```jsp
<%
    // 쿠키 삭제 예제.
    Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0) {
        for(int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName.equals("cookieName")) {
                Cookie cookie = new Cookie("cookieName", "");
                cookie.setMaxAge(0); // 수명 => 0
                response.addCookie(cookie);
            }
        }
    }
%>
```