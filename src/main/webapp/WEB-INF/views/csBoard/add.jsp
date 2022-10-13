<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8">
		<title>글 작성</title>
		<link rel="stylesheet" href="/resources/css/board/sb_list.css" />
  	    <%-- Bootstrap CSS --%>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link href="https://fonts.googleapis.com/css2?family=Arvo&family=Dongle&family=Montserrat:wght@200&family=PT+Serif&family=Playfair+Display:wght@600&family=Prompt&family=Vollkorn:wght@500&display=swap" rel="stylesheet"/>
		<!-- jquery -->
    	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
		<!-- include summernote css/js-->
	    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
		<%-- favicon --%>
		<link rel="shortcut icon" href="/resources/images/favicon.ico">
</head>
<c:import url="../template/header.jsp"></c:import>
<body>

    <section class="container" style="width: 50em;">
        <div class="add_box" style="width:80%; margin: 150px auto 50px auto; padding: 1.7em; box-shadow: rgba(17, 17, 26, 0.1) 0px 4px 16px, rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px;">
        <div class="mb-4"><h2 style="text-align:center;">문의하기📬</h2></div>
            
                <form action="./add" method="post" id="csSubmit">

                    <div class="d-flex row">
                        <div class="flex-fill col-8">
                            <div class="mb-1"><label for="exampleFormControlInput1">제목</label></div>
                            <input type="text" name = "cs_title" placeholder="문의제목" class="form-control" id="cs_title">
                        </div>
                    </div>
                    

                    <div class="d-flex row">
                        <div class="flex-fill col-8">
                            <div class="mt-1"><label  for="exampleFormControlInput1">문의내용</label></div>
                            <textarea name = "cs_contents" class="form-control mt-1" id="cs_contents" rows="3"></textarea>
                        </div>
                    </div>
                                        
                    <div class="form-group pt-3 ">
                        <div class="mb-1"><label>연락처 정보</label></div>
                        <label for="" class="text-muted">아이디</label>
                        <c:if test="${not empty sessionScope.member}">
	                        <input type="text" name = "id" readonly value="${member.id}" class="form-control" id="id">
                        </c:if>
                        <c:if test="${empty sessionScope.member}">
	                        <input type="text" name = "id" class="form-control" id="id" readonly value="none">
                            <label><small style="color: firebrick;"> 문의내역을 확인하고 싶으신 경우 로그인 후 문의해주세요</small></label><br>
                        </c:if>
                        <label for="" class="text-muted">전화번호</label>
                        <input type="text" name = "cs_phone" placeholder="010-0000-0000" value="${member.phone}" class="form-control" id="cs_phone">
                        <label for="" class="text-muted">이메일</label>
                        <input type="text" name="cs_email" placeholder="example@oooo.com" value="${member.email}" class="form-control" id="cs_email">
                    </div>
        			<div class="d-flex justify-content-end">	
	                    <div class="mt-4 mb-1" style="text-align: right;">
	                    <input id="csSubmitBtn" class="btn btn-success text-white" type="button" value="작성하기" >
	                    </div>
                    </div>			
                </form>
            </div>
        </section>

<c:import url="../template/footer.jsp"></c:import>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script type="text/javascript">
    $("#cs_contents").summernote(
            {
                    height: 260,                
                    minHeight: null,           
                    maxHeight: null,          
                    focus: true 
                });

</script>
<script src="/resources/js/csAdd.js"></script>
</body>
</html>