<h1>스크립트릿 가이드</h1>

<h2>스크립트 요소</h2>
<p>스크립트 요소(Scripting Elements)란 JSP에서 Java 코드를 사용하여 스크립팅할 수 있는 영역을 말한다. 종류로는 크게 선언부, 스크립트릿, 표현부가 있다.</p>

<h3>선언부</h3>
<p>선언부(Declaration)는 변수와 메소드를 선언할 때 사용하는 영역으로 다음과 같이 사용한다.</p>

```jsp
<%! 
    // 덧셈 결과를 return 하는 메소드.
    public int add(int a, int b) {
        return a + b;
    }
%>
```

<h3>스크립트릿</h3>
<p>스크립트릿(Scriptlet)은 JSP 문서에서 Java 코드를 범용적으로 실행할 수 있는 영역으로 다음과 같이 사용한다.</p>

```jsp
<%
    String a = "Hello Java";
    out.println("<h2>" + a + "</h2>");
%>
```

<h3>표현부</h3>
<p>표현부(Expression)는 스크립트릿, 선언부에서 생성된 변수의 값을 JSP 문서에 출력하고 싶을 때 사용한다.</p>

```jsp
<body>
    <h2><%=a%></h2>
</body>
```

<h2>내장 객체</h2>

<h3>내장 객체 정의</h3>
<p>내장 객체(Implicit Object)는 사용 빈도가 높은 객체를 선언과 초기화 없이 사용 가능하도록 웹 컨테이너가 사전 정의 하여 제공하는 Java 객체이다.스크립트릿 내부에서 사용이 가능하다.</p>

<h3>request</h3>
<p>request 객체는 클라이언트(웹 브라우저)에서 JSP 페이지(서버)로 전달되는 정보의 모임으로 HTTP 헤더 및 바디로 구성되어 있다. 웹 컨테이너는 HTTP 메시지를 통해서 HttpServletRequest 객체를 전달받고 사용자의 요구사항을 파악할 수 있다. request 객체의 메소드는 다음과 같다.</p>
<table>
    <th>메소드</th>
    <th>설명</th>
    <tr>
        <td>String getParameter(name)</td>
        <td>파라미터 name의 변수값을 얻는 메소드이다.</td>
    </tr>
    <tr>
        <td>String[] getParameterValues(name)</td>
        <td>파라미터 name의 모든 변수값을 얻는 메소드이다. 배열을 반환한다.</td>
    </tr>
    <tr>
        <td>Enumeration getParameterNames()</td>
        <td>요청에 의한 모든 파라미터 변수들을 Enumeration 타입으로 반환한다.</td>
    </tr>
    <tr>
        <td>String getProtocol()</td>
        <td>웹 서버로 요청할 때 사용된 프로토콜을 반환한다.</td>
    </tr>
    <tr>
        <td>String getServerName()</td>
        <td>웹 서버로 요청할 때 서버의 도메인명을 반환한다.</td>
    </tr>
    <tr>
        <td>String getMethod()</td>
        <td>웹 서버로 요청할 때 방식(GET, POST, PUT)을 반환한다.</td>
    </tr>
    <tr>
        <td>String getQueryString()</td>
        <td>웹 서버로 요청할 때 QueryString을 반환한다.</td>
    </tr>
    <tr>
        <td>String getRequestURI()</td>
        <td>웹 서버로 요청할 때 URL로부터 URI 값을 반환한다.<br>URI의 예) study/ch04/requestTest1.jsp</td>
    </tr>
    <tr>
        <td>String getRemoteHost()</td>
        <td>웹 서버로 요청할 때 클라이언트의 호스트명을 반환한다.</td>
    </tr>
    <tr>
        <td>String getRemoteAddr()</td>
        <td>웹 서버로 요청할 때 클라이언트의 IP 주소를 반환한다.</td>
    </tr>
    <tr>
        <td>String getServerPort()</td>
        <td>웹 서버로 요청할 때 서버의 포트 번호를 반환한다.</td>
    </tr>
    <tr>
        <td>String getContextPath()</td>
        <td>JSP 페이지의 공통 경로(Application Root)를 반환한다.</td>
    </tr>
    <tr>
        <td>String getHeader(name)</td>
        <td>웹 서버로 요청할 때 HTTP 요청 헤더명을 반환한다.</td>
    </tr>
    <tr>
        <td>Enumeration getHeaderNames()</td>
        <td>웹 서버로 요청할 때 모든 HTTP 요청 헤더명을 반환한다.</td>
    </tr>
