<h1>MVC와 빈즈</h1>
<p>디자인 패턴(Design Pattern)은 프로그램을 개발할 때 발생했던 문제들의 재발생을 방지하기 위해서 고안한 특정한 규약이다.</p>

<h2>MVC 패턴</h2>

<h3>MVC 패턴 정의</h3>
<p>MVC란 <b>모델(Model)</b>, <b>뷰(View)</b>, <b>컨트롤러(Controller)</b>의 약자의 합성어로 애플리케이션의 역할을 세 가지로 분할한 개발 방법론이다.</p>

<h3>MVC 구성요소</h3>
<table>
    <th>Component</th>
    <th>Desc</th>
    <tr>
        <td>모델(Model)</td>
        <td>애플리케이션의 DB, 변수, 상수와 같은 데이터를 가공, 관리하는 역할을 맡는다. 준수해야할 규칙은 다음과 같다.
        <li>애플리케이션의 모든 데이터를 가짐.</li>
        <li>뷰와 컨트롤러와 분리하여 설계.</li>
        <li>요소의 처리방법을 명확히 구현.</li></td>
    </tr>
    <tr>
        <td>뷰(View)</td>
        <td>데이터, 객체의 입출력을 사용자에게 인터페이스 형태로 제공하는 역할을 맡는다. 준수해야할 규칙은 다음과 같다.
        <li>데이터를 별도로 뷰에 저장하지 않음.</li>
        <li>모델과 컨트롤러와 분리하여 설계.</li>
        <li>요소의 처리방법을 명확히 구현.</li></td>
    </tr>
    <tr>
        <td>컨트롤러(Controller)</td>
        <td>모델과 뷰의 요소들을 연결하는 역할을 맡는다. 준수해야할 규칙은 다음과 같다.
        <li>모델과 뷰를 염두하여 설계.</li>
        <li>모델과 뷰의 변경사항을 모니터링.</li></td>
    </tr>
</table>

<h3>MVC 패턴의 종류</h3>
<li>모델 1(Model 1)</li>
<p>모델 1은 애플리케이션을 모델을 빈즈에, 뷰와 컨트롤러를 JSP에서 구현하는 구조를 갖고 있다.<br>흐름이 단순하고 구현이 쉬운 반면에, JSP와 Java가 혼재되어 코드가 복잡하고 유지보수가 어렵다.</p>

<li>모델 2(Model 2)</li>
<p>모델 2는 모델을 서비스 클래스에, 뷰를 JSP에, 컨트롤러를 서블릿에서 구현하는 구조를 갖고 있다.<br>코드를 사용 목적에 따라서 명확히 분리하여 코드가 복잡하지 않고 유지보수가 용이하나, 구조가 어렵고 작업량이 많다.</p>

<h2>자바 빈즈</h2>

<h3>자바 빈즈 정의</h3>
<p>자바 빈즈(Beans)는 JSP 액션 태그로 접근할 수 있는 모델 역할을 수행하는 클래스이다. 값을 갖는 속성, 값을 설정하는 Setter() 메소드, 값을 불러오는 Getter() 메소드로 구성된다. 빈즈를 사용함으로써 얻을 수 있는 장점은 다음과 같다.</p>
<table>
    <th>Profits</th>
    <th>Desc</th>
    <tr>
        <td>폼 데이터 처리 용이</td>
        <td>클라이언트의 입력 요청을 처리하기 위해 사용하는 getParameter()를 하나의 액션 태그로 처리할 수 있다.</td>
    </tr>
    <tr>
        <td>애플리케이션 확장 용이</td>
        <td>상태 유지를 위해서 필요한 데이터를 범위를 확장하여 사용할 수 있다.</td>
    </tr>
    <tr>
        <td>컴포넌트 기반 구현</td>
        <td>비즈니스 로직을 뷰와 분리하여 구현하여 보다 효과적으로 개발할 수 있다.</td>
    </tr>
</table>

<h3>자바 빈즈 규약</h3>
<p>자바 빈즈를 JSP에서 액션 태그를 통하여 사용하려면, 명확하게 지켜야하는 규약들이 존재한다.</p>
<table>
    <th>Rules</th>
    <th>Desc</th>
    <tr>
        <td>패키지화</td>
        <td>빈즈는 반드시 기본 패키지가 아닌 커스텀 패키지에 위치하고 있어야 한다.</td>
    </tr>
    <tr>
        <td>기본 생성자 요구</td>
        <td>빈즈의 객체의 생성에는 &lt;jsp:useBean&gt; 태그가 사용되는데, 기본 생성자를 요구하기 때문이다.</td>
    </tr>
    <tr>
        <td>변수 외부 접근 금지</td>
        <td>빈즈의 속성은 외부에서 직접 접근이 불가해야 한다. 때문에 반드시 private로 선언한다.</td>
    </tr>
    <tr>
        <td>getter() 메소드</td>
        <td>private로 선언한 멤버 변수의 값을 반환하기 위해서는 반드시 연관된 getter() 메소드를 사용해야 한다.</td>
    </tr>
    <tr>
        <td>setter() 메소드</td>
        <td>private로 선언한 멤버 변수의 값을 변경하기 위해서는 반드시 연관된 setter() 메소드를 사용해야 한다.</td>
    </tr>
    <tr>
        <td>메소드 외부 접근 허용</td>
        <td>getter()와 setter() 메소드는 외부에서 접근하여 사용하므로 public으로 선언한다.</td>
    </tr>
</table>

<h3>자바 빈즈 예제</h3>

<li>빈즈 생성 예제</li>

```java
package beans;

public class JavaBeansExample {
    // 멤버 변수 생성.
    private String name;
    private int number;

    // 접근 메소드 getter().
    public String getName() {
        return name;
    }
    public int getNumber() {
        return number;
    }

    // 접근 메소드 setter().
    public void setName(String name) {
        this.name = name;
    }
    public void setNumber(int number) {
        this.number = number;
    }
}
```

<li>빈즈 사용 예제</li>

```jsp
<!-- 빈즈 객체 생성. -->
<jsp:useBean id="beanExample" class="beans.JavaBeansExample" scope="request"/>
<!-- setter() 호출. -->
<jsp:setProperty property="name" name="name" value="admin"/>
<!-- getter() 호출. -->
<jsp:getProperty property="name" name="name"/>
```