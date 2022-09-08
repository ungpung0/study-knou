<h2>1. JSP 개발 사전 준비</h2>
<p>JSP를 개발하기 위해서 필수적으로 설치해야할 프로그램들이 있다.</p>

<li><b>JDK(Java SE Development Kit)</b></li>
<p><b>JDK(Java Development Kit)</b>는 Java를 개발, 실행하기 위해 필요한 기능을 전부 갖춘 <b>SDK(Software Development Kit)</b>로서 일반적으로 Java 기반 프로그래밍에 사용하는 프로그램을 포함하고 있다. 여기에는 <b>JRE(Java Runtime Environment)</b>, <b>JVM(Java Virtual Machine)</b>, <b>javac(Java Compiler)</b> 등이 있다.</p>
<p>JDK의 종류로는 표준적인 프로그램 개발에 사용하는 <b>Java SE(Standard Edition)</b>, WAS에서 동작하는 기능을 추가한 <b>Java EE(Enterprise Edition)</b>, 모바일 등의 제약된 환경에서 동작하는 기능을 추가한 <b>Java ME(Micro Edition)</b>이 있다.</p>

> <h3>JRE(Java Runtime Environment)</h3>
> <p>JRE는 컴퓨터 OS에서 Java 프로그램의 실행을 위한 라이브러리, 클래스를 비롯한 선행 리소스를 제공하는 소프트웨어이다. 세부 내용은 다음과 같다.</p>
> <li>자바 클래스 로더(Java Class Loader)는 알맞은 클래스를 불러와서 연동해주는 역할을 수행한다.</li>
> <li>자바 가상 머신(Java Virtual Machine)은 자바 프로그램이 각종 환경에서 실행할 때 필요한 리소스를 확보하는 역할을 수행한다.</li><p/>

<p>JDK가 유료화된 이후부터 JDK는 두 가지 버젼이 존재한다. Oracle 社에서 기업 고객을 대상으로 유료로 제공하는 <b>Oracle JDK</b>와 오픈 소스로 제공하는 <b>Open JDK</b>가 그것이다.</p>
<p>과거에는 둘 간의 기능의 차이가 존재했지만 Java 11부터는 Oracle JDK와 Open JDK의 기능 간에 차이가 없다. 장기적인 지원 여부에서 차이를 보일 뿐이다.</p>

<h3>※ 알아두면 좋은 버젼</h3>
<table>
    <th>버젼</th>
    <th>설명</th>
    <tr>
        <td>Java SE 8</td>
        <td>32비트를 지원하는 마지막 버젼으로 레거시 프로젝트를 기반의 프로젝트에서 자주 사용.</td>
    </tr>
    <tr>
        <td>Java SE 11</td>
        <td>Oracle JDK의 독점 기능이 Open JDK에 이식된 최초의 버젼.</td>
    </tr>
    <tr>
        <td>Java SE 17</td>
        <td>Java SE 11 이후 새로운 장기 지원(LTS, Long Time Support) 릴리스.</td>
    </tr>
</table>


<li><b>Apache Tomcat</b></li>
<p>정적인 웹 페이지를 처리하는 웹 서버 역할의 수행에는 Apache를 동적인 웹 페이지를, 처리하는 WAS 역할의 수행에는 Tomcat을 사용하여 효율적인 분산 처리를 지향하는 서버이다.</p>
<p>사실 사용자가 직접 두 서버를 설치할 필요는 없다. Apache에 웹 컨테이너를 포함한 것이 Tomcat이기 때문이다.</p>

<li><b>통합 개발 환경(IDE, Intergrated Development Environment)</b></li>
<p>IDE란 개발자의 효율적인 코드 작성 및 빌드를 돕는 소프트웨어이다. 일반적인 텍스트 편집기와 달리 다음 기능들을 제공한다.</p>

- <b>코드 편집 자동화</b>: 각 프로그래밍 언어는 구조에 정해진 규칙이 존재한다. IDE로 소스 코드를 자동으로 작성하거나 편집할 수 있다.
- <b>지능형 코드 완성</b>: 개발자가 단어를 입력하기 시작하면 IDE가 완성문을 제안한다.
- <b>리팩터링 지원</b>: 핵심적인 기능을 변경하지 않고 깔끔한 코드로 재구성하는 것을 리팩터링(Refeactoring)이라 한다. IDE는 어느정도 리팩터링을 자동으로 수행한다.
- <b>컴파일 기능</b>: IDE를 통해 고급언어로 작성된 코드를 기계어로 변환할 수 있다.
- <b>디버깅 기능</b>: 코드를 한 줄씩 순서대로 진행하여 올바르게 작동하는지 검사할 수 있다.

<p>Java 개발에 최적화된 대표적인 IDE를 뽑으라면 <b>이클립스(Eclipse)</b>와 <b>인텔리제이(IntelliJ)</b>를 들 수 있을 것이다. 
<p>이클립스는 속도가 느리고 약간의 버그가 있으나 무료로 제공되고 동시에 여러 프로젝트를 관리할 수 있다. 인텔리제이는 보다 지능적이고 속도가 빠르나 유료로 제공된다.</p>

