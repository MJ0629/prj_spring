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
<body class="position-relative">

    <!-- 헤더 영역 시작 -->
    <header class="container-fluid shadow d-flex align-items-center justify-content-lg-between p-0 pt-3 pb-3">
        <nav class="row navbar navbar-expand-lg container-fluid m-auto d-flex align-items-center justify-content-lg-between headerNav">
            <ul class="row m-auto col-8 p-0">
                <li class="nav-item col-3"><a href="codeGroupList" class="nav-link navbar-brand"><h1 class="fs-6 fw-bold p-0 m-0">MANAGEMENT PAGE</h1></a></li>
                <li class="nav-item col"><a href="#" class="nav-link">MENU</a></li>
                <li class="nav-item col"><a href="#" class="nav-link">MENU</a></li>
                <li class="nav-item col"><a href="#" class="nav-link">MENU</a></li>
                <li class="nav-item col"><a href="#" class="nav-link">MENU</a></li>
                <li class="nav-item col"><a href="#" class="nav-link">MENU</a></li>
            </ul>
            <ul class="row m-auto col-2">
                <li></li>
                <li>로그인한사람이름</li>
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
                        <a href="#" class="">MENU</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="">MENU</a>
                    </li>
                    <hr>
                    <li class="nav-item">
                        <a href="#" class="">MENU</a>
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
                <h3 class="board-title">코드그룹리스트</h3>
                <form class="container-fluid form-area" name="formList" method="post">
                    <!-- 검색창 -->
                    <div class="container-fluid board-top-form">
                        <select class="form-select me-3" aria-label="Default select">
                            <option value="N" selected>N</option>
                            <option value="Y">Y</option>
                        </select>
                        <select class="form-select me-3" aria-label="Default select">
                            <option value="" selected>날짜</option>
                        </select>
                        <input type="date" value="시작일" class="calendar form-control me-3" placeholder="시작일">
                        <input type="date" value="종료일" class="calendar form-control" placeholder="종료일">
                    </div>
                    <div class="d-sm-flex board-bottom-form">
                        <select class="form-select me-3" aria-label="Default select">
                            <option value="" selected>검색구분</option>
                        </select>
                        <input type="text" class="form-control me-3 search_input" placeholder="검색어" name="shKeyword" value="<c:out value='${vo.shKeyword}'/>">
                        <button type="button" class="btn col-1 me-2 search_btn"><i class="bi bi-search"></i></button>
                        <button type="button" class="btn col-1 refresh_btn"><i class="bi bi-arrow-clockwise col-1"></i></button>
                    </div>
                </form>
                <div class="container-fluid board-middle">
                    <p class="col-10">total :</p>
                    <select class="form-select m-auto col " aria-label="Default select">
                        <option value="10" selected>10</option>
                        <option value="15">15</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                    </select>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr class="text-center table-title">
                        <th scope="col"><input type="checkbox"></th>
                        <th scope="col">#</th>
                        <th scope="col">seq</th>
                        <th scope="col">이름</th>
                        <th scope="col">아이디</th>
                        <th scope="col">비밀번호</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">순서</th>
                        <th scope="col">가입일</th>
                        <th scope="col">수정일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="text-center">
              			<c:choose>
						    <c:when test="${fn:length(list) eq 0}"></c:when>
					    		<c:otherwise><!-- ${list} 자바에서 넘겨준 객체 이름, var="list" jstl 블럭에서 사용할 변수 이름 -->
					        		<c:forEach items="${list}" var="list" varStatus="status">
					        			<tr>
       			                    	<th scope="row"><input type="checkbox"></th>
       			                    	<td>
       			                    		<c:out value="${length}"></c:out>
       			                    	</td>
							            <td>
							            	<c:out value="${list.seq}"></c:out>
							            </td>
							            <td>
							            	<a href="/codeGroupForm?seq=<c:out value = '${list.seq}'/>">
							            	<c:out value="${list.name}"></c:out>
							            	</a>
							            </td>
							            <td></td>
							            <td></td>
							            <td></td>
							            <td></td>
					        		</c:forEach>
					    		</c:otherwise>
						</c:choose>
                    </tr>
                    </tbody>
                </table>
            </div>

    
                <nav aria-label="..." class="pagination-container">
                    <div>
<!--                         
                        <button class="btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> <i class="bi bi-x-square-fill"></i></button> 
-->
                    <!-- 게시글 삭제 & 모달팝업 오픈 버튼 -->
                        <button class="btn btnModal" id="btnModal"> <i class="bi bi-x-square-fill"></i></button>
                        <button class="btn btnModal"><i class="bi bi-trash-fill"></i></button>
                    </div>

                    <!-- 페이지네이션 -->
                    <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <span class="page-link"><i class="bi bi-caret-left-fill"></i></span>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item" aria-current="page">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#"><i class="bi bi-caret-right-fill"></i></a>
                    </li>
                    </ul>

                    <!-- 서브페이지 이동 버튼 -->
                    <div>
                        <button class="btn"><a href="#"><i class="bi bi-file-earmark-plus"></i></a></button>
                        <button class="btn"><a href="#"><i class="bi bi-plus-square-fill"></i></a></button>
                    </div>
                </nav>

            <!-- 모달 팝업 시작 -->
            <div class="modal fade" id="modalPopup" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <i class="bi bi-exclamation-circle text-danger fs-1"></i>
                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                    경고</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    정말 삭제하시겠습니까?
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-danger">삭제하기</button>
                    </div>
                </div>
                </div>
            </div>
            <!-- 모달 팝업 끝 -->

        </div>
        <!-- 메인 게시판 페이지 끝 -->

    </section>
    <!-- 메인 섹션 끝 -->

    <!-- 푸터 영역 시작 -->
    <footer class="container-fluid position-absolute end-0" id="footer">
        <!-- 카피라이트 -->
        <ul class="container">
            <li>㈜ My Company</li>
            <li>대표 윤미진</li>
            <li>사업자 등록 번호 123-45-678900</li>
            <li>경기도 김포시 김포한강4로 125 KR 월드타워 10층</li>
        </ul>
        <p class="container m-auto text-center">Copyright 2023. My Company Inc. all rights reserved</p>
    </footer>
    <!-- 푸터 영역 끝 -->



    <!-- 달력 스크립트 -->
    <script type="text/javascript">
        $(function(){

            // 달력
            $(".calendar").flatpickr(
                {
                    dateFormat: "Y-m-d",
                }
            );
            
            // 모달창
            $(".btnModal").on("click",function(){
                $("#modalPopup").modal("show");
            });
        });

        

    </script>
    <!-- 검색버튼 스트립트 -->
    <script type="text/javascript">
	    $(".search_btn").on("click", function(){
	    	
	//     	$("form[name=formList]").attr("method","get");
	    	$("form[name=formList]").attr("action", "/codeList").submit();
	    	
	    });
	    
	    $(".refresh_btn").on("click", function(){
	    	$("form[name=formList]").attr("action", "/codeList").submit();
	    });
    </script>
</body>
</html>