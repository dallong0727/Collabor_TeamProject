<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>



<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>


</head>

<body>
	<!-- 로그인 Modal -->
	<div class="modal fade" id="modal-login" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span> 로그인
					</h4>
				</div>
				<div class="modal-body">
					<form action="loginForm" class="modal-form" method="post">
						<table class="project-login-table">
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="idCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input" type="text"
									placeholder="최대 10자"></td>
							</tr>
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input"
									type="password" placeholder="최소 8자"></td>
							</tr>
							<tr>
								<td class="project-login-table-td2">
									<p>
										<strong>로그인하셔서 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td3"><input
									class="project-login-table-button1" type="button" value="로그인">
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td3"><input
									class="project-login-table-button2" type="button"
									data-toggle="modal" data-target="#modal-login" value="회원가입">
								</td>
							</tr>
							<tr>
								<td class="project-login-table-td4"><a
									id="custom-login-btn" href="javascript:loginWithKakao()"> <img
										src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
										width="222" />
								</a></td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td4"><a id="naver_id_login" href="#">네이버
										로그인</a></td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td4">
								<a  data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true" href="#">페이스북 로그인</a></td>
							</tr>
						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>


		</div>
	</div>



	<!-- 회원가입 Modal -->
	<div class="modal fade" id="modal-regist" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span> 회원가입
					</h4>
				</div>
				<div class="modal-body">
					<form action="JoinForm" class="modal-form" method="post" id="JoinForm"
						name="JoinForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp; <span
											id="msgId"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userId" name="userId" placeholder="숫자와 영어로 4-12자"></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPw"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password"
									class="project-regist-table-input" id="userPw" name="userPw"
									placeholder="영문과 특수문자를 포함한 최소 8자"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password" id="userPwCheck" name="userPwCheck"
									class="project-regist-table-input" placeholder="비밀번호가 일치해야합니다."></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input" name="userName"
									id="userName" placeholder="OOO"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="email" class="project-regist-table-input" name="userEmail"
									id="userEmail" placeholder="email@example.com"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>주소를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrZipNum" name="userAddrZipNum" placeholder="우편번호">
									<button type="button" class="btn btn-primary"
										onclick="goPopup()">주소찾기</button></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrBasic" name="userAddrBasic" placeholder="기본주소"></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrDetail" name="userAddrDetail" placeholder="상세주소"></td>
							</tr>

							<tr>
								<td class="project-regist-table-td2">
									<p>
										<strong>회원가입하셔서 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3" >
									<input type="button" value="회원가입"
									class="project-regist-table-button1" id="joinBtn">
								</td>
							</tr>

						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<script>
	
	$("#modal-regist").modal({
		backdrop: 'static'
	})
	
	
		$("#JoinBtn").click(function() {

			if ($("#userId").val() == '') {
				alert("아이디는 필수사항 입니다");
				return;
			} else if ($("#userPw").val() == '') {
				alert("비밀번호는 필수사항입니다");
				return;
			} else if ($("#userPw").val() != $("#userPwCheck").val()) {
				alert("비밀번호를 확인해주세요");
				return;
			} else if ($("#userName").val() == '') {
				alert("이름은 필수사항 입니다");
				return;
			} else if ($("#userEmail").val() == '') {
				alert("이메일은 필수사항 입니다");
				return;
			} else if ($("#userAddrZipNum").val() == '') {
				alert("우편번호는 필수사항 입니다");
				return;
			} else if ($("#userAddrBasic").val() == '') {
				alert("주소는 필수사항 입니다");
				return;
			} else {
				alert("회원가입되셨습니다");
				$("#joinForm").submit();

			}

		})
		
		
		
		var id = document.getElementById("userId");
        id.onkeyup = function() {
            /*자바스크립트의 정규표현식 입니다*/
            /*test메서드를 통해 비교하며, 매칭되면 true, 아니면 false반*/
            var regex = /^[A-Za-z0-9+]{4,12}$/; 
            if(regex.test(document.getElementById("userId").value )) {
                document.getElementById("userId").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("userId").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
        }
        /*비밀번호 형식 검사 스크립트*/
        var pw = document.getElementById("userPw");
        pw.onkeyup = function(){
            var regex = /^[A-Za-z0-9+]{8,16}$/;
             if(regex.test(document.getElementById("userPw").value )) {
                document.getElementById("userPw").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("userPw").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }
        /*비밀번호 확인검사*/
        var userPwCheck = document.getElementById("userPwCheck");
        userPwCheck.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("userPwCheck").value == document.getElementById("userPw").value ) {
                document.getElementById("userPwCheck").style.borderColor = "green";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("userPwCheck").style.borderColor = "red";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        
		
		

		/* var id = document.getElementById("#userId");
		var pw = document.getElementById("#userPw");
		var pwChk = document.getElementById("#userPwCheck");

		msgId = document.querySelector("#msgId");
		msgPw = document.querySelector("#msgPw");
		msgPwChk = document.querySelector("#msgPwCheck");

		id.onkeyup = function() {
			//정규표현식
			var regex1 = /^[A-Za-z0-9+]{4,12}$/;
			if (regex1.test(id.value)) {
				id.style.borderColor = "green";
				msgId.innerHTML = "사용가능합니다";
			} else {
				id.style.borderColor = "red";
				msgId.innerHTML = "사용불가합니다";
			}

		}

		//비밀번호 형식검사
		pw.onkeyup = function() {
			var regex2 = /^.*(?=^.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
			if (regex2.test(pw.value)) {
				pw.style.borderColor = "green";
				msgPw.innerHTML = "사용가능합니다";
			} else {
				pw.style.borderColor = "red";
				msgPw.innerHTML = "사용불가합니다";
			}
		}

		//비밀번호 확인
		pwChk.onkeyup = function() {
			if (pw.value == pwChk.value) {
				pwChk.style.borderColor = "green";
				msgPwChk.innerHTML = "비밀번호가 일치합니다";
			} else {
				pwChk.style.borderColor = "red";
				msgPwChk.innerHTML = "비밀번호가 일치하지 않습니다";
			}
		}
 */
		//주소 팝업창
		function goPopup() {

			var pop = window
					.open(
							"${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp",
							"pop",
							"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
				roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
				bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
				rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {

			document.getElementById("userAddrZipNum").value = zipNo;
			document.getElementById("userAddrBasic").value = roadAddrPart1;
			document.getElementById("userAddrDetail").value = addrDetail;

		}

		//1. 카카오 초기화
		Kakao.init('e2bc77ca67693e7633f95f1e279e4985');
		console.log(Kakao.isInitialized());

		//2. 카카오 로그인 버튼
		function loginWithKakao() {
			Kakao.Auth.login({
				// success: function(authObj) {
				//     alert(JSON.stringify(authObj))
				// },
				// fail: function(err) {
				//     alert(JSON.stringify(err))
				// },
				success : function(authObj) {
					getInfo(); //사용자 정보요청 함수 호출
					//alert(JSON.stringify(authObj))
				},
				fail : function(err) {
					alert('failed to login: ' + JSON.stringify(err))
				},

			})

		}

		//3. 사용자 정보 얻기
		function getInfo() {

			Kakao.API.request({
				url : '/v2/user/me',
				success : function(res) {
					//alert(JSON.stringify(res))
					console.log(res)

					//아래의 코드로 id추출
					var id = res.id;
					var email = res.kakao_account.email;
					var name = res.kakao_account.profile.nickname;
					//var profile_img = res.kakao_account.profile.profile_image_url;

					console.log(id, email, name);

					//폼 요청 url변경
					document.loginForm.action = "http://localhost:8181/controller";
					//폼 id의 value를 변경
					document.loginForm.id.value = id;
					//
					document.loginForm.email.value = email;

					document.loginForm.name.value = name;

					document.loginForm.submit(); //서브밋

				},
				fail : function(error) {
					alert(
					/* 'login success, but failed to request user information: ' +
					JSON.stringify(error) */
					"사용자 요청 정보에 실패했습니다. 동의항목을 확인하세요.")
				},
			})

		}
		
		
		//https://developers.naver.com/docs/login/api/
		var naver_id_login = new naver_id_login("YOUR_CLIENT_ID", "YOUR_CALLBACK_URL");
	  	var state = naver_id_login.getUniqState();
	  	naver_id_login.setButton("white", 2,40);
	  	naver_id_login.setDomain("YOUR_SERVICE_URL");
	  	naver_id_login.setState(state);
	  	naver_id_login.setPopup();
	  	naver_id_login.init_naver_id_login();
	  	
	  	
	  	var naver_id_login = new naver_id_login("YOUR_CLIENT_ID", "YOUR_CALLBACK_URL");
	    // 접근 토큰 값 출력
	    alert(naver_id_login.oauthParams.access_token);
	    // 네이버 사용자 프로필 조회
	    naver_id_login.get_naver_userprofile("naverSignInCallback()");
	    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	    function naverSignInCallback() {
	      alert(naver_id_login.getProfileData('email'));
	      alert(naver_id_login.getProfileData('nickname'));
	      alert(naver_id_login.getProfileData('age'));
	    }
		
		
	    window.fbAsyncInit =function() {
	        //SDK loaded, initialize it
	        FB.init({
	            appId      :'나의 app id',
	            cookie     :true, // enable cookies to allow the server to access
	                    // the session
	            xfbml      :true, // parse social plugins on this page
	            version    :'v2.8' // use graph api version 2.8
	        });
	      
	        //check user session and refresh it
	        FB.getLoginStatus(function(response) {
	            if (response.status ==='connected') {
	                //user is authorized
	                //document.getElementById('loginBtn').style.display = 'none';
	                getUserData();
	            }else {
	                //user is not authorized
	            }
	        });
	    };
	      
	    //load the JavaScript SDK
	    (function(d, s, id){
	        var js, fjs = d.getElementsByTagName(s)[0];
	        if (d.getElementById(id)) {return;}
	        js = d.createElement(s); js.id = id;
	        js.src ="//connect.facebook.com/ko_KR/sdk.js";
	        fjs.parentNode.insertBefore(js, fjs);
	    }(document,'script','facebook-jssdk'));
	      
	    //add event listener to login button
	    document.getElementById('loginBtn').addEventListener('click',function() {
	        //do the login
	        FB.login(function(response) {
	            if (response.authResponse) {
	                access_token = response.authResponse.accessToken;//get access token
	                user_id = response.authResponse.userID;//get FB UID
	                console.log('access_token = '+access_token);
	                console.log('user_id = '+user_id);
	                $("#access_token").text("접근 토큰 : "+access_token);
	                $("#user_id").text("FB UID : "+user_id);
	                //user just authorized your app
	                //document.getElementById('loginBtn').style.display = 'none';
	                getUserData();
	            }
	        }, {scope:'email,public_profile,user_birthday',
	            return_scopes:true});
	    },false);


	    출처: https://kimna-y.tistory.com/33 [나의 흔적들]

	</script>

</body>
</html>