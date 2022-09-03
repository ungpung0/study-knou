<h2>JSP 기술</h2>
<p>동적으로 웹 페이지를 생성하여 클라이언트에게 제공하는 동적 웹 프로그래밍의 서버 측 기술이다. JSP는 HTML과 XML 템플릿(정적 데이터) 위에 JSTL과 Java 코드(동적 데이터)를 같이 활용하여 이것을 가능하게 만든다.</p>

<h2>JSP 구성요소</h2>

<h3>스크립트 요소</h3>
<p><b>스크립트 요소(Scripting Elements)</b>란 JSP에서 Java 코드를 사용할 수 있는 영역을 말한다. 종류로는 선언부, 스크립트릿, 표현부가 있다.</p>

<li><b>선언부</b></li>
<p><b>선언부(Declaration)</b>는 "<%! %>"의 형식으로  주로 변수와 메소드를 선언할 때 사용한다.</p>

```java
<%!
    public int add(int a, int b) {
        return a + b;
    }
%>
```

<li><b>스크립트릿</b></li>
<p><b>스크립트릿(Scriptlet)</b>은 "<% %>"의 형식으로 Java 언어로 작성하여 다양한 일에 활용할 수 있다.선언부와 마찬가지로 변수를 선언하고 사용할 수 있으나, 지역 변수 취급을 한다.</p>

```java
<%
    String a = "Hello Java";
%>
```

<li>표현부</li>
<p><b>표현부(Expression)</b>는 "<%= %>" 형식으로 변수나 수식의 값을 JSP 페이지에서 사용하고 싶을 때 사용한다.</p>

```java
<h1><%= a %></h1>
```

<h3>지시어</h3>
<p><b>지시어(Directives)</b>는 웹 컨테이너에 페이지 처리 방식을 전달할 때 사용하는 문법이다. 즉, JSP 파일의 속성을 기술하는 문법이다. 지시어는 크게 page, include, taglib로 나눌 수 있다.</p>

```html
<%@ 지시어 속성1="" 속성2="" %>
```

<li><b>page</b></li>
<p>page 지시어는 웹 컨테이너의 처리 방식에 필요한 속성을 기술하는 부분으로 보통 JSP의 맨 상단에 위치하고 있다.</p>

> <h3>page 지시어의 속성</h3>
> <table>
>   <th>속성</th>
>   <th>설명</th>
>   <tr>
>       <td>language</td>
>       <td>스크립트 언어의 유형을 설정한다. 기본값은 java이다.</td>
>   </tr>
>   <tr>
>       <td>contentType</td>
>       <td>MIME 형식과 캐릭터셋을 설정한다.</td>
>   </tr>
>   <tr>
>       <td>pageEncoding</td>
>       <td>JSP의 인코딩 형식을 설정한다.</td>
>   </tr>
>   <tr>
>       <td>import</td>
>       <td>JSP에서 외부 Java 패키지, 클래스를 불러온다.</td>
>   </tr>
>   <tr>
>       <td>errorPage</td>
>       <td>에러가 발생할 경우 호출할 페이지를 설정한다.</td>
>   </tr>
>   <tr>
>       <td>isErrorPage</td>
>       <td>일반/예외 페이지 유무를 설정한다. 기본값은 false이다.</td>
>   </tr>
>   <tr>
>       <td>session</td>
>       <td>JSP에서 HttpSession의 사용 유무를 설정한다. 기본값은 true이다.</td>
>   </tr>
>   <tr>
>       <td>buffer</td>
>       <td>JSP의 출력 버퍼의 크기를 지정한다. 기본값은 8kb이다.</td>
>   </tr>
>   <tr>
>       <td>autoFlush</td>
>       <td>클라이언트가 JSP를 처리할 때, 이전 버퍼를 자동으로 비울 것인지 여부를 설정한다. 기본값은 true이다.</td>
>   </tr>
>   <tr>
>       <td>isThreadSafe</td>
>       <td>다중쓰레드 사용 여부를 설정한다. 기본값은 true이다.</td>
>   </tr>
>   <tr>
>       <td>info</td>
>       <td>JSP에 대한 설명을 작성한다.</td>
>   </tr>
>   <tr>
>       <td>extends</td>
>       <td>JSP가 어떤 클래스를 상속받는지 설정한다.</td>
>   </tr>
> </table>

