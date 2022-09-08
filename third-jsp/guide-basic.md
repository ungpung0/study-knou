<h1>용어 정리</h1>

<h2>WWW</h2>
<b>WWW(World Wide Web, 월드 와이드 웹)</b>은 인터넷에 연결된 정보들을 정해진 통신 규약(Protocol)을 통해 탐색할 수 있게 만들어주는 서비스이다. 정보들은 주로 문서의 형태를 띄우고 있는데 <b>하이퍼 텍스트(Hypertext)</b> 형식으로 

<h2>웹 문서</h2>

<h3>정적 웹 페이지(Static Webpage)</h3>
<p>정적인 형태의 문서로서 항상 동일한 결과를 가져온다. 주로 소개글, 포트폴리오 등의 내용이 고정적인 페이지에 사용한다.<br><b>클라이언트(Client)</b>가 <b>서버(Server)</b>에게 요청을 전달하면 해당 문서를 전달하는 방식으로 작동한다. 아래는 html로 작성된 정적 웹 페이지의 예이다.</p>

```html
<HTML>
    <HEAD>
        <TITLE>HOMEPAGE</TITLE>
    </HEAD>
    <BODY>
        <h2>WELCOME!!!</h2>
    </BODY>   
</HTML>
```

<h3>정적 웹 페이지의 특징</h3>
<li>저장되어 있는 문서를 보여주기 때문에 서비스가 한정적이다.</li>
<li>CRUD 작업을 개발자가 직접 편집해야 하기 때문에 관리가 힘들다.</li>
<li>요청에 따른 파일만을 전송하기 때문에 속도가 빠르다.</li>
<li>단순한 문서들을 다루기 때문에, 비용이 적고 백업 및 복원이 쉽다.</li>
<p>※ CRUD 는 CREATE REMOVE UPDATE DELETE의 약자.</p>

<h3>동적 웹 페이지(Dynamic Webpage)</h3>
<p>동적인 형태의 문서로서 동적으로 생성된후 가져온다. 게시판, 블로그와 같은 사용자의 요청, 시간, 상황에 따라서 내용이 달라지는 유연한 페이지에 사용한다.<br>클라이언트의 요청을 처리한 후에 생성된 문서를 전달하는 방식으로 작동한다. 아래는 jsp로 작성된 동적 웹 페이지의 예이다.</p>

```jsp
<%@ page language="java" contentType="text/html;charset=utf-8" %>
<HTML>
    <HEAD>
        <TITLE>HOMEPAGE</TITLE>
    </HEAD>
    <BODY>
        <h2>WELCOME!!!</h2>

    </BODY>
</HTML>
```

<h3>동적 웹 페이지의 특징</h3>
<li>별도의 생성 작업이 필요하기 때문에 속도가 느리다.</li>
<li>추가적인 처리를 위한 애플리케이션 서버가 필요하다.</li>
<li>CRUD와 같은 처리를 지원하므로 다양한 서비스를 구현할 수 있다.</li>

<h2>웹 서비스</h2>
<p>동적인 웹을 구성하기 위해서 필요한 서비스는 크게 나누어 웹 클라이언트, 웹 서버, 웹 애플리케이션 서버, 데이터베이스로 나눌 수 있을 것이다.</p>

<h3>웹 클라이언트(Web Client)</h3>
<p>웹 클라이언트는 웹 서비스를 제공받는 사용자를 의미한다. 클라이언트는 웹 브라우저(Web Browser)를 사용하여 웹 서버와 통신하며 정보를 탐색한다. 대표적인 웹 브라우저로 Google Chrome, Firefox를 들 수 있다.</p>

<h3>웹 서버(Web Server)</h3>
<p>클라이언트의 HTTP 요청을 받아 정적인 콘텐츠를 제공하는 서버이다. 대표적인 프로그램으로 Apache Server, Nignx를 들 수 있다.</p>

