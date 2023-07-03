<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <!-- 부트스트랩 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/9ba187d4f0.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="../../resources/css/style.css">
    <link rel="stylesheet" href="../../resources/css/form.css">
</head>

<body>

    <!-- 전체 컨테이너 시작 -->
    <div class="container-fluid all-wrap loginForm">




        <!-- 컨텐츠 영역 시작 -->
        <section class="main-visual">
            <div class="main-content-left">
                <div class="form-container boxShadow">
                    <div class="form-wrap">
                        <h2 class="form-title">로그인</h2>
                        <form action="">
                            <div class="form-check">
                                <input type="checkbox" name="login-check" id="login-check"><span></span>
                                <label for="login-check">로그인 상태 유지</label>
                            </div>

                            <input type="email" name="" id="login-id" placeholder="아이디(이메일)를 입력해주세요.">
                            <input type="password" name="" id="login-pw" placeholder="비밀번호를 입력해주세요.">

                            <button type="submit" class="form-btn"><a href="/codeGroupList" style="width:100%; height:100%; display:block;">로그인</a></button>
                        </form>
                        <!-- 로그인 폼 -->

                        <ul class="login-form-link">
                            <li><a href="#">회원가입</a></li>
                            <li><a href="#">아이디 찾기</a></li>
                            <li><a href="#">비밀번호 찾기</a></li>
                        </ul>
                        <!-- 로그인 페이지 링크 -->

                        <div class="sns-login-wrap">
                            <h3 class="sns-login">간편 로그인</h3>
                            <ul class="sns-login-link">
                                <li><a href="#">구글</a></li>
                                <li><a href="#">페이스북</a></li>
                                <li><a href="#">카카오</a></li>
                            </ul>
                        </div>
                        <!-- 간편 로그인  -->

                    </div>
                    
                </div>
            </div>
            <!-- 메인페이지 왼쪽 영역 끝 -->

         

        </section>
        <!-- 컨텐츠 영역 끝 -->


    </div>
    <!-- 전체 컨테이너 끝-->

</body>

</html>