<li><b>include</b></li>
<p>include 지시어는 해당 JSP 파일에 다른 HTML, JSP 페이지를 삽입할 때 사용한다.</p>

```html
<%@ include file="파일명" %>
```

<li><b>taglib</b></li>
<p>taglib 지시어는 JSP 파일에서 표현언어, JSTL, 사용자 정의 태그 등을 사용할 수 있게 만들어주는 라이브러리이다.</p>

```html
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:out value="HELLO"/>
```

> <h3>주요 태그 라이브러리</h3>
> <table>
>   <th>taglib</th>
>   <th>선언문</th>
>   <tr>
>       <td>Core</td>
>       <td><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %></td>
>   </tr>
>   <tr>
>       <td>XML</td>
>       <td><%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %></td>
>   </tr>
>   <tr>
>       <td>I18N(국제화)</td>
>       <td><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %></td>
>   </tr>
>   <tr>
>       <td>Database</td>
>       <td><%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %></td>
>   </tr>
>   <tr>
>       <td>Functions</td>
>       <td><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><br>※ fn 태그는 EL과 함께 사용한다.</td>
>   </tr>
> </table>

> <h3>Core 자식 태그</h3>
> <table>
>   <th>태그명</th>
>   <th>설명</th>
>   <tr>
>       <td>remove</td>
>       <td>컨테이너에 저장된 값을 삭제한다.</td>
>   </tr>
>   <tr>
>       <td>set</td>
>       <td>컨테이너에서 변수를 다룰 때 사용한다.</td>
>   </tr>
>   <tr>
>       <td>if</td>
>       <td>조건식이 참이면 내용을 실행한다.</td>
>   </tr>
>   <tr>
>       <td>choose</td>
>       <td>when과 otherwise를 사용해서 switch-case 문과 같은 기능을 수행한다.</td>
>   </tr>
>   <tr>
>       <td>forEach</td>
>       <td>List, Array 등의 목록의 값을 꺼내서 처리할 때 주로 사용한다.</td>
>   </tr>
>   <tr>
>       <td>forTokens</td>
>       <td>특정 구분자(delimiter)로 구분해서 반복문으로 사용한다.</td>
>   </tr>
>   <tr>
>       <td>url</td>
>       <td>매개변수를 포함한 URL을 생성할 때 사용한다.</td>
>   </tr>
>   <tr>
>       <td>import</td>
>       <td>콘텐츠가 있는 주소를 지정하여 응답 결과를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>redirect</td>
>       <td>URL을 이동할 때 사용한다.</td>
>   </tr>
>   <tr>
>       <td>out</td>
>       <td>JSP의 표현식을 대체하여 출력할 때 사용한다.</td>
>   </tr>
>   <tr>
>       <td>catch</td>
>       <td>코드의 예외 처리에서 사용한다.</td>
>   </tr>
>   <tr>
>       <td>param</td>
>       <td>파라미터를 추가할 때 사용한다.</td>
>   </tr>
> </table>

> <h3>XML 자식 태그</h3>
> <table>
>   <th>태그명</th>
>   <th>설명</th>
>   <tr>
>       <td>out</td>
>       <td>XPath의 패턴에 따라서 xml 내용을 출력한다.</td>
>   </tr>
>   <tr>
>       <td>parse</td>
>       <td>xml 문서를 읽고 파싱한다.</td>
>   </tr>
>   <tr>
>       <td>set</td>
>       <td>XPath의 패턴에 따라서 선택한 값을 변수에 저장한다.</td>
>   </tr>
>   <tr>
>       <td>choose/forEach/if</td>
>       <td>Core와 쓰임새는 동일하다.</td>
>   </tr>
>   <tr>
>       <td>transform</td>
>       <td>xml과 xslt 파일을 결합하고 새문서를 생성한다.</td>
>   </tr>
> </table>