<h3>웹 애플리케이션 서버(WAS, Web Application Server)</h3>
<p>WAS는 클라이언트의 요청에 따라서 알고리즘, 비즈니스 로직, 데이터베이스 조회 등의 동적인 컨텐츠를 제공하는 서버이다. 일반적으로 웹 서버에 웹 컨테이너(Web Container)를 더한 것으로 설명한다. 대표적인 프로그램으로 Apache Tomcat, JBoss, Jeus를 들 수 있다.<br>요청을 받을 때마다 매번 프로세스를 생성하지 않고 스레드를 생성하여 관리하므로 서버의 부담을 줄일 수 있다.</p>

<h3>웹 컨테이너(Web Container)</h3>
<p>웹 컨테이너(Web Container)는 JSP, PHP, ASP 등의 파일들을 실행하고 결과를 웹 서버로 전송하는 웹 서버의 컴포넌트이다. 일반적으로 웹 서버와 분리해서 설명하는 이유는 다음과 같다.</p>
<li>기능적으로 분리하여 서버의 부하를 방지하기 위하여.</li>
<li>물리적으로 분리하여 서버의 보안을 강화하기 위하여.</li>
<li>여러 WAS를 연결하여 분산 처리를 하여 예외상황 시 무중단 운영을 위하여.</li>

<h3>데이터베이스(DB, Database)</h3>
<p>구조화된 정보를 모아서 저장하는 공간이다. 일반적으로 <b>데이터베이스 관리 시스템(DBMS, Database Management System)</b>에 의해서 관리되며 작성 및 조회에는 SQL(Structured Query Language)를 사용한다. 웹 서비스에서는 주로 회원 정보, 게시글 목록 등에 사용할 수 있을 것이다.</p>

<h3>CGI(Common Gateway Interface)</h3>
<p>동적으로 웹 페이지를 생성하기 위한 방식 중 하나로서 프로그램을 실행하여 HTML 코드를 생성한 후 클라이언트로 전달한다. WAS와 달리 요청한 만큼의 프로세스를 생성하여 서버에 부담이 된다. 아래는 CGI 방식으로 작성된 동적 웹 페이지의 예이다.</p>

```java
printf("<html>\n\n<head><title>HOMEPAGE</title></head>\n\n");
printf("<body>\n");
printf("<h2>WELCOME!!!</h2>\n");
printf("</body>\n\n</html>");
```

<h2>JSP와 서블릿(Servlet)</h2>
<h3>서블릿(Servlet)</h3>
<p>서블릿은 <b>서버(Servlet)</b>과 <b>애플릿(Applet)</b>의 합성어로서 웹 페이지를 동적으로 생성하기 위해 사용하는 Java 기반 개발 기술이다.<br>Java 언어로 서블릿 클래스를 생성하고 컴파일된 코드를 서버에 업로드하여 서비스를 제공한다. 때문에 소스를 수정할 때마다 재업로드가 필요하다.</p>

```java
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        httpServletRequest.setContentType("text/html; charset=UTF-8");
        PrintWriter printWirter = response.getWriter();

        printWriter.println("<HTML><HEAD><TITLE>LOGIN!!!</TITLE></HEAD>");
        printWriter.println("<BODY><H2>HELLO Servlet</H2>");
        printWriter.println("Current Date: " + new java.util.Date());
        printWriter.println("</BODY></HTML>");
    }
}
```

<h3>JSP(Java Server Page)</h3>
<p>서블릿을 대체하여 사용할 수 있는 스크립트 언어이다. JSP는 WAS를 통해 자동으로 서블릿으로 변환되고 컴파일된다.</p>

<h2>HTTP</h2>
<p>HTTP(Hypertext Transfer Protocol) 프로토콜은 간단하게 설명하면 웹 서버와 클라이언트가 통신할 때 사용하는 일련의 규약이다.<br>요청을 위해서 접속을 해야하며, 서버의 응답 이후에는 클라이언트의 상태를 유지하지 않는다. 덕분에 웹 서버의 부담은 줄어드나, 상태 관리를 위해서 쿠키, 세션이 필요하다.</p>

<h3>HTTP 요청 및 응답 절차</h3>
<p>1. 사용자가 웹 브라우저에 URL 주소를 입력한다.<br>2. DNS(Domain Name System)에 URL의 IP 주소를 요청한다.<br>3. 웹 서버와 TCP 연결을 시도한다.<br>4. 연결을 성공할 시 요청 메시지를 전송한다.(REQUEST)<br>5. 웹 서버가 클라이언트에게 웹 페이지를 전송한다.(RESPONSE)<br>6. 연결을 종료하고 문서를 출력한다.</p>

<h3>DNS(Domain Name System)</h3>
<p>미리 설정되어있는 URL의 웹 사이트의 주소를 IP 주소로 변환해주는 역할을 하는 시스템이다.</p>

<h3>전송 제어 프로토콜(TCP, Transmission Control Protocol)</h3>
<p>인터넷 환경에서 데이터를 메시지 형태로 전송할 때 사용하는 프로토콜로서 연결형 서비스이다.</p>


<h3>HTTP 요청 메시지 구조</h3>

```
// 시작 라인
GET /index.html HTTP/ 1.1

// 헤더
Host: www.w3.org
Referer: http://www.w3.org/hypertext/DataSources/Overview.html
Accept: image/gif, image/x-xbitmap, image/jpeg...
Accept-Language: ko
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)
Content-Length: 43
Content-Type: application/x-www-form-urlencoded

// 바디
Body: -
```

<p>클라이언트가 서버에 요청할 때 보내는 HTTP Request의 구조는 크게 <b>시작 라인(Starter Line)</b>, <b>요청 헤더(Headers)</b>, <b>요청 몸체(Body)</b>로 이루어진다.<br>시작 라인은 해당 Request의 작동 정보(Action)와 타겟 URI를 담는다.<br>요청 헤더는 해당 Request의 추가적인 정보를 담고 있는 부분으로 후술할 몸체와 마찬가지로 'K:V'의 형태를 하고 있다.<br>몸체는 데이터가 담겨있는 부분으로 위 예의 GET에서는 의미가 없으며, 데이터를 폼 형태로 전달하는 POST에서 사용한다. 
</p>

<h3>HTTP 응답 메시지 구조</h3>

```
// 시작 라인
HTTP/1.1 200 OK

// 헤더
Date: Mon, 23 May 2005 22:38:34 GMT
Server: Apache/1.3.3.7(Unix)(Red-Hat/Linux)
Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
ETag: "3f80f-1b6-3e1cb03b"
Content-Type: text/html; charset=UTF-8
Content-Length: 131
Accept-Ranges: bytes
Connection: close

// 바디
<html>
<head>
    <title>An Example Page</title>
</head>
<body>
    Hello World, this is a very simple HTML document.
</body>
</html>
```

<p>응답 메시지는 요청 메시지와 같이 시작 라인, 응답 헤더, 응답 몸체로 이루어진다.<br>시작 라인은 Response의 상태를 간략하게 보여주는 부분으로 HTTP 버젼과 상태 코드(Status Code), 상태 텍스트(Status Text)가 있다.<br>응답 헤더는 요청 헤더와 같은 방식으로 동작한다.<br>응답 몸체도 마찬가지로 같은 방식으로 동작한다.</p>

> <h3>상태 코드(Status Code)</h3>
> <table>
>   <th>코드명</th>
>   <th>내용 설명</th>
>   <tr>
>       <td>200 OK</td>
>       <td>클라이언트 요청 성공.</td>
>   </tr>
>   <tr>
>       <td>400 Bad Request</td>
>       <td>잘못된 요청.</td>
>   </tr>
>       <td>401 Unauthorized</td>
>       <td>인증 오류.</td>
>   <tr>
>       <td>403 Forbidden</td>
>       <td>사용자 허가 모드 오류.</td>
>   </tr>
>   <tr>
>       <td>404 Not Found</td>
>       <td>요청한 문서 없음.</td>
>   </tr>
>   <tr>
>       <td>405 Method Not Allowed</td>
>       <td>요청한 방식 지원하지 않음.</td>
>   </tr>
>   <tr>
>       <td>500 Internal Server Error</td>
>       <td>서버에서 실행 오류 발생.</td>
>   </tr>
>   <tr>
>       <td>503 Server Unavailable</td>
>       <td>일시적으로 요청 처리 불가.</td>
>   </tr>
> </table>

<!-- CSS -->
<style>
    h2 {
        font-weight: bold;
        margin-top: 10px;
    }
    h3 {
        font-weight: bolder;
    }
</style>
