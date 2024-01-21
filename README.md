# Study-boilerplate
### 1. 정의
기본적으로 어떤 제품을 만들 때 가장 기본이 되는 게시판 기능 API를 공부용으로 만들어보기.<br/>
만들 때 생기는 문제점을 일단 이슈 코멘트로 작성해서 나중에 블로그에 정리

### 2. 개발환경
Backend: SpringBoot3 <br>
Database: H2(테스트), MySQL(로컬)

### 3. 개발순서
- #### ver 1.
- [ ] 데이터 베이스 연결 (H2, MySQL)
- [ ] Mybatis 설정
- [ ] 회원 기능 구현(CRUD)
- [ ] 세션 로그인 기능 구현
- [ ] 게시판 기능 구현(CRUD)
- [ ] 게시글 기능 구현(CRUD)
- [ ] 댓글 기능 구현(CRUD)
- [ ] Spring Security를 통한 인증 인가 구현
- [ ] jwt 로그인 구현

- #### ver 2.
- [ ] Spring Data JPA 마이그레이션
- [ ] Spring session을 통한 DB or InmemoryDB에 세션의 정보를 저장하는 기능 구현 (jwt에 대한 문제 인식)<br/>
- [ ] OAuth 2.0를 이용한 SNS 로그인 구현

... 생각의 재료가 더 쌓이면 추가 예정