> <h3>I18N 자식 태그</h3>
> <table>
>   <th>태그명</th>
>   <th>설명</th>
>   <tr>
>       <td>requestEncoding</td>
>       <td>value 속성으로 문자셋을 변경한다.</td>
>   </tr>
>   <tr>
>       <td>setLocale</td>
>       <td>통화 기호와 시간 대역을 지역에 맞게 표시한다.</td>
>   </tr>
>   <tr>
>       <td>timeZone</td>
>       <td>특정 영역의 시간대를 설정한다.</td>
>   </tr>
>   <tr>
>       <td>setTimeZone</td>
>       <td>timeZone의 설정값을 변수에 저장한다.</td>
>   </tr>
>   <tr>
>       <td>bundle</td>
>       <td>basename 속성의 properties 파일을 불러온다.</td>
>   </tr>
>   <tr>
>       <td>setBundle</td>
>       <td>properties 파일을 다양한 영역에서 참조를 가능하게 한다.</td>
>   </tr>
>   <tr>
>       <td>message</td>
>       <td>bundle 태그로 저장된 key를 통해 값을 가져온다.</td>
>   </tr>
>   <tr>
>       <td>formatNumber</td>
>       <td>숫자를 특정 양식에 맞추어 출력한다.</td>
>   </tr>
>   <tr>
>       <td>parseNumber</td>
>       <td>문자열을 숫자 형식으로 변환한다.</td>
>   </tr>
>   <tr>
>       <td>formatDate</td>
>       <td>날짜 객체(Date)를 특정 양식에 맞추어 출력한다.</td>
>   </tr>
>   <tr>
>       <td>parseDate</td>
>       <td>문자열을 날짜 형식으로 변환하고 출력한다.</td>
>   </tr>
> </table>

> <h3>Database 자식 태그</h3>
> <table>
>   <th>태그명</th>
>   <th>설명</th>
>   <tr>
>       <td>setDataSource</td>
>       <td>DB에 연결하기 위해서 필요한 사전 정보인 DataSource를 설정한다.</td>
>   </tr>
>   <tr>
>       <td>param/dateParam</td>
>       <td>문자열 형식 파라미터에는 param을 날짜 형식 파라미터에는 dateParam을 사용한다.</td>
>   </tr>
>   <tr>
>       <td>query</td>
>       <td>쿼리 문장을 실행한다.</td>
>   </tr>
>   <tr>
>       <td>update</td>
>       <td>INSERT, UPDATE, DELETE와 같은 data를 반환하지 않는 쿼리 문장을 실행할 때 사용한다.</td>
>   </tr>
>   <tr>
>       <td>transaction</td>
>       <td>트랜잭션을 만들어서 여러 개의 query와 update를 사용할 수 있다.</td>
>   </tr>
> </table>

> <h3>Functions 자식 태그</h3>
> <table>
>   <th></th>
>   <th></th>
>   <tr>
>       <td>contains</td>
>       <td>원본 문자열에 문자열이 포함되는지 여부를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>containsIgnoreCase</td>
>       <td>대소문자 관계없이 contains를 수행한다.</td>
>   </tr>
>   <tr>
>       <td>startsWith</td>
>       <td>문자열이 접두어로 시작하는지 여부를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>endsWith</td>
>       <td>문자열이 접미어로 끝나는지 여부를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>escapeXml</td>
>       <td>문자열에 XML과 HTML에서 사용하는 "<>&'"" 문자들이 존재하면 XML 엔티티 코드로 변환하고 출력한다.</td>
>   </tr>
>   <tr>
>       <td>indexOf</td>
>       <td>원본 문자열에서 지정 문자열이 처음 나타나는 index를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>split</td>
>       <td>문자열을 구분자에 따라 나누고 배열로 반환한다.</td>
>   </tr>
>   <tr>
>       <td>join</td>
>       <td>배열 요소들을 구분자로 연결하여 반환한다.</td>
>   </tr>
>   <tr>
>       <td>length</td>
>       <td>배열과 문자열의 개수를 반환한다.</td>
>   </tr>
>   <tr>
>       <td>replace</td>
>       <td>문자열의 before 문자열을 after 문자열로 변경하고 반환한다.</td>
>   </tr>
>   <tr>
>       <td>substring</td>
>       <td>시작 index부터 끝 index까지의 문자열을 반환한다.</td>
>   </tr>
>   <tr>
>       <td>substringAfter</td>
>       <td>원본 문자열에서 지정 문자열 이후의 문자열을 반환한다.</td>
>   </tr>
>   <tr>
>       <td>substringBefore</td>
>       <td>원본 문자열에서 지정 문자열 이전의 문자열을 반환한다.</td>
>   </tr>
>   <tr>
>       <td>toLowerCase</td>
>       <td>문자열을 소문자로 변경하고 반환한다.</td>
>   </tr>
>   <tr>
>       <td>toUpperCase</td>
>       <td>문자열을 대문자로 변경하고 반환한다.</td>
>   </tr>
>   <tr>
>       <td>trim</td>
>       <td>문자열의 공백을 전부 제거하고 반환한다.</td>
>   </tr>
> </table>