</table>

<h3>response</h3>
<p>response 객체는 서버에서 클라이언트로 응답하는 정보들을 갖고 있다. 클라이언트는 HttpServletResponse 객체를 제공받는다. response 객체의 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>void setHeader(name, value)</td>
        <td>헤더 정보를 수정하는 메소드로, name의 헤더 정보를 value 값으로 설정한다.</td>
    </tr>
    <tr>
        <td>void setContentType(type)</td>
        <td>클라이언트의 요청 결과 페이지의 contentType을 설정한다.</td>
    </tr>
    <tr>
        <td>void sendRedirect(url)</td>
        <td>페이지를 리다이렉트하는 메소드로, url로 페이지가 이동한다.</td>
    </tr>
</table>

<h3>out</h3>
<p>out 객체는 JSP가 생성한 결과를 클라이언트에 전송하는 출력 스트림이다. 즉, 스크립트와 비스크립트(HTML)를 포함한 모든 정보는 out 객체를 거친다. out 객체의 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>boolean isAutoFlush()</td>
        <td>출력 버퍼가 가득할 때, 자동 flush(출력 및 삭제) 여부를 설정한다.</td>
    </tr>
    <tr>
        <td>int getBufferSize()</td>
        <td>출력 버퍼의 전체 크기를 반환한다.</td>
    </tr>
    <tr>
        <td>int getRemaining()</td>
        <td>남아 있는 출력 버퍼의 크기를 반환한다.</td>
    </tr>
    <tr>
        <td>void clearBuffer()</td>
        <td>출력 버퍼 내용을 전송하지 않고 삭제한다.</td>
    </tr>
    <tr>
        <td>void flush()</td>
        <td>출력 버퍼 내용을 전송하고 삭제한다.</td>
    </tr>
    <tr>
        <td>void println(string)</td>
        <td>string 값을 클라이언트에 전송한다.</td>
    </tr>
    <tr>
        <td>void close()</td>
        <td>현재 출력 버퍼의 내용을 클라이언트에 전송하고 스트림을 종료한다.</td>
    </tr>
</table>

<h3>pageContext</h3>
<p>pageContext 객체는 JSP의 콘텍스트(Context)로 다른 내장 객체를 구할 때, 페이지의 흐름을 제어할 때, 에러 데이터를 얻어낼 때 주로 사용한다. pageContext 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>ServletRequest getRequest()</td>
        <td>페이지 요청 정보를 갖는 request 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>ServletResponse getResponse()</td>
        <td>페이지 응답 정보를 갖는 response 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>JspWriter getOut()</td>
        <td>페이지 출력 스트림 out 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>HttpSession getSession()</td>
        <td>페이지 세션 정보를 갖는 session 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>getServletContext()</td>
        <td>페이지 서블릿 실행 환경 정보를 갖는 application 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>Object getPage()</td>
        <td>page의 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>ServletConfig getServletConfig()</td>
        <td>페이지 서블릿 설정 정보를 갖는 configue 내장 객체를 반환한다.</td>
    </tr>
    <tr>
        <td>Exception getException()</td>
        <td>에러 페이지의 예외 정보를 갖는 exception 내장 객체를 반환한다.</td>
    </tr>  
</table>

