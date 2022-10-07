<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
          <div class="reply_list p-3" id="reply_list">
            <c:forEach items="${list}" var="DTO">
          
            <div id="commentList">
              <div class="d-flex justify-content-between">
                <div class="d-flex mb-1 ms-2">
                  <div><img src="https://img.danawa.com/prod_img/500000/017/350/img/13350017_1.jpg?shrink=330:330&_v=20210224095944" style="width: 40px;  border-radius: 24px;"/></div><div class="ms-2 mt-2" >${DTO.id}</div>
                </div>

                <div><button type="button" style="height: 30px; margin-top: 5px; margin-right: 7px;" class="text_delete_btn" data-comment-num="${DTO.num}">❌</button></div>
              </div>

              <div class="d-flex mb-2">
                <div class="ms-5"><i class="fa-regular fa-comment-dots"></i></div>
                <div class="ms-2 pe-2" >${DTO.contents}</div>
              </div>

            <hr>
            
          </div>
          </c:forEach>
			<c:choose>
				<c:when test="${reply_count le 5 || totalPage eq commentPager.page}">
				</c:when>
				<c:otherwise>
					<div class="mb-3" style="text-align: center;">
		            <button id="plus" class="plus">더보기</button
		            ></div>
				</c:otherwise>
            </c:choose>
            <div>
              <form action="sb_commentAdd" method="post">
                 <input id="c_id" name="id" style="display:none;" type="text" value="${member.id}"/>
                <input name="contents" type="text" class="reply_text" id="reply_text" placeholder="모두에게 도움이 되는 답변의 주인공이 되어주세요!">
                
                <button type="button"  class="reply_btn" id="reply_btn">댓글작성</button>
              </form>
          </div>
            </div>
</body>
</html>