<h2>내장 객체</h2>
<p><b>내장 객체(Implicit Object)</b>는 JSP에서 자주 사용하는 객체를 선언과 초기화 없이 사용 가능하도록 컨테이너가 미리 정의하여 제공되는 Java 객체이다. 스크립트릿 안에서만 사용 가능하다.</p>

<li>request</li>
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

<li><b>response</b></li>
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

<li><b>out</b></li>
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

<li><b>pageContext</b></li>
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

<li><b>session</b></li>
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

<li><b>application</b></li>
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

<li><b>config</b></li>
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

<li><b>page</b></li>
<p>page 내장 객체는 JSP 자체를 나타내는 객체로서 this 키워드로 자신을 참조할 수 있다. 현재 거의 사용되지 않으므로 메소드는 생략했다.</p>

<li><b>exception</b></li>
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

<h2>액션 태그</h2>
<p>서버와 클라이언트에게 명령을 지시하는 태그로서, XML과 유사한 형식으로 페이지와 페이지 사이를 제어할 때 주로 사용한다.</p>

<li><b>jsp:foward</b></li>
<p>현재 JSP 페이지의 출력 버퍼 내용을 모두 삭제하고 다른 페이지로 이동할 때 사용하는 태그이다.</p>

```
<jsp:forward page="파일명"/>
```

<li><b>jsp:include</b></li>
<p>현재 jsp 페이지에 html, css 같은 외부 파일의 내용을 포함하는 태그이다. flush 속성값을 변경하여 출력 버퍼를 처리하고 비울 것인지 설정할 수 있다.</p>

```
<jsp:include page="파일명" flush="flase"/>
```

<li><b>jsp:param</b></li>
<p>현재 JSP 페이지에서 다른 페이지로 정보를 전달하는 태그로서 단독으로 사용은 불가하다.</p>

```
<jsp:foward page="파일명">
    <jsp:param name="매개변수명" value="매개변수값"/>
</jsp:foward>
```

<li><b>jsp:useBean</b></li>
<p>현재 JSP 페이지에서 Java Beans를 사용하기 위해 실제 클래스를 선언하고 초기화하는 태그이다. 객체가 발견되지 않으면 빈 객체를 생성한다.</p>

```
<jsp:useBean id="빈즈식별명" class="빈즈명" scope="저장영역"/>
```

> <h3>Java Beans</h3>
> <p>동적인 개발을 목표로 로직을 담당하는 클래스를 분리하여 작성하는 것으로, JSP 페이지를 HTML과 같은 코드로만 구성할 수 있는 장점이 있다. 중요한 규칙은 다음과 같다.</p>
> - 클래스는 java.io.Serializable 인터페이스를 구현해야 한다.<br/>
> - 인수가 없는 기본 생성자가 존재한다.<br/>
> - 멤버 변수는 private로 설정한다.<br/>
> - getter/setter() 메소드로 멤버변수에 접근한다.<p/>

<li><b>jsp:setProperty</b></li>
<p>setter() 메소드에 접근하여 멤버 변수인 프로퍼티에 값을 저장하는 태그이다.</p>

```
<jsp:setProperty name="빈즈식별명" property="프로퍼티명" value="값"/>
```

<li><b>jsp:getProperty</b></li>
<p>useBean 태그처럼 getter() 메소드에 접근하여 Java Beans의 프로퍼티의 값을 가져오는 태그이다.</p>

```
<jsp:getProperty name="빈즈식별명" property="프로퍼티명"/>
```

<h2>표현 언어</h2>
<p>데이터를 쉽게 다루기 위해서 사용하는 간단한 스크립트 언어이다.형태는 "${}"이며 내장 객체, JSTL과 함께 사용할 수 있다.</p>

<!-- CSS -->
<style>
    h2 {
        font-weight: bold;
        margin-top: 10px;
    }
    h3 {
        font-weight: bolder;
    }
    img {
        display: block;
        margin: 0px auto;
    }
</style>