<h3>session</h3>
<p>session 객체는 클라이언트의 요청에 따라서 웹 브라우저의 정보를 저장하고 관리하는 내장 객체로서 클라이언트 당 1개만 할당된다. session 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>String getId()</td>
        <td>해당 웹 브라우저의 고유한 세션 ID를 반환한다.</td>
    </tr>
    <tr>
        <td>long getCreationTime()</td>
        <td>해당 세션의 생성 시간을 반환한다.</td>
    </tr>
    <tr>
        <td>long getLastAccessedTime()</td>
        <td>해당 웹 브라우저의 마지막 요청 시간을 반환한다.</td>
    </tr>
    <tr>
        <td>void setMaxInactiveInterval(time)</td>
        <td>해당 세션을 유지할 시간을 초 단위로 설정한다.</td>
    </tr>
    <tr>
        <td>int getMaxInactiveInterval()</td>
        <td>setMaxInactiveInterval(time) 설정값을 반환한다.</td>
    </tr>
    <tr>
        <td>boolean isNew()</td>
        <td>새로 생성된 세션의 경우 true를 반환한다.</td>
    </tr>
    <tr>
        <td>void invalidate()</td>
        <td>세션의 속성값을 모두 제거하여 무효화한다.</td>
    </tr>
</table>

<h3>application</h3>
<p>application 내장 객체는 WAS의 설정값을 갖는 context와 관련이 있다. WAS 당 하나만 생성되며 전체에서 공유하는 변수로 사용된다.서버 설정 정보, 자원 정보, 이벤트 로그와 같은 기능을 제공한다. application 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>String getServerinfo()</td>
        <td>웹 컨테이너의 이름과 버젼을 반환한다.</td>
    </tr>
    <tr>
        <td>String getMimeType(fileName)</td>
        <td>파라미터 파일의 MIME 타입을 반환한다.</td>
    </tr>
    <tr>
        <td>String getRealPath(path)</td>
        <td>지정 경로를 WAS 경로로 수정하여 반환한다.</td>
    </tr>
    <tr>
        <td>void log(message)</td>
        <td>로그 파일에 message를 기록한다.</td>
    </tr>
</table>

<h3>config</h3>
<p>config 내장 객체는 서블릿이 초기화할 때 참조할 설정 정보를 전달하는 역할을 한다. config 객체는 웹 컨테이너 당 하나만 생성된다. config 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>Enumeration getInitParameterNames()</td>
        <td>모든 초기화 파라미터 명을 반환한다.</td>
    </tr>
    <tr>
        <td>String getInitParameter(name)</td>
        <td>이름이 name인 초기화 파라미터 값을 반환한다.</td>
    </tr>
    <tr>
        <td>String getServletName()</td>
        <td>서블릿명을 반환한다.</td>
    </tr>
    <tr>
        <td>ServletContext getServletContext()</td>
        <td>실행하는 서블릿 객체를 반환한다.</td>
    </tr>
</table>

<h3>page</h3>
<p>page 내장 객체는 JSP 자체를 나타내는 객체로서 this 키워드로 자신을 참조할 수 있다. 현재 거의 사용되지 않으므로 메소드는 생략했다.</p>

<h3>exception</h3>
<p>exception 내장 객체는 JSP 페이지에서 예외가 발생할 경우, 처리 페이지에 전달되는 객체이다. page 지시어의 isErrorPage 속성이 참일경우만 사용이 가능하다. exception 메소드는 다음과 같다.</p>
<table>
    <th>메소드명</th>
    <th>설명</th>
    <tr>
        <td>String getMessage()</td>
        <td>발생한 예외 메시지를 반환한다.</td>
    </tr>
    <tr>
        <td>String toString()</td>
        <td>예외 클래스명과 메시지를 반환한다.</td>
    </tr>
    <tr>
        <td>String printStackTrace()</td>
        <td>예외를 역추적하기 위해서 표준 예외 스트림을 출력한다.</td>
    </tr>
</table>