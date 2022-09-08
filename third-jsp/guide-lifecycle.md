<h1>라이프 사이클</h1>

<h2>라이프 사이클</h2>
<p>클라이언트가 JSP 페이지를 요청하면 서블릿 컨테이너가 다음 행동을 수행한다.</p>
<li>해당 JSP 파일의 클래스 파일(.class) 존재 여부를 파악한다. </li>
<li>JSP 파일을 Java 파일(.java)로 변환하고 컴파일하여 클래스 파일을 생성한다.</li>
<li>.class 파일을 실행하여 클라이언트 요청을 처리한다.</li>
<li>이후로 같은 요청을 할 때, 상응하는 클래스 파일이 존재하면 재컴파일을 하지 않는다.</li><p/>

<h3>서블릿 소스 파일 경로</h3>
<p>JSP 라이프 사이클로 생성한 Java 파일과 class 파일은 다음 경로에 위치하고 있다.<br><b>[톰캣폴더]\work\Catalina\localhost\[프로젝트]\org\apache\jsp</b></p>

<h2>출력 버퍼</h2>
<p>출력 버퍼(Buffer)는 응답 결과를 임시적으로 보관하는 저장소 역할을 한다. 응답 과정에서 처리 결과를 클라이언트에 전송하기 전에 출력 버퍼를 중계하여 한꺼번에 전송한다. 버퍼를 사용하여 얻을 수 있는 장점은 다음과 같다.</p>
<li><b>성능 향상</b> : 완성하지 않은 결과를 중간에 계속해서 출력하는 것은 필연적으로 리소스 낭비를 가져온다. 출력 버퍼는 출력 결과를 마지막에 한 번만 전송하여 방지한다.</li>
<li><b>결과 수정</b> : JSP 처리 결과를 매번 출력하면 중간에 결과를 수정할 수 없다. 내장 객체 out, EL 표현식으로 출력된 결과를 예로 들 수 있다. 출력 버퍼를 사용하면 처리 결과를 모으는 과정에서 수정이 가능하다.</li>
<li><b>포워딩 처리</b> : 하나의 페이지에서 다른 페이지로 넘어갈 때 처리 결과가 섞일 수 있다. 버퍼를 사용하면 다음 페이지로 넘어갈 때 출력 버퍼를 비울 수 있다.</li>

<h3>버퍼 설정 방법</h3>
<p>page 지시어를 통해 버퍼의 총 용량과 버퍼 용량의 한계에 다다랐을 때 자동으로 비울 수 있다.</p>

```java
<%@
    // Buffer 용량="8KB", 자동 비움 ="true"
    page buffer="8kb" autoFlush="true"
%>
```

<h3>서블릿</h3>
<p>JSP 페이지는 WAS를 통해서 서블릿(Servlet)으로 변환되어 처리된다. 그렇다면 처음부터 서블릿으로 작성할 수 있지 않을까? 다음은 서블릿 예제이다.</p>

```java
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {

    // 서블릿 생성자.
    public HelloServlet() {

    }

    // GET 처리 메소드.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

    }

    // POST 처리 메소드.
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }

}
```

<p>프로젝트로 서블릿을 직접 생성하면 만들어지는 코드의 일부이다. 자동으로 생성되는 서블릿의 클래스로는 객체의 초기화에 사용하는 생성자(Constructor), GET으로 요청된 응답에 사용하는 doGet() 메소드, POST로 요청된 응답에 사용하는 doPost()가 있다.</p>

<li><b>doGet()</b></li>
<p>doGet() 메소드는 서블릿을 경유하여 들어온 GET 요청을 처리하는 메소드로 단순한 질의, 검색에 사용한다.</p>

<li><b>doPost()</b></li>
<p>doPost() 메소드는 서블릿을 경유하여 들어온 POST 요청을 처리하는 메소드로 doGet()과 유사하나, 많은 양의 데이터를 보낼 때 사용한다.</p>