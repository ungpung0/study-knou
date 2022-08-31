<h2>데이터 전송 방식</h2>
<p>클라이언트와 서버가 데이터를 주고받는 방식으로 GET과 POST가 있다.</p>

<li><b>GET</b></li>
<p>GET 방식은 클라이언트에서 서버로 데이터를, 주소 뒤에 이름(name)과 값(value)가 결합된 String 형태로 전달하는 방식이다. 길이에 제한이 있고 <b>쿼리 스트링(QueryString)</b>이 노출되는 단점이 있으나 후술할 POST 방식보다 전송 속도가 빠르다.</p>

<li><b>POST</b></li>
<p>POST 방식은 GET과 마찬가지로 서버로 데이터를 전송하는데, 인코딩(Encoding)을 통해서 전달하기 때문에 쿼리스트링이 노출되지 않는 방식이다. GET 방식보다 속도가 느리지만, 정보가 노출되지 않아 보안성이 높고 라디오 버튼, 텍스트 박스와 같은 HTML 객체들의 값을 전송할 수 있다.</p>

<h2>웹 캐쉬</h2>

<h3>웹 캐시의 정의</h3>
<p>매번 네트워크를 경유하여 리소스를 가져오는 것은 비용을 많이 소모하고 서버에 부담을 준다. 이 문제를 방지하기 위한 첫 번째 기술이 <b>웹 캐시(Web Cache)</b>이다.</p>
<p>웹 캐시는 클라이언트가 HTML, JS, CSS 등의 리소스 파일을 서버로부터 응답받고 복사본을 저장한다. 그리고 이후에 동일한 URL의 리소스 요청은 복사본을 사용하여 액세스한다. 클라이언트 측면에서 액세스 속도가 증가하고, 서버 측면에서 네트워크 트레픽이 감소하니 유용한 기술이라 볼 수 있겠다.</p>

<h3>웹 캐시의 종류</h3>
<li>브라우저 캐시</li>
<p>브라우저 캐시(Browser Cache)는 클라이언트의 웹 브라우저에 의해서 이루어지는 내부 디스크 캐싱 방식이다. 리소스를 공유하지 않는 개인의 캐시에 사용한다.<br/>예) 뒤로가기, 자동 로그인.</p>
<li>프록시 캐시</li>
<p>프록시 캐시(Proxy Cache)는 브라우저 캐시와 비슷하게 동작하는 네트워크 캐싱 방식이다. 한정된 클라이언트를 위해서 무제한의 컨텐츠를 캐시한다. 주로 기업의 <b>침입 차단 시스템(IPS, Intrusion Prevention System)</b>, <b>방화벽(Firewall)</b>에 설치되어 트래픽 감소, 접근 정책, 제안 우회, 사용률 기록 등을 수행한다.</p>
<li>게이트웨이 캐시</li>
<p>서버 프론트에 설치되어 요청된 캐시의 효율적인 분배를 수행한다. 수많은 클라이언트를 위해서 한정된 컨텐츠를 캐시한다. <b>암호화(Encryption)</b>, <b>SSL 가속(SSL Acceleration)</b>, <b>부하 분산(Load Balancing)</b>, <b>정적 콘텐츠 보관/제공(Serve/Cache Static Content)</b>, <b>압축(Compression)</b> 등을 수행한다.</p>

<h3>Cache-Control</h3>
<p>HTML 1.1부터는 HTTP 헤더를 사용하여 브라우저 캐싱 여부를 설정할 수 있다. 이것을 <b>Cache-Control</b>이라 한다.</p>

<li><b>캐시 여부 설정</b></li>
<table>
    <th>지시자</th>
    <th>설명</th>
    <tr>
        <td>public</td>
        <td>요청의 종류와 관계없이 캐시된다.</td>
    </tr>
    <tr>
        <td>private</td>
        <td>공유되는 캐시를 저장하지 않는다. 즉, 사설 캐시만을 저장한다.</td>
    </tr>
    <tr>
        <td>no-cache</td>
        <td>캐시 유효 여부를 확인하기 위해서 매번 서버에 요청한다.</td>
    </tr>
    <tr>
        <td>no-store</td>
        <td>요청의 종류와 관계없이 캐시하지 않는다.</td>
    </tr>
</table>

<li><b>캐시 만료 설정</b></li>
<table>
    <th>지시자</th>
    <th>설명</th>
    <tr>
        <td>max-age=[second]</td>
        <td>캐시 유지 시간을 초 단위로 설정한다.</td>
    </tr>
    <tr>
        <td>s-maxage=[second]</td>
        <td>공유 캐시에 대해서 시간을 초 단위로 설정한다.</td>
    </tr>
    <tr>
        <td>max-stale=[second]</td>
        <td>클라이언트가 요청한 만료된 컨텐츠의 재활용 시간을 설정한다.</td>
    </tr>
    <tr>
        <td>min-fresh=[second]</td>
        <td>클라이언트가 요청한 컨텐츠의 최소 지속 시간을 설정한다.</td>
    </tr>
    <tr>
        <td>stale-while-revalidate=[second]</td>
        <td>클라이언트의 요청 반복 간격에 따라서 캐시 처리를 설정한다.<br><li>1초 이내 : 그대로 반환.</li><li>1 ~ 60초 : 만료된 캐시값을 반환하는 동시에 재검증을 요청.</li><li>60초 이후 : 서버에 요청을 보냄.</li></td>
    </tr>
    <tr>
        <td>stale-if-error=[second]</td>
        <td>클라이언트의 요청에 대한 검증이 실패할 경우, 만료한 컨텐츠를 받아들일 수 있는 기간을 설정한다.</td>
    </tr>
</table>

<li><b>캐시 검증 설정</b></li>
<table>
    <th>지시자</th>
    <th>설명</th>
    <tr>
        <td>must-revalidate</td>
        <td>컨텐츠가 만료되면 검증 없이 재활용하지 않는다.</td>
    </tr>
    <tr>
        <td>proxy-revalidate</td>
        <td>s-maxage와 마찬가지로 공유 캐시에 대해서 컨텐츠가 만료되면 재활용하지 않는다.</td>
    </tr>
    <tr>
        <td>immutable</td>
        <td>컨텐츠가 만료되지 않았다면 재검증 요청을 전송하지 않는다.</td>
    </tr>
</table>

<li><b>캐시 기타 설정</b></li>
<table>
    <th>지시자</th>
    <th>설명</th>
    <tr>
        <td>no-transform</td>
        <td>중간 캐시는 Content-Encoding, Content-Range, Content-Type을 변경할 수 없다.</td>
    </tr>
    <tr>
        <td>only-if-cached</td>
        <td>저장된 캐시를 통해서만 요청할 수 있다.</td>
    </tr>
</table>

```java
<%
    // 캐시 비활성화.
    response.setHeader("Cache-Control", "no-store");

    // 정적 리소스 캐싱 (7일).
    response.setHeader("Cache-Control", "public, max-age=604800, immutable");

    // 만료한 캐시 재사용.
    response.setHeader("Cache-Control", "max-age=0");
%>
```