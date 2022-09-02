<h1>지시어 가이드</h1>

<h2>지시어 문법</h2>
<p><b>지시어(Directives)</b>는 웹 컨테이너(Web Container)의 페이지 처리 방식을 전달할 때 사용하는 문법이다. 지시어는 크게 page, include, taglib로 나눌 수 있다.</p>

<h3>page</h3>
<p>page는 해당 문서의 처리 방식에 필요한 사전 속성을 기술하는 부분으로 대부분 가장 상단에 위치하고 있다.</p>
<table>
    <th>Property</th>
    <th>Desc</th>
    <tr>
        <td>info</td>
        <td>해당 문서를 설명할 때 사용하는 문자열으로 작동에는 영향을 주지 않는다.<br>(예) info="test page"</td>
    </tr>
    <tr>
        <td>language</td>
        <td>사용할 스크립트 언어의 유형을 설정한다.<br>(예) language="java"</td>
    </tr>
    <tr>
        <td>contentType</td>
        <td>해당 문서의 MIME 형식과 문자집합(CharacterSet)을 설정한다. MIME 형식은 해당 문서의 종류를 알려주기 위한 메커니즘이다.<br>(예) contentType="text/html; charset=UTF-8"</td>
    </tr>
    <tr>
        <td>pageEncoding</td>
        <td>해당 문서의 인코딩 형식을 설정한다.<br>(예) pageEncoding="UTF-8"</td>
    </tr>
    <tr>
        <td>import</td>
        <td>해당 문서에 외부 자바 패키지, 클래스를 불러온다.<br>(예) import="java.util.*"</td>
    </tr>
    <tr>
        <td>session</td>
        <td>해당 문서의 세션 사용 여부를 설정한다.<br>(예) session="true"</td>
    </tr>
    <tr>
        <td>buffer</td>
        <td>해당 문서의 출력 버퍼 크기를 설정한다. 버퍼를 사용하지 않으려면 "none"으로 할 것.<br>(예) buffer="8kb"</td>
    </tr>
    <tr>
        <td>autoFlush</td>
        <td>출력 버퍼가 가득 찼을 경우에 자동 비움 여부를 설정한다. buffer의 속성값이 "none"일 경우, autoFlush 값이 "false"면 오류가 발생한다.<br>(예) autoFlush="true"</td>
    </tr>
    <tr>
        <td>trimDirectiveWhitespaces</td>
        <td>지시어 선언으로 발생한 공백을 제거할 때 사용한다. 지시어를 선언하고 소스를 브라우저에서 확인하면 공백이 발생한다.<br>(예) trimDirectiveWhitespaces="true"</td>
    </tr>
    <tr>
        <td>errorPage</td>
        <td>해당 문서에서 오류가 발생했을 경우, 오류 발생 여부를 출력할 문서를 설정한다.<br>(예) errorPage="error.jsp"</td>
    </tr>
    <tr>
        <td>isErrorPage</td>
        <td>해당 문서가 오류를 처리할 지 여부를 설정한다. errorPage로 불러올 문서는 isErrorPage 값이 "true"여야 한다.<br>(예) isErrorPage="false"</td>
    </tr>
    <tr>
        <td>isThreadSafe</td>
        <td>해당 문서가 동시에 여러 브라우저의 요청을 처리할지 여부를 설정한다. JSP의 다중 쓰레드(Multi Thread)를 사용할 수 없어 처리 속도가 떨어진다.<br>(예) isThreadSafe="false"</td>
    </tr>
    <tr>
        <td>extends</td>
        <td>해당 문서가 상속받을 클래스를 설정한다. 자동으로 웹 컨테이너가 적절한 클래스를 상속하므로 사용할 필요가 거의 없다.<br>(예) extends="system.MasterClass"</td>
    </tr>
</table>

```jsp
<!-- 페이지 기본 설정 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- 자바 라이브러리 import -->
<%@ page import="java.util.*" %>
<!-- 페이지 buffer 설정 -->
<%@ page buffer="16kb" autoFlush="true" %>
<!-- 에러 페이지 연결 -->
<%@ page errorPage="error.jsp" isErrorPage="false" %>
```


<h3>include</h3>
<p>include는 해당 문서에 외부 파일을 삽입하는 지시어이다. 이것은 액션 태그 jsp:include와 기능적으로 유사한데, 컴파일 되는 과정에서 차이를 보인다.<br>include는 하나의 .class 파일로 컴파일되며, jsp:include는 각자의 .class 파일로 컴파일된다. 정적인 데이터는 지시어로, 동적인 데이터는 액션태그를 사용하는 게 좋을 것이다.</p>

```jsp
<body>
    <%@ include file="/templete/header.jsp" %>
    <%@ include file="/templete/footer.jsp" %>
</body>
```

<h3>taglib</h3>
<p>taglib는 JSP 문서에서 표현 언어(Expression Language), JSTL(JSP Standard Tag Library), 사용자정의 태그(Custom Tag) 등의 다양한 기능을 태그의 형태로 사용할 수 있게 만들어주는 라이브러리이다.<br>taglib를 사용하기 위해 먼저 접두사(Prefix), 식별자(URI, Uniform Resource Identifier)를 설정해야 한다.</p>

```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
```

<h3>Core Tag</h3>
<p>반복문, 조건문, 파라미터, URL에서 사용하는 등의 기능을 수행하는 JSTL 하위 태그이다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>c:set</td>
        <td>변수를 생성하고 값을 저장하는 태그이다.<br>(예) c:set var="변수명" value="초기값"</td>
    </tr>
    <tr>
        <td>c:remove</td>
        <td>변수를 제거할 때 사용하는 태그이다.<br>(예) c:remove var="변수명" scope="범위"</td>
    </tr>
    <tr>
        <td>c:out</td>
        <td>데이터를 출력할 때 사용하는 태그이다.<br>(예) c:out value="데이터" default="초깃값" escapeXml="true"</td>
    </tr>
    <tr>
        <td>c:if</td>
        <td></td>
    </tr>
</table>
