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

<h2>3. 웹 애플리케이션</h2><hr/>
<p><b>웹 서버(Web Server)</b>는 클라이언트의 HTTP 요청을 받아 정적인 </p>
<b>웹 애플리케이션 서버(WAS, Web Application Server)</b>


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