<h2>2. 환경 변수</h2>
<p>환경 변수를 사용하면 실행 파일의 해당 위치까지 직접 액세스하지 않고 실행할 수 있다. 예를들어, 메모장을 명령어로 실행할 때 "notepad.exe"만 입력해도 실행되는 것은 실제 메모장 실행 파일의 위치가 "C:\Windows\System32\notepad.exe"에 있으나 환경 변수 Path 설정이 되어 있기 때문이다.</p>
<p>왜 Java를 다루면서 환경 변수 설정 방법을 알아야 하는가. 결론부터 설명하면 JDK를 설치할 때 경로를 수동으로 설정해야 하기 때문이다. JDK를 설치하고 cmd 창에 컴파일러를 호출하는 명령어 "<b>javac</b>"를 입력해본다.</p>

<img src="https://user-images.githubusercontent.com/90200010/187009973-101d1039-1bd8-4f7a-a962-b3622392e7cc.PNG" width="600">

<p>위의 오류가 발생할 것이다. JDK를 설치할 때 JRE의 경우 자동으로 Path 설정이 되지만 JDK는 아니기 때문이다. 이제 문제를 파악했으니 환경 변수를 직접 설정해보자.</p>

<li>"<b>제어판>시스템 및 보안>시스템>고급 시스템 설정</b>"에 들어간다.</li>

<img src="https://user-images.githubusercontent.com/90200010/187010932-5dcc8be5-bd4f-4c9a-bb77-149e175522a8.PNG" width="600">

<li><b>"고급>환경 변수"</b>에 들어간다.</li>

<img src="https://user-images.githubusercontent.com/90200010/187011009-0f100a97-ba02-461c-b4fe-63d1095377ae.PNG" width="600">

<li>환경 변수를 다음과 같이 설정한다.</li>

```
// 새로 만들기
변수명 : JAVA_HOME
변수값 : [JDK 경로]

// Path 편집하기
경로명 : %JAVA_HOME%\bin
```

<li>"<b>javac</b>"를 입력하여 아래 화면이 나오면 정상이다.</li>

<img src="https://user-images.githubusercontent.com/90200010/187011469-2110c61f-b286-4884-8b3c-152d9b41242b.PNG" width="600">

<h2>JSP 프로젝트 시작</h2>
<p>IntelliJ 기준 JSP 프로젝트의 개발 순서를 크게 나누면 다음과 같다.</p>

<li><b>3. 새로운 프로젝트 생성</b></li>
<p><b>New Project</b> 탭에 들어간 후, <b>Name</b>에 프로젝트명을 기입하고 <b>Create</b>한다.</p>  
<img src="https://user-images.githubusercontent.com/90200010/187019676-dc8c9579-81bc-4800-8d87-09a29daa6475.PNG" width="600">
<p><b>Add Framework Support</b> 메뉴에서 <b>Web Application</b>을 <b>Import</b>한다.</p>
<img src="https://user-images.githubusercontent.com/90200010/187020131-8ac952e2-c78a-4864-b022-be5ad094b26d.png" width="600">

<li><b>Tomcat 설정</b></li>
<p>상단의 <b>Run>Edit Configurations</b>에서 <b>Tomcat</b>을 추가하고 설정한다.

> <h3>※ 세부 설명</h3> 
> - <b>Name</b>은 서버명을 의미한다. 기본값으로 두어도 무방하다.<br/>
> - <b>Application Server</b>의 <b>Configure</b>으로 Tomcat의 경로를 설정해야 한다.<br/>
> - <b>JRE</b>에서 설치된 JRE 버젼을 선택해야 한다.<p/>

<img src="https://user-images.githubusercontent.com/90200010/187020347-ee77e8ad-25b4-41a6-8b13-3a0fe59e22b6.png" width="600">
<p><b>Deployment</b> 탭으로 이동하고 배포 방식을 설정한다.</p>

> <h3>※ 세부 설명</h3>
> - <b>WAR(Web Application Archive)</b>은 서블릿, 클래스, XML, 라이브러리, HTML 등의 자원들을 압축하여 배포 할 때 사용하는 파일 확장자이다.<br/>
> - <b>exploded</b>는 압축을 해제한 디렉터리의 형태로 배포하겠다는 뜻이다.<p/>

<img src="https://user-images.githubusercontent.com/90200010/187021029-74d94c5c-5462-40fb-adb9-dce6b07498eb.png" width="600">

<li><b>서블릿 및 JSP 작성</b></li>
<p>간단하게 index.jsp를 수정하였다.</p>

```html
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello JSP</title>
  </head>
  <body>
    <h2>My First JSP Page.</h2>
    <%
      int a = 10, b = 20;
      out.print(a + b);
      out.print("<br>");
    %>
  </body>
</html>
```

<li>빌드 및 실행</li>
<p>상단의 <b>Run</b> 버튼으로 실행한다.</p>
<img src="https://user-images.githubusercontent.com/90200010/187021426-f8864031-92ba-4bec-ae80-0e7ee8ff4538.png" width="600">

<li>압축파일 배포</li>
<p>상단의 <b>File>Project Structure</b>에서 <b>Web Application: Archive</b>를 추가한다.</p>
<img src="https://user-images.githubusercontent.com/90200010/187021903-54e39685-f5a9-4943-8053-139b57260855.png" width="600">
<p><b>Build>Build Artifacts...</b>으로 War 파일로 압축한다.</p>