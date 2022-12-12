<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ page session="true"%>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/bootstrap.css">
<link rel="stylesheet" href="/assets/vendor/vegantable/css/sample2.css">

<head>
<style type="text/css">
#commentDelete {
	float: right;
}
</style>

</head>
<!-- row -->
<div class="row">

	<!-- 왼쪽 메뉴 
	<div class="col-md-2">
		<div class="card">
			<div class="card-header">sample2</div>
			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a
					class="nav-link text-decoration-none link-light active" href="#">게시판</a>
				</li>
				<li class="nav-item"><a
					class="nav-link text-decoration-none link-dark" href="#">A
						second item</a></li>
				<li class="nav-item"><a
					class="nav-link text-decoration-none link-dark" href="#">A
						third item</a></li>
			</ul>
		</div>
	</div>
-->
	<!-- 컨텐츠 내용 -->
	<div class="col-md-10">

		<!-- sub title -->
		<h2 class="bd-title border-bottom pb-3 mb-3">게시판</h2>
		<input type="hidden" id="post_seq" name="post_seq"
			value="<c:out value="${paramMap.post_seq }"/>">
		<div></div>
		<!-- 검색입력 -->

		<div class="head border-bottom pb-3 mb-3">
			<h3 id="post_title">${selectData.getSample2Info.post_title}</h3>
			<span id="regist_id" class="text-muted">${selectData.getSample2Info.regist_id}
			</span> <span class="text-muted">|</span> <span id="regist_date"
				class="text-muted">${selectData.getSample2Info.regist_date}</span>
		</div>

		<div id="body" class="body pb-3">${selectData.getSample2Info.post_content}
		</div>



		<div class="container">
			<form id="commentForm" action="/sample2/addComment.do"
				name="commentForm" method="post">
				<input type="hidden" name="post_seq" value=${paramMap.post_seq }>
				<input type="hidden" name="id" value=${id }> <br> <br>
				<div>
					<div>
						<span><strong>Comments</strong></span> <span id="cCnt"></span>
					</div>
					<div>
						<table class="table">
							<tr>
								<td><textarea style="width: 1100px" rows="3" cols="30"
										id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
									<br>
									<div>
										<input type="submit" value="등록"
											class="btn pull-right btn-success">
									</div></td>
							</tr>
						</table>
					</div>
				</div>


			</form>

			<c:forEach items="${commentList.getCommentList}" var="result"
				varStatus="status">
				<input type="hidden" id="idx" name="idx" value="${result.idx }" />

				<div>
					<div>
						<table class='table'>
							<h6>
								<strong>${result.id}</strong>
							</h6>

							<tr>
								<td>${result.comment }
								<a id="commentDelete"
									class="btn btn-md btn-danger ms-2"
									href="<c:url value="javascript:fnCommentDelete(${result.idx})"/>">삭제</a>
								</td>
							</tr>

						</table>

					</div>
				</div>

			</c:forEach>
		</div>
		<div class="container">
			<form id="commentListForm" name="commentListForm" method="post">
				<div id="commentList"></div>
			</form>
		</div>




		<div class="col-12 d-flex justify-content-end align-items-center">
			<a class="btn btn-md btn-outline-dark ms-2"
				href="<c:url value="/sample2/list.do"/>">목록</a> <a
				class="btn btn-md btn-danger ms-2"
				href="<c:url value="javascript:fnDelete(${paramMap.post_seq})"/>">삭제</a>
			<a class="btn btn-md btn-primary ms-2"
				href="<c:url value="/sample2/form.do?post_seq=${paramMap.post_seq}"/>">수정</a>
		</div>
	</div>
</div>

<!-- //contents -->

<script>
	//

	//삭제 버튼 클릭시
	function fnDelete(seq) {
		if (confirm("게시글을 삭제 하시겠습니까?")) {
			ajaxForm('post', '/sample2/api-sample-delete', {
				"post_seq" : seq
			}, '', function(result) {
				if (result.status == '200') {
					alert("삭제에 성공 하였습니다.");
					location.href = "/sample2/list.do";
				} else {
					alert("삭제에 실패 하였습니다.");
					location.href = "/sample2/list.do";
				}
			});
		}
	}
	//댓글 삭제 버튼 클릭시
	function fnCommentDelete(idx) {
		if (confirm("댓글을 삭제 하시겠습니까?")) {
			ajaxForm('post', '/sample2/setDeleteComment.do', {
				"idx" : idx
				
				}, '', function(result) {
				if (result.status == '200') {
					alert("삭제에 성공 하였습니다.");
					location.reload();
				} else {
					alert("삭제에 실패 하였습니다.");
					location.reload();
				}
			});
		}
	}

	
	
</script>