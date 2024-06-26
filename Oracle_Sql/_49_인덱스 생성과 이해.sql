<인덱스 생성과 이해>
;인덱스는 테이블 검색 성능을 빠르게 하기 위해 제공되는
개체이다. 
비록 직접 인덱스에 저장된 데이터를 검색하거나 조작할 수는
없지만 DB운영에 매우 중요하다.
초급 개발자나 초급 DBA 한테는 활용도가 많이 떨어지지만
중고급으로 올라갈 수록, SQL 에 대한 이해도가 높아질수록
인덱스에 대한 활용도가 올라간다.

테이블의 행은 우선순위가 없으며 입력 순서와는 무관하게 저장되고
검색된다. 이렇게 저장된 행이 순서에 무관하므로 오라클에서
테이블 내에 정보를 찾기 위해서는 반드시 테이블 전체를 읽어야
한다. 이렇게 테이블 전체를 읽는 것을 '풀 테이블 스캔'이라고 하고
'풀 테이블 스캔'은 테이블의 크기가 작을 때는 문제가 되지 않지만
테이블의 행이 수천만 건에서 수억 건을 넘어간다면 정보를 검색하는
시간이 너무 느려지게 되어 사실상 사용이 불가능해 질 수도 있다.
인덱스는 이렇게 매우 큰 테이블로부터 원하는 정보를 빠르게 검색하는
방법을 제공한다.

<ROWID>
; 오라클에서 관리하는 행의 물리적인 위치를 의미한다.
행을 DB전체에 걸쳐서 유일하게 구별하며 I/O를 수행할
때 위치를 직접 알려줌으로 가장 빠르게 행에 접근하는
정보이다.
구성은 저장된 파일의 번호, 블록 번호, 행 번호, 객체 번호
등으로 구성되며 모두 RDBMS가 직접 사용하도록 64bit로
엔코딩되어 있다.

<인덱스의 장점과 단점>
인덱스는 테이블을 설계하는 시점부터 효과적인 인덱스 이용을 위해
생성이 계획되고 응응 프로그램 설계에 반영돼야 한다.
인덱스는 테이블에 대한 DML이나 DDL 작업이 수행되면 RDBMS가
자동으로 유지해준다.
장점 : SELECT 문의 성능을 높여준다
단점 : DML(INSERT, UPDATE, DELETE) 작업의 성능을 저해한다.
      수행할 때마다 인덱스 테이블의 정렬이 이루어진다.
      
그래서 불필요한 인덱스의 생성은 자제하는 것이 좋다.

<인덱스 종류>
1) 고유 인덱스(Unique Index)
 중복된 값이 입력되지 않는다
 테이블에도 중복된 값을 허용하지 않는다
 PK, UK에 자동으로 만들어진다.
2) 비 고유 인덱스(Non Unique Index)
 중복된 값을 허용한다
 수동으로 생성하는 인덱스의 기본이다.
 
<인덱스의 생성 조건>
1) 테이블 크기가 최소 수십만에서 수천만건 이상으로 커야한다.
  - 수천건 이내의 테이블에서 인덱스는 도움이 되지 않는다
2) 조건과 조인에 자주 사용하는 컬럼에 생성한다
3) 검색량이 테이블의 5%미만 정도의 행을 검색하는 경우
  생성한다.
   - 5%이상이면 엄청나게 느려진다
   - 가능한 검색 대상이 수백 건 내외일 때 성능 향상이 
    뛰어나다.
4) 카디널리티가 높은 경우에 생성한다.
   - 이름, 학번 등과 같이 행의 개수와 저장된 값의 종류가
    비슷한 경우에 생성한다.
   - 성별과 같이 카디널리티가 낮은 경우 비트맵(Bit map)
    인덱스와 같이 물리적으로 구조가 다른 인덱스를 생성한다.
5) FK 컬럼에 반드시 인덱스를 생성해준다.
   - FK에는 자동으로 인덱스가 안 만들어진다.
   - PK나 UK인 경우 자동으로 인덱스가 만들어진다.
   - FK는 조인에 사용되므로 PK나 UK에만 인덱스가 만들어놓고
    FK에는 안 만들면, 조인시 FK가 있는 테이블은 '풀 테이블
    스캔'을 하기 때문에 조인 검색속도가 인덱스의 효과를
    보기 어렵다.
    
<인덱스 생성>
1) 자동 생성
  - PK, UK가 설정된 컬럼에 자동 생성된다.
  - 고유 인덱스(Unique Index)가 생성된다.
2) 수동 생성
  - CREATE INDEX 명령으로 생성한다.
  - 비 고유 인덱스(Non Unique Index)가 생성된다.
 
<인덱스 생성과 삭제 명령>
CREATE INDEX 인덱스명
ON 테이블명 (컬럼명|함수|수식);
  1) 컬럼은 여러 개 지정 가능하다
  2) 함수나 수식을 사용하는 인덱스(함수 기반:Function base)
    도 생성 가능하다
  3) 제약조건에 의해 자동으로 만들어진 인덱스는 제약조건과
    이름이 동일하다.

DROP INDEX 인덱스명;
  1) 인덱스를 삭제한다
  2) 제약조건에 의해 생성된 인덱스는 삭제되지 않는다
   -제약조건을 삭제하거나 비활성화하면 자동으로 삭제된다.
   
student 테이블에 인덱스를 추가/삭제한다
일반 컬럼 인덱스 생성



복합 인덱스 생성
인덱스는 major로 정렬한 다음 major값이 동일한 행에 대해서
sname으로 정렬한 데이터를 가지고 있다
그러므로 major컬럼으로 조건 검색하거나
major, sname 컬럼으로 조건검색하는 경우 비약적인 속도
향상을 가져온다.
단, sname 만으로 조건 검색하는 경우는 사용되지 못한다.


  
함수 기반 인덱스 생성


student 인덱스를 삭제한다


PK의 인덱스는 삭제할 수 없다

PK의 제약조건을 비활성화시 인덱스가 삭제된다


PK의 제약조건을 활성화시 인덱스가 생성된다.


score, course 테이블에 FK를 확인하고
FK 컬럼에 인덱스를 생성한다.













   
   
   
   
   
   








  
  
  
  
  
  
    
    
    
    






   
   
   
   
   
   

























