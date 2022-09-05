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