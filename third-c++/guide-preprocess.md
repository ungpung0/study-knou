<h1>C++ 기본</h1>

<h2>명칭 공간</h2>

<h3>명칭 공간 정의</h3>
<p>명칭 공간(Name space)은 일종의 코드 블록 개념으로, 동일한 이름을 갖는 식별자들에게 구분 방법을 제공한다. 구체적인 사용 예제는 아래와 같다.</p>

```cpp
// custom namespace "myRecord"
namespace myRecord {
    int math = 99;
}

// custom namespace "otherRecord"
namespace otherRecord {
    int math = 0;
}

// grobal variable
int math = 50;

int main(void) {
    // local variable
    int math = 35;

    // output stream with standard namespace 
    std::cout << math << endl;
    std::cout << ::math << endl;
    std::cout << myRecord::math << endl;
    std::cout << otherRecord::math << endl;
}

```

<h2>선행 처리</h2>

<h3>선행 처리 정의</h3>
<p>선행 처리(Preprocess)는 실행 파일을 생성하는 과정에서 소스파일 내의 특정 지시문을 처리하는 작업을 의미한다. 이는 선행처리기(Preprocessor)로 처리되며 코드를 생성하는 게 아닌, 재구성하는 역할을 한다.</p>

<h3>지시어 종류</h3>
<table>
    <th>Directives</th>
    <th>Description</th>
    <tr>
        <td>#include</td>
        <td>선행처리기가 다른 파일을 읽고 프로그램에 삽입하라는 것을 의미한다.<br>(예)#include &lt;iostream&gt;</td>
    </tr>
    <tr>
        <td>#define</td>
        <td>일련의 문자들을 다른 문자로 대치하기 위해서 사용한다. 하드 코딩을 방지할 때 유용하게 사용할 수 있다.<br>(예) #define ARRAY_LENGTH 100</td>
    </tr>
    <tr>
        <td>#undef</td>
        <td>기존에 정의했던 매크로를 무효화한다.<br>(예) #undef ARRAY_LENGTH</td>
    </tr>
    <tr>
        <td>#if ~ #elif ~ #else ~ #endif</td>
        <td>조건적 선행 지시자로서 일반적인 if문과 사용법은 동일하다. 단, 반드시 마지막에 #endif를 작성해야 한다.<br>(예) 예제참조</td>
    </tr>
    <tr>
        <td>(#ifdef | #ifndef) ~ #else ~ #endif</td>
        <td>매크로 이름 정의 여부에 따른 조건적 선행 지시자이다. 참일경우 #ifdef를, 거짓일경우 #ifndef를 사용한다.<br>(예) 예제참조</td>
    </tr>
    <tr>
        <td>#line</td>
        <td>컴파일 시 오류가 발생하면 소스 코드명과 라인 넘버를 반환하는 지시자이다. 즉, __FILE__과 __LINE__를 재정의한다.<br>(예) #line 1 "프로그램테스트"</td>
    </tr>
    <tr>
        <td>#error</td>
        <td>지정한 오류 메시지를 출력하고, 컴파일을 중단할 때 사용한다.<br>(예) 예제 참조</td>
    </tr>
    <tr>
        <td>#pragma</td>
        <td>이식성을 위해서 OS 별 지시사항을 전달할 때 사용한다.<br>(예) #pragma warning (disable:4996)</td>
    </tr>
</table>

<h3>사전 정의 매크로</h3>
<p>위의 #define에서 생성하는 사용자 정의 매크로 외에 개발자가 사용할 수 있는 사전 정의 매크로(Predefined Macro Names)가 존재한다. 다음은 사전 정의 매크로를 정리한 표이다.</p>

<table>
    <th>Macro</th>
    <th>Description</th>
    <tr>
        <td>__FILE__</td>
        <td>현재 실행 파일명을 문자열로 반환한다.</td>
    </tr>
    <tr>
        <td>__LINE__</td>
        <td>해당 코드의 라인 넘버를 반환한다.</td>
    </tr>
    <tr>
        <td>__FUNCTION__</td>
        <td>해당 코드가 실행하는 함수명을 반환한다.</td>
    </tr>
    <tr>
        <td>__DATE__</td>
        <td>날짜를 "월 일 연도" 순으로 반환한다. </td>
    </tr>
    <tr>
        <td>__TIME__</td>
        <td>시간을 "시 분 초" 순으로 반환한다.</td>
    </tr>
    <tr>
        <td>__cplusplus</td>
        <td>컴파일러의 C++ 버젼을 정수형으로 반환한다.</td>
    </tr>
</table>

<h3>종합 예제</h3>

```cpp
#include <iostream>
#pragma warning (disable:4996)
#define ARRAY_LENGTH 10

#ifndef UNICODE
#error This Program isnt Support UTF-8
#else

int main(void) {    
    int array_test[ARRAY_LENGTH];
    for(int i = 0; i < ARRAY_LENGTH; i++; i++) {
        std::cin >> array_test[i];
    }

    std::cout << "This Program Support UTF-8" << std::endl;
    std::cout << __DATE__ << std::endl;
}

#endif
```