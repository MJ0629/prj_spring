<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- 부트스트랩 & query CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- 달력 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>


    <link rel="stylesheet" href="../../resources/css/memberList.css">
</head>
<body>
    <div class="container-wrap">

        <!-- 헤더 영역 시작 -->
        <header class="container-fluid shadow d-flex align-items-center justify-content-lg-between p-0 pt-3 pb-3">
            <nav class="row navbar navbar-expand-lg container-fluid m-auto d-flex align-items-center justify-content-lg-between headerNav">
                <ul class="row m-auto col-8 p-0">
                    <li class="nav-item col-3"><a href="#" class="nav-link navbar-brand"><h1 class="fs-6 fw-bold p-0 m-0">ABC MANAGEMENT SYSTEM</h1></a></li>
                    <li class="nav-item col"><a href="#" class="nav-link">회원관리</a></li>
                    <li class="nav-item col"><a href="#" class="nav-link">서비스관리</a></li>
                    <li class="nav-item col"><a href="#" class="nav-link">사이트관리</a></li>
                    <li class="nav-item col"><a href="#" class="nav-link">로그관리</a></li>
                    <li class="nav-item col"><a href="#" class="nav-link">시스템관리</a></li>
                </ul>
                <ul class="row m-auto col-2">
                    <li></li>
                    <li>Administrator</li>
                </ul>
            </nav>
        </header>
        <!-- 헤더 영역 끝 -->


        <!-- 메인 섹션 시작 -->
        <section class="container-fluid h-75 p-0 row m-0">
            <!-- 왼쪽 측면 사이드 메뉴 -->
            <div class="left-side col-1 shadow">
                <nav class="nav flex-column">
                    <ul class="nav flex-column" >
                        <li class="nav-item">
                            <a href="#" class="">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="">DASHBOARD</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="">ORDERS</a>
                        </li>
                        <hr>
                        <li class="nav-item">
                            <a href="#" class="">ACCOUNT</a>
                        </li>
                    </ul>
                    <select class="form-select" aria-label="Default select" id="lang">
                        <option value="" selected>언어</option>
                        <option value="KOR">한국어</option>
                        <option value="ENG">영어</option>
                        <option value="JPN">일본어</option>
                        <option value="CHN">중국어</option>
                    </select>
                </nav>
            </div>
            <!--왼쪽 측면 사이드 메뉴-->
    
            <!-- 메인 게시판 페이지 시작 -->
            <div class="right-side col">

                <div class="m-auto board">
                    <h3 class="board-title">국가 코드 관리</h3>
                    <div class="container-fluid form-area create-page">

                        <!-- 게시글 폼 -->
                        <form class="needs-validation" novalidate name="formList">
                            <div class="col">
                                <label for="seq-input" class="form-label">Seq</label>
                                <input class="form-control" type="text" placeholder="자동생성" aria-label="Disabled input example" disabled id="seq-input">
                                <label for="nation-name" class="form-label mt-3">국가 이름</label>
                                <input type="text" class="form-control" id="nation-name" required>
                                <label for="nation-name-kor" class="form-label mt-3 nation-name-kor">국가 이름 (한글)</label>
                                <input type="text" class="form-control nation-name-kor" id="nation-name-kor">
                                <label for="nation-code-twoword" class="form-label mt-3">국가 코드 (2자리)</label>
                                <input type="text" class="form-control" id="nation-code-twoword" placeholder="영대소문자" required>
                                <label for="useStatus" class="form-label mt-3">사용여부</label>
                                <select class="form-select" id="useStatus" aria-label="Default select" required>
                                    <option selected></option>
                                    <option value="N">N</option>
                                    <option value="Y">Y</option>
                                </select>
                                <label for="descTextarea" class="form-label mt-3 textarea">설명</label>
                                <textarea class="form-control" id="descTextarea" rows="3"></textarea>
                            </div>
                            <div class="col">
                                <label for="nation-name-eng" class="form-label nation-name-eng">국가 이름 (영문)</label>
                                <input type="text" class="form-control nation-name-eng" id="nation-name-eng" placeholder="영대소문자">
                                <label for="nation-code-threeword" class="form-label mt-3">국가 코드 (3자리)</label>
                                <input type="text" class="form-control" id="nation-code-threeword" placeholder="영대소문자" required>
                                <label for="num-form" class="form-label mt-3">순서</label>
                                <input type="number" class="form-control" id="num-form" placeholder="숫자(0~255)" required>
                            </div>
                            <div class="container-fluid subpage-btn">
                            <button type="button" class="btn"><a href="/memberList"><i class="bi bi-list"></i></a></button>
                            <button class="btn completed-write" type="submit" id="btn"><i class="bi bi-check2-circle"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 메인 게시판 페이지 끝 -->
            <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.seq }"></c:out>
			<c:out value="${list.name }"></c:out><br>
		</c:forEach>
	</c:otherwise>
