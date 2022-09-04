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
<br>
<h3>include</h3>
<p>include는 해당 문서에 외부 파일을 삽입하는 지시어이다. 이것은 액션 태그 jsp:include와 기능적으로 유사한데, 컴파일 되는 과정에서 차이를 보인다.<br>include는 하나의 .class 파일로 컴파일되며, jsp:include는 각자의 .class 파일로 컴파일된다. 정적인 데이터는 지시어로, 동적인 데이터는 액션태그를 사용하는 게 좋을 것이다.</p>

```jsp
<body>
    <%@ include file="/templete/header.jsp" %>
    <%@ include file="/templete/footer.jsp" %>
</body>
```
<br>
<h3>taglib</h3>
<p>taglib는 JSP 문서에서 표현 언어(Expression Language), JSTL(JSP Standard Tag Library), 사용자정의 태그(Custom Tag) 등의 다양한 기능을 태그의 형태로 사용할 수 있게 만들어주는 라이브러리이다.<br>taglib를 사용하기 위해 먼저 접두사(Prefix), 식별자(URI, Uniform Resource Identifier)를 설정해야 한다.</p>

```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
```
<br>
<h3>Core Tag</h3>
<p>반복문, 조건문, 파라미터, URL에서 사용하는 등의 기능을 수행하는 JSTL 하위 태그이다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>c:set</td>
        <td>변수를 생성하고 값을 저장하는 태그이다.<br>(예) &lt;c:set var="변수명" value="초기값"/&gt;</td>
    </tr>
    <tr>
        <td>c:remove</td>
        <td>변수를 제거할 때 사용하는 태그이다.<br>(예) &lt;c:remove var="변수명" scope="범위"/&gt;</td>
    </tr>
    <tr>
        <td>c:out</td>
        <td>데이터를 출력할 때 사용하는 태그이다.<br>(예) &lt;c:out value="데이터" default="초깃값" escapeXml="true"/&gt;</td>
    </tr>
    <tr>
        <td>c:if</td>
        <td>Java의 if문과 비슷한 역할을 하는 태그이다. else 문은 존재하지 않으며 조건식은 test 속성값에 입력한다.<br>(예) &lt;c:if test="조건식"&gt;실행문&lt;/c:if&gt;</td>
    </tr>
    <tr>
        <td>c:choose</td>
        <td>Java의 switch-case문과 비슷한 역할을 하는 태그이다. c:when, c:otherwise와 함께 사용된다.<br>(예) 예제 참고</td>
    </tr>
    <tr>
        <td>c:forEach</td>
        <td>Java의 for문, for-in문과 같은 역할을 하는 태그이다.<br>(예) 예제 참고</td>
    </tr>
    <tr>
        <td>c:forTokens</td>
        <td>문자열을 구분자를 사용하여 분리하고 반복처리 한다.<br>(예) &lt;c:forTokens var="변수명" items="문자열" delims="구분자"&gt;실행문&lt;/c:forTokens&gt;</td>
    </tr>
    <tr>
        <td>c:param</td>
        <td>URL을 생성할 때, 파라미터를 넘기기 위해 사용한다.<br>(예) &lt;c:param name="파라미터명" value="값"/&gt;</td>
    </tr>
    <tr>
        <td>c:import</td>
        <td>해당 문서에 다른 페이지의 내용을 포함시키기 위해 사용한다. jsp:include와 기능이 유사하지만, 변수에 페이지 내용을 담을 수 있다.<br>(예) &lt;c:import url="URL" var="변수명" scope="범위" charEncoding="인코딩"&gt;</td>
    </tr>
    <tr>
        <td>c:url</td>
        <td>URL을 생성할 때 사용한다.<br>(예) &lt;c:url var="변수명" value="URL주소"&gt;</td>
    </tr>
    <tr>
        <td>c:redirect</td>
        <td>리다이렉트 처리를 할 때 사용한다.<br>(예) &lt;c:redirect url="URL주소"&gt;</td>
    </tr>
    <tr>
        <td>c:catch</td>
        <td>오류가 발생할 가능성이 있는 코드를 기술하여 예외를 처리하는 태그이다.<br>(예) &lt;c:catch var="변수명"&gt;</td>
    </tr>
</table>

