## Blog 프로젝트

<hr>

__프로젝트 이름__ : Blog<br>
__개발 인원__ : 1명<br>
__개발 기간__ : 2022.03.11 ~ 진행중<br>
__개발 환경__ : Spring Boot, Java 1.8, HTHML5, CSS3, Jquery, Mysql, JSP, JPA, Bootstrap, STS4<br><br>
__핵심 기술__<br>
<ul>
   <li>RestController 를 이용한 CRUD</li>
   <li>Spring Security 를 이용한 암호화</li>
   <li>Oauth를 이용한 카카오 로그인</li> 
</ul>

<br><hr>
## 기술 설명 (RestController 를 이용한 CRUD)
![image](https://user-images.githubusercontent.com/100080583/159927969-f087532e-ef8f-4229-afbc-e34b3aa18c4b.png) <br><br><br>
CRUD 요청을 RestController 를 이용하여 비동기방식으로 처리<br><hr>


## 기술 설명 (Spring Security 를 이용한 암호화 로그인)
<br><br>
![image](https://user-images.githubusercontent.com/100080583/159927226-22b9e7a8-542b-47ba-8c9b-e30de2e8551e.png)<br><br><br>
![image](https://user-images.githubusercontent.com/100080583/159926963-786e7f8c-a942-480d-a3cf-0d5a167fa9f6.png))<br><br><br>
BCryptPasswordEncoder 를 이용한 암호화 처리
<br><hr>
## 기술 설명 (Oauth를 이용한 카카오 로그인)
<br>

__1. Kakao developers 에서 REST API키 발급__<br>
2. Kakao 로그인 환결설정 ( Redirect URI, Logout Redirect URI, 동의항목 설정 등)<br>
3. 카카오 로그인 엑세스 토큰 받기<br>
4. 토큰을 통한 사용자 정보 조회<br>
5. 비가입자,가입자 여부 판단<br>![image](https://user-images.githubusercontent.com/100080583/159940086-6fba3500-2d96-461a-9d50-385f5bf564d6.png)<br>
입력받은 카카오정보를 데이터베이스와 비교해서 회원가입하지 않은 사용자는 자동회원가입 처리를해준다.<br>
6. 로그인 진행<br>![image](https://user-images.githubusercontent.com/100080583/159940678-cdf213bd-5e32-4fd4-b504-8852210eb83b.png)<br>


