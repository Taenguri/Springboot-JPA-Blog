## Blog 프로젝트

<hr>

__프로젝트 이름__ : Blog<br>
__개발 인원__ : 1명<br>
__개발 기간__ : 2022 ~ 진행중<br>
__개발 환경__ : Spring Boot, Java 1.8, HTHML5, CSS3, Jquery, Mysql, JSP, JPA, Bootstrap, STS4<br><br>
__핵심 기술__<br>
<ul>
   <li>RestController 를 이용한 CRUD</li>
   <li>Spring Security 를 이용한 회원가입</li>
   <li>Spring Security 를 이용한 로그인</li>
   <li>Oauth를 이용한 카카오 로그인</li> 
   <li>Pageable 를 이용한 페이징처리</li>
</ul>




<br><hr>
## 기술 설명 (RestController 를 이용한 CRUD)
![image](https://user-images.githubusercontent.com/100080583/159927969-f087532e-ef8f-4229-afbc-e34b3aa18c4b.png) <br><br><br>
CRUD 요청을 RestController 를 이용하여 비동기방식으로 처리<br><hr>


<br><hr>
## 기술 설명 (Spring Security 인증 화면 처리)
![image](https://user-images.githubusercontent.com/100080583/160604835-38e42017-2085-44a4-9096-2f20bc7154af.png)<br><br><br>
권한이 없는 사용자는 로그인창으로 이동하고 로그인 성공시 메인페이지로 이동<br><br><br>


## 기술 설명 (Spring Security 를 이용한 회원가입)
<br><br>
![image](https://user-images.githubusercontent.com/100080583/159927226-22b9e7a8-542b-47ba-8c9b-e30de2e8551e.png)<br><br><br>
![image](https://user-images.githubusercontent.com/100080583/159926963-786e7f8c-a942-480d-a3cf-0d5a167fa9f6.png))<br><br><br>
BCryptPasswordEncoder 를 이용한 암호화 처리
<br><hr>



## 기술 설명 (Spring Security 를 이용한 로그인)

![image](https://user-images.githubusercontent.com/100080583/160605230-f468417a-226f-4618-9196-f665aea8e945.png)<br><br><br>
JPA 네이밍 쿼리를 통하여 아이디를 찾음
<br><hr>


## 기술 설명 (Oauth를 이용한 카카오 로그인)
<br>

__1. Kakao developers 에서 REST API키 발급__<br><br>![image](https://user-images.githubusercontent.com/100080583/159942809-460e6b45-3f3a-41ce-9d1b-1b226e42fa1b.png)
<br><br>
__2. Kakao 로그인 환경설정 ( Redirect URI, 동의항목 설정 등)__<br><br>![image](https://user-images.githubusercontent.com/100080583/159943092-bfa439bd-47c8-42a3-bef8-3921901fb791.png)<br><br>
<br><br>![image](https://user-images.githubusercontent.com/100080583/159943189-ee5701f6-1ac4-46fa-85a4-4f0dddcec3e4.png)<br><br>
__3. 카카오 로그인 엑세스 토큰 요청__<br><br>
![image](https://user-images.githubusercontent.com/100080583/159945473-f57d2f6d-d7d0-4a49-8f60-0cc376990da2.png)<br><br>

__4. 토큰을 통한 사용자 정보 요청__<br><br>![image](https://user-images.githubusercontent.com/100080583/159946822-9ef2584f-8d72-4593-b221-1e4fadb32831.png)<br><br>

__5. 비가입자,가입자 여부 판단__<br><br>![image](https://user-images.githubusercontent.com/100080583/159940086-6fba3500-2d96-461a-9d50-385f5bf564d6.png)<br><br>
입력받은 카카오정보를 데이터베이스와 비교해서 회원가입하지 않은 사용자는 자동회원가입 처리를해준다.<br><br>
__6. 로그인 진행__<br><br>![image](https://user-images.githubusercontent.com/100080583/159940678-cdf213bd-5e32-4fd4-b504-8852210eb83b.png)<br><br>
AuthenticationManager 를 이용하여 로그인 진행<br><br><hr>
__7. 실행 화면__<br><br>
로그인전<br><br>
![image](https://user-images.githubusercontent.com/100080583/159950046-ec6eb83e-8f65-48b5-a7b5-41111a2c0f5f.png)
<br><br>
로그인후<br><br>![image](https://user-images.githubusercontent.com/100080583/159950486-a15dc91c-24cc-46ab-b925-4b188b7cb0de.png)<br><br>
Database<br><br>![image](https://user-images.githubusercontent.com/100080583/159950951-324fd3e6-3dce-48bb-9221-a854f04210c1.png)<br><br><hr>

## 기술 설명 (Pageable 를 이용한 페이징처리)<br>

![image](https://user-images.githubusercontent.com/100080583/159953560-ba93bd3b-33f7-4797-b1ea-653b8e516415.png)<br><br>
한 페이지당 게시물을 3개씩 보여준다<br><br>