</c:choose>	  	


    </section>
    <!-- 메인 섹션 끝 -->

    <!-- 푸터 영역 시작 -->
        <footer class="container-fluid" id="footer">
            <ul class="container">
                <li>㈜ My Company</li>
                <li>대표 윤미진</li>
                <li>사업자 등록 번호 123-45-678900</li>
                <li>경기도 김포시 김포한강4로 125 KR 월드타워 10층</li>
            </ul>
            <p class="container m-auto text-center">Copyright 2023. My Company Inc. all rights reserved</p>
        </footer>
        <!-- 푸터 영역 끝 -->
    </div>
    
    <!-- 스크립트 -->
    <script type="text/javascript">
        
        // 아래 스크립트를 사용하지 말고 validation check 하는 방법 구현

        // (() => {
        // 'use strict'

        // const forms = document.querySelectorAll('.needs-validation')

        // Array.from(forms).forEach(form => {
        //     form.addEventListener('submit', event => {
        //     if (!form.checkValidity()) {
        //         event.preventDefault()
        //         event.stopPropagation()
        //     }

        //     form.classList.add('was-validated')
        //     }, false)
        // })
        // })()
        
        // 유효성 검사 버튼 이벤트
            $(function(){
                $(".completed-write").on("click",function(){

                    if($("#nation-name").val() == "") {
                    
                        $("#nation-name").addClass("invalid");
                        $("#nation-name").removeClass("valid");
                        $("#nation-name").attr("placeholder", "국가 이름을 한글로 입력해 주세요");
                        

                }   else {
                        
                        $("#nation-name").addClass("valid");
                        $("#nation-name").removeClass("invalid");
                }
                    if($("#nation-code-twoword").val() == "") {

                        $("#nation-code-twoword").addClass("invalid");
                        $("#nation-code-twoword").removeClass("valid");
                        $("#nation-code-twoword").attr("placeholder", "국가 코드를 영대소문자 구분해서 2자리로 입력해 주세요");
                        
                }   else {
                        
                        $("#nation-code-twoword").addClass("valid");
                        $("#nation-code-twoword").removeClass("invalid");
                }

                    if($("#useStatus").val() == "") {
                        
                        $("#useStatus > option:selected").prop("selected",false);
                        $("#useStatus").addClass("invalid");
                        $("#useStatus").removeClass("valid");

                        }   else {
                        
                        $("#useStatus >option").prop("selected", true);
                        $("#useStatus").addClass("valid");
                        $("#useStatus").removeClass("invalid");

                        }


                    if($("#nation-code-threeword").val() == "") {

                        $("#nation-code-threeword").addClass("invalid");
                        $("#nation-code-threeword").removeClass("valid");
                        $("#nation-code-threeword").attr("placeholder", "국가 코드를 영대소문자 구분해서 3자리로 입력해 주세요");

                        }   else {

                        $("#nation-code-threeword").addClass("valid");
                        $("#nation-code-threeword").removeClass("invalid");
                        }

                    if($("#num-form").val() == "") {

                        $("#num-form").addClass("invalid");
                        $("#num-form").removeClass("valid");
                        $("#num-form").attr("placeholder", "숫자만 입력해 주세요");

                        }   else {

                        $("#num-form").addClass("valid");
                        $("#num-form").removeClass("invalid");
                        }
                });

            });
        
        $("#btn").on("click", function(){
        	/* 자기 자신을 다시 한번 호출 해 준다. */
        	$("form[name=formList]").attr("action", "/codeGroupList").submit();
        	$("form[name=formList]").attr("method", "post");
        });
    </script>
</body>
</html>