```jsp
<!-- c:set으로 변수 생성 -->
<c:set var="number1" value="1"/>
<c:set var="number2" value="2"/>
<c:set var="record" value="95"/>

<!-- c:if로 변수 크기 비교 -->
<c:if test="${number1} < ${number2}">
    <c:out value="number1 is smaller then number2"/>
</c:if>

<!-- c:choose로 성적 랭크 매기기 -->
<c:choose>
    <c:when test="${record >= 90}">
        <c:out value="A"/>
    </c:when>
    <c:when test="${record >= 80}">
        <c:out value="B"/>
    </c:when>
    <c:when test="${record >= 70}">
        <c:out value="C"/>
    </c:when>
    <c:when test="${record >= 60}">
        <c:out value="D"/>
    </c:when>
    <c:otherwise>
        <c:out value="F"/>
    </c:otherwise>
</c:choose>

<!-- c:forEach로 ArrayList 출력 -->
<%
    List<String> names = new ArrayList<String>(Arrays.asList("Kim", "Park", "Hong"));
%>
<c:set var="names" value="<%=names%>"/>
<c:forEach var="name" items="${names}" varStatus="status">
    <c:out value="${name}"/>
</c:forEach>
```
<br>
<h3>XML Tag</h3>
<p>JSP 기반의 XML 문서 작성 및 조작 방법을 제공하는 JSTL 하위 태그이다. 올바르게 사용하기 위해서는 전용 경로지정 문법인 XPath를 필히 익혀야 한다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>x:out</td>
        <td>XPath 패턴에 따라서 xml 내용을 출력하는 태그이다.<br>&lt;x:out select="xPath 변수|식" escapeXml="true"/&gt;</td>
    </tr>
    <tr>
        <td>x:parse</td>
        <td>xml 문서, 변수를 읽고 파싱할 때 사용한다.<br>(예) &lt;x:parse xml="xml명" var="변수명"/&gt;</td>
    </tr>
    <tr>
        <td>x:set</td>
        <td>XPath에 패턴에 따라서 선택한 내용을 변수에 저장하는 태그이다.<br>(예) &lt;x:set select="XPath" var="변수명" scope="영역"/&gt;</td>
    </tr>
    <tr>
        <td>x:transform</td>
        <td>xml과 xslt 파일을 결합하여 새로운 문서를 생성한다.<br>(예) &lt;x:transform xml="xml명" xslt="xslt명"/&gt;</td>
    </tr>
    <tr>
        <td>x:if / x:choose / x:forEach</td>
        <td>c:if, c:choose, c:forEach와 유사한 역할을 수행하는데, 주의할 것은 "test"가 아닌 "select"를 사용하는 것이다.<br>(예) &lt;x:if select="XPath명" var="변수명" scope="영역"/&gt;</td>
    </tr>
</table>
<br>
<h3>Formatting Tag</h3>
<p>숫자, 날짜, 시간 등을 formatting하는 기능과 국제화, 다국어 지원 기능을 제공하는 JSTL 하위 태그이다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>fmt:formatNumber</td>
        <td>지정한 숫자를 양식에 맞추어 출력하는 태그이다.<br>(예) &lt;fmt:formatNumber value="숫자" type="형식"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:parseNumber</td>
        <td>특정 문자열을 숫자로 파싱하는 태그이다.<br>(예) &lt;fmt:parseNumber value="문자열" type="형식"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:formatDate</td>
        <td>날짜 객체를 양식에 맞추어 출력하는 태그이다. value 속성에 Date 객체를 넣기위해 "java.util.Date" 클래스로 객체를 생성해야 한다.<br>(예) &lt;fmt:formatDate value="Date객체명" dateStyle="날짜스타일" timeStyle="시간스타일" var="변수명" scope="영역"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:parseDate</td>
        <td>특정 문자열을 날짜(Date 객체)로 파싱하는 태그이다.<br>(예) &lt;fmt:parseDate value="문자열" dateStyle="날짜스타일" timeStyle="시간스타일" var="변수명" scope="영역"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:timeZone</td>
        <td>태그 사이의 시간대를 설정하는 태그이다.<br>(예) &lt;fmt:setTimeZone value="timeZone명"&gt;&lt;/fmt:timeZone&gt;</td>
    </tr>
    <tr>
        <td>fmt:setTimeZone</td>
        <td>특정 영역에서 시간대를 설정하는 태그이다.<br>(예) &lt;fmt:setTimeZone value="timeZone명" var="변수명" scope="영역"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:setLocale</td>
        <td>국제화 태그들이 사용할 로케일의 우선순위를 지정한다. 대부분 브라우저의 Accept-Header의 값을 사용하기 때문에 거의 사용하지 않는다.<br>(예) &lt;fmt:setLocale value="ko" scope="영역"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:requestEncoding</td>
        <td>요청 파라미터의 인코딩 형식을 지정한다.<br>(예) &lt;fmt:requestEncoding value="utf-8"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:bundle</td>
        <td>태그 몸체에서 사용할 리소스 번들을 지정한다.<br>(예) &lt;fmt:bundle basename="번들명"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:message</td>
        <td>fmt:bundle 태그로 저장된 key를 통해 값을 가져온다.<br>(예)&lt;fmt:message key="키값"/&gt;</td>
    </tr>
    <tr>
        <td>fmt:setBundle</td>
        <td>리소스 번들을 변수로 저장하여 쉽게 액세스 가능하게 만들어준다.<br>(예)&lt;fmt:setBundle var="변수명" basename="번들명"/&gt;</td>
    </tr>
