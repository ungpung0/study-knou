<h2>1. WWW이란 무엇인가?</h2><hr/>
<b>WWW(World Wide Web, 월드 와이드 웹)</b>은 인터넷에 연결된 정보들을 정해진 통신 규약(Protocol)을 통해 탐색할 수 있게 만들어주는 서비스이다. 정보들은 주로 문서의 형태를 띄우고 있는데 <b>하이퍼 텍스트(Hypertext)</b> 형식으로 

<h2>2. 웹 문서의 종류</h2><hr/>
<li><b>정적 웹 페이지(Static Webpage)</b></li>
<p>정적인 형태의 문서로서 항상 동일한 결과를 가져온다. 주로 소개글, 포트폴리오 등의 내용이 고정적인 페이지에 사용한다.</p>
<p><b>클라이언트(Client)</b>가 <b>서버(Server)</b>에게 요청을 전달하면 해당 문서를 전달하는 방식으로 작동한다. 아래는 html로 작성된 정적 웹 페이지의 예이다.</p>

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

> <h3>정적 웹 페이지의 특징</h3>
> <li>저장되어 있는 문서를 보여주기 때문에 서비스가 한정적이다.</li>
> <li>CRUD 작업을 개발자가 직접 편집해야 하기 때문에 관리가 힘들다.</li>
> <li>요청에 따른 파일만을 전송하기 때문에 속도가 빠르다.</li>
> <li>단순한 문서들을 다루기 때문에, 비용이 적고 백업 및 복원이 쉽다.</li>
> ※ CRUD 는 CREATE REMOVE UPDATE DELETE의 약자.
<br>

<li><b>동적 웹 페이지(Dynamic Webpage)</b></li>
<p>동적인 형태의 문서로서 동적으로 생성된후 가져온다. 게시판, 블로그와 같은 사용자의 요청, 시간, 상황에 따라서 내용이 달라지는 유연한 페이지에 사용한다.</p>
<p>클라이언트의 요청을 처리한 후에 생성된 문서를 전달하는 방식으로 작동한다. 아래는 jsp로 작성된 동적 웹 페이지의 예이다.</p>

```html
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

> <h3>동적 웹 페이지의 특징</h3>
> <li>별도의 생성 작업이 필요하기 때문에 속도가 느리다.</li>
> <li>추가적인 처리를 위한 애플리케이션 서버가 필요하다.</li>
> <li>CRUD와 같은 처리를 지원하므로 다양한 서비스를 구현할 수 있다.</li>

<h2>3. 웹 서비스</h2><hr/>
<p>동적인 웹을 구성하기 위해서 필요한 서비스는 크게 나누어 웹 클라이언트, 웹 서버, 웹 애플리케이션 서버, 데이터베이스로 나눌 수 있을 것이다.</p>

<li><b>웹 클라이언트(Web Client)</b></li>
<p>웹 클라이언트는 웹 서비스를 제공받는 사용자를 의미한다. 클라이언트는 웹 브라우저(Web Browser)를 사용하여 웹 서버와 통신하며 정보를 탐색한다. 대표적인 웹 브라우저로 Google Chrome, Firefox를 들 수 있다.</p>

<li><b>웹 서버(Web Server)</b></li>
<p>클라이언트의 HTTP 요청을 받아 정적인 콘텐츠를 제공하는 서버이다. 대표적인 프로그램으로 Apache Server, Nignx를 들 수 있다.</p>

<li><b>웹 애플리케이션 서버(WAS, Web Application Server)</b></li>
<p>WAS는 클라이언트의 요청에 따라서 알고리즘, 비즈니스 로직, 데이터베이스 조회 등의 동적인 컨텐츠를 제공하는 서버이다. 일반적으로 웹 서버에 웹 컨테이너(Web Container)를 더한 것으로 설명한다. 대표적인 프로그램으로 Apache Tomcat, JBoss, Jeus를 들 수 있다.<br>요청을 받을 때마다 매번 프로세스를 생성하지 않고 스레드를 생성하여 관리하므로 서버의 부담을 줄일 수 있다.</p>

> <h3>웹 컨테이너(Web Container)</h3>
> 웹 컨테이너(Web Container)는 JSP, PHP, ASP.net 등의 파일들을 실행하고 결과를 웹 서버로 전송하는 웹 서버의 컴포넌트이다. 일반적으로 웹 서버와 분리해서 설명하는 이유는 다음과 같다.
> <li>기능적으로 분리하여 서버의 부하를 방지하기 위하여.</li>
> <li>물리적으로 분리하여 서버의 보안을 강화하기 위하여.</li>
> <li>여러 WAS를 연결하여 분산 처리를 하여 예외상황 시 무중단 운영을 위하여.</li>
<br>

<li><b>데이터베이스(DB, Database)</b></li>
<p>구조화된 정보를 모아서 저장하는 공간이다. 일반적으로 <b>데이터베이스 관리 시스템(DBMS, Database Management System)</b>에 의해서 관리되며 작성 및 조회에는 SQL(Structured Query Language)를 사용한다. 웹 서비스에서는 주로 회원 정보, 게시글 목록 등에 사용할 수 있을 것이다.</p>

<li><b>CGI(Common Gateway Interface)</b></li>
<p>동적으로 웹 페이지를 생성하기 위한 방식 중 하나로서 프로그램을 실행하여 HTML 코드를 생성한 후 클라이언트로 전달한다. WAS와 달리 요청한 만큼의 프로세스를 생성하여 서버에 부담이 된다. 아래는 CGI 방식으로 작성된 동적 웹 페이지의 예이다.</p>

```html
printf("<html>\n\n<head><title>HOMEPAGE</title></head>\n\n");
printf("<body>\n");
printf("<h2>WELCOME!!!</h2>\n");
printf("</body>\n\n</html>");
```

<h2>JSP와 서블릿(Servlet)</h2><hr/>
<li><b>서블릿(Servlet)</b></li>
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

<li><b>JSP(Java Server Page)</b></li>
<p>서블릿을 대체하여 사용할 수 있는 스크립트 언어이다. JSP는 WAS를 통해 자동으로 서블릿으로 변환되고 컴파일된다.</p>


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