</table>
<br>
<h3>SQL Tag</h3>
<p>데이터베이스(DB, Database)와 연동하여 데이터를 생성(Create), 조회(Read), 갱신(Update), 삭제(Delete)하는 기능을 제공하는 JSTL 하위 태그이다.<br>DB를 연동하는 방법에는 <b>JNDI(Java Naming and Directory Interface)</b>를 사용해서 web.xml과 server.xml에 설정하는 방법, 데이터 소스(Driver명, URL, ID, PW)를 통하여 DB에 직접 접속하는 방법의 두 가지가 있다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>sql:setDataSource</td>
        <td>DB에 접속하기 위한 연결정보를 담고있는 데이터 소스를 생성하거나 JNDI 경로를 지정한다.<br>(예)&lt;sql:setDataSource url="JDBC URL명" driver="JDBC 드라이버" user="계정" password="비밀번호"  var="변수명" scope="영역" *dataSource="JNDI 경로|변수명"/&gt;</td>
    </tr>
    <tr>
        <td>sql:query</td>
        <td>문법에 맞는 SQL 쿼리문을 실행한다. ResultSet의 executeQuery()와 유사하다.<br>(예) &lt;sql:query sql="쿼리문" var="변수명" startRows="시작 행 번호" maxRows="최대 행 번호"*dataSource="JNDI|데이터소스명"/&gt;</td>
    </tr>
    <tr>
        <td>sql:update</td>
        <td>문법에 맞는 SQL 쿼리문을 통해 업데이트(삽입, 수정, 삭제)한다. ResultSet()의 executeUpdate()와 유사하다.<br>(예) &lt;sql:update sql="쿼리문" var="변수명" *dataSource="JNDI|데이터소스명"/&gt;</td>
    </tr>
    <tr>
        <td>sql:param / sql:dateParam</td>
        <td>sql 태그에 파라미터를 삽입할 수 있는 태그이다. 문자열은 sql:param, Date는 sql:dateParam을 사용한다.<br>(예) &lt;sql:dateParam value="값" type="형식"/&gt;</td>
    </tr>
    <tr>
        <td>sql:transaction</td>
        <td>JSP에서 DB 트랜잭션을 구현할 때 사용한다.<br>(예)&lt;sql:transaction dataSource="JNDI|데이터소스명" isolation="격리수준"&gt;SQL몸체&lt;/sql:transaction&gt;</td>
    </tr>
</table>
<br>
<h3>Function Tag</h3>
<p>Collection과 String 문자열을 처리하는 함수를 제공하는 JSTL 하위 태그이다. fn태그는 반드시 EL(Expression Language) 표현식을 사용해야 한다.</p>
<table>
    <th>Tags</th>
    <th>Desc</th>
    <tr>
        <td>fn:contains / fn:containsIgnoreCase</td>
        <td>원본 문자열에 다음 문자열 값이 포함되는지 유무를 반환한다. IgnoreCase를 붙이면 대소문자를 구분하지 않는다.<br>(예) ${fn:contains("JSP is Hard", "Hard")}</td>
    </tr>
    <tr>
        <td>fn:startsWith / fn:endsWith</td>
        <td>원본 문자열이 다음 문자열의 값으로 시작하는지, 끝나는지 유무를 반환한다.<br>(예) ${fn:startWith("Hello World", "He")}</td>
    </tr>
    <tr>
        <td>fn:escapeXml</td>
        <td>html에서 요소에 사용하는 "&lt;, &gt;, &amp;, &#039;, &#034;"를 표시 가능하게 만들고 반환한다.<br>(예) ${fn:escapeXml("&lt;title&gt;Hello World.</&lt;title&gt;)}</td>
    </tr>
    <tr>
        <td>fn:indexOf</td>
        <td>다음 구분자의 값이 원본 문자열에서의 index 값을 반환한다.<br>(예) ${fn:indexOf("JSP String", "J")}</td>
    </tr>
    <tr>
        <td>fn:split / fn:join</td>
        <td>fn:split은 문자열의 값을 구분값으로 잘라내고 배열을 생성한다. fn:join은 배열의 값을 구분값으로 합치고 문자열을 반환한다.<br>(예) ${fn:split("문자열", "구분값")} | ${fn:join("배열", "구분값")}</td>
    </tr>
    <tr>
        <td>fn:length</td>
        <td>문자열의 개수, 배열 또는 컬렉션 요소의 개수를 반환한다.<br>(예) ${fn:length("문자열")}</td>
    </tr>
    <tr>
        <td>fn:replace</td>
        <td>원본 문자열의 특정값을 변경값으로 변경하고 반환한다.<br>(예) ${fn:replace("문자열", "특정값", "변경값")}</td>
    </tr>
    <tr>
        <td>fn:substring / fn:substringBefore / fn:substringAfter</td>
        <td>fn:substring은 시작 인덱스 ~ 종료 인덱스까지의 문자열을 반환한다. Before를 붙이면 구분값 이전 인덱스까지, After를 붙이면 구분값 이후 인덱스부터 문자열을 반환한다.<br>${fn:substringBefore("Hello JSP", "JSP")}</td>
    </tr>
    <tr>
        <td>fn:toLowerCase / fn:toUpperCase</td>
        <td>fn:toLowerCase는 문자열을 소문자로, fn:toUpperCase는 문자열을 대문자로 변경하고 반환한다.<br>${fn:toUpperCase("jsp is hard")}</td>
    </tr>
    <tr>
        <td>fn:trim</td>
        <td>문자열의 앞 뒤의 공백을 제거하고 반환한다.<br>${fn:trim("   Hello World  ")}</td>
    </tr>
</table>