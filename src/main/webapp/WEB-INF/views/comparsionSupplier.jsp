<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp"%>

<!-- ------------------------------------- -->
<!-- START OF CONTENTS  -->
<!-- ------------------------------------- -->
<div class="content">

	<div class="mb-9">

		<!-- 페이지 타이틀 -->
		<div class="row g-3 mb-4">
			<div class="col-auto">
				<h2 class="mb-0" id="pageTitle">공급 제안 비교</h2>
			</div>
		</div>

		<!-- 상단 ; 부품/상품 검색 및 부품/공급사추가 버튼  -->
		<div id="products" data-list='{"valueNames":["product","price","category","tags","vendor","time"],"page":10,"pagination":true}'>
			<div class="mb-4">
				<div class="d-flex flex-wrap gap-3">
				
					<!-- 부품/상품 검색창 -->
					<div class="search-box" id="componentSearchBox">
						<form class="position-relative" data-bs-toggle="search" data-bs-display="static" action="/comparsionSupplier" method="post">
							<input class="form-control search-input search" type="search" placeholder="부품 검색창" aria-label="Search" name="compo_name"/>
							<span class="fas fa-search search-box-icon"></span>
						</form>
					</div>
					<button class="btn btn-primary" id="searchItem">
						<span class="fas fa-plus me-2"></span>검색
					</button> 
					<!-- 공급사/부품 추가 버튼 -->
					<div class="ms-xxl-auto">
						<button class="btn btn-primary" id="addSupplierBtn">
							<span class="fas fa-plus me-2"></span>공급사 추가
						</button>
						<button class="btn btn-primary" id="addProdutBtn">
							<span class="fas fa-plus me-2"></span>부품 추가
						</button>
					</div>
				</div>
			</div>

			<!-- 콘텐츠 : 고객사 리스트 및 비교 표, 그래프 -->
			<div class="mx-lg-n4 mt-3">
				<div class="row g-3">
				
					<!-- 왼쪽 표 감싸는 컨테이너(카드) -->
					<div class="col-12 col-xl-6 col-xxl-6 min-vh-75">
						<div class="card supplierCard h-100">
						
							<!-- 카드 헤더 -->
							<div class="card-header border-bottom-0 pb-0">
								<div class="row justify-content-between align-items-center mb-4">
								
									<!-- 카드 타이틀 및 설명, 카드 헤더 내용 -->
									<div class="col-auto">
									<c:if test="${not empty compo_name }">
										<h3 class="text-1100" id="supplierCardTitle"><c:out value="${compo_name }"/></h3>
										<p class="mb-0 text-700"><c:out value="${compo_name } 공급사"/></p>
									</c:if>
									<c:if test="${empty compo_name }">
										<h3 class="text-1100" id="supplierCardTitle">부품을 검색해주세요</h3>
										<p class="mb-0 text-700"></p>
									</c:if>
										
									</div>
									
									<!-- 검색 결과 개수 표시 -->
									<div class="col-auto w-100 w-md-auto">
										<div class="row align-items-center g-0 justify-content-between">
											<div class="col-12 col-sm-auto"></div>
											<div class="col-auto d-flex">
												<p class="mb-0 ms-sm-3 fs--1 text-700 fw-bold">
													<span class="fas fa-filter me-1 fw-extra-bold fs--2"></span>
													<span id="supplierTasks">${count} tasks</span>
												</p>
											</div>
										</div>
									</div>

								</div>
							</div> <!-- 카드 헤더 끝  -->

							<!-- 카드 바디 :  공급사 리스트 테이블 -->
							<div class="card-body py-0 scrollbar to-do-list-body min-vh-xxl-50 h-xl-auto">

								<div id="retailerTableContainer" dat-list='{"valueNames":["name","email","age"],"page":10,"pagination":true}'>
									<div class="table-responsive mx-n1 px-1">
									
										<!-- 고객사 테이블 : retailerTable  -->
										<table class=" table tabl-sm border-top border-200 fs--1 mb-0" id="supplierTable">
											<thead>
												<tr>
													<th class="white-space-nowrap fs--1 align-middle ps-0"
														style="max-width: 20px; width: 18px;">
														<div class="form-check mb-0 fs-0">
															<input class="form-check-input" id="bulk-select-example"
																type="checkbox"
																data-bulk-select='{"body":"bulk-select-body","actions":"bulk-select-actions","replacedElement":"bulk-select-replace-element"}' />
														</div>
													</th>
													<th class="sort align-middle ps-3" data-sort="no">공급사 번호</th>
													<th class="sort align-middle" data-sort="name">공급사 이름</th>
													<th class="sort align-middle" data-sort="ceo">대표자</th>
													<th class="sort align-middle" data-sort="cate">구분</th>
													<th class="sort text-end align-middle pe-0" scope="col">ACTION</th>
												</tr>
											</thead>
											
											<tbody class="list" id="bulk-select-body">
												
												
												<!-- 이후 삭제해도 됨, 동적으로 생성 -->
												<c:forEach items="${sList }" var="supplier">
													<tr>
													<td class="fs--1 align-middle">
														<div class="form-check mb-0 fs-0">
															<input class="form-check-input" type="checkbox"
																data-bulk-select-row="{&quot;name&quot;:&quot;Anna&quot;,&quot;email&quot;:&quot;anna@example.com&quot;,&quot;age&quot;:18}" />
														</div>
													</td>
													<td class="align-middle ps-3 no"><c:out value="${supplier.suppl_no }"/></td>
													<td class="align-middle name"><c:out value="${supplier.suppl_name }"/></td>
													<td class="align-middle ceo"><c:out value="${supplier.ceo_name }"/></td>
													<td class="align-middle cate"><c:out value="${supplier.category }"/></td>
													<td class="align-middle white-space-nowrap text-end pe-0">
														<div
															class="font-sans-serif btn-reveal-trigger position-static">
															<button
																class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
																type="button" data-bs-toggle="dropdown"
																data-boundary="window" aria-haspopup="true"
																aria-expanded="false" data-bs-reference="parent">
																<span class="fas fa-ellipsis-h fs--2"></span>
															</button>
															<div class="dropdown-menu dropdown-menu-end py-2">
																<a class="dropdown-item supplierDetail" href="#!" >View</a><a
																	class="dropdown-item" href="#!">Export</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item text-danger" href="#!">Remove</a>
															</div>
														</div>
													</td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									
									<!-- 결과값 페이징 12개씩 뽑으면 화면 맞음 -->
									<div class="d-flex flex-between-center pt-3 mb-3">
										<div class="pagination d-none"></div>
										<p class="mb-0 fs--1">
											<span class="d-none d-sm-inline-block"
												data-list-info="data-list-info"></span> <span
												class="d-none d-sm-inline-block"> &mdash; </span> <a
												class="fw-semi-bold" href="#!" data-list-view="*"> View
												all <span class="fas fa-angle-right ms-1"
												data-fa-transform="down-1"></span>
											</a><a class="fw-semi-bold d-none" href="#!"
												data-list-view="less"> View Less <span
												class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span>
											</a>
										</p>
										<div class="d-flex">

											<button class="btn btn-sm btn-primary" type="button"
												data-list-pagination="prev">
												<span>Previous</span>
											</button>

											<button class="btn btn-sm btn-primary px-4 ms-2"
												type="button" data-list-pagination="next">
												<span>Next</span>
											</button>
										</div>
									</div>
									<pre id="selectedRows"></pre>
								</div>
							</div>
						</div>
					</div> <!-- 왼쪽 카드 끝 -->

					<!-- 오른쪽 카드 감싸는 컨테이너 -->
					<div class="col-12 col-xl-6 col-xxl-6 min-vh-75">
						<div class="card h-100">
						
							<!-- 오른쪽 카드 타이틀 -->
							<div class="card-body">
								<div class="card-title mb-1">
									<h3 class="text-1100">공급 제안 비교</h3>
								</div>
								<p class="text-700 mb-4">공급 제안 비교 설명</p>

								<!-- 오른쪽 비교 리스트 테이블 -->
								<div id="tableComparsionS" data-list='{"valueNames":["name","email","age"],"page":5,"pagination":true}'>
									<div class="table-responsive">
										<table class="table table-sm fs--1 mb-0">
											<thead>
												<tr>
													<th class="sort border-top ps-3 asc" data-sort="proposal_no">제안 번호</th>
													<th class="sort border-top" data-sort="suppl_name">공급사 이름</th>
													<th class="sort border-top" data-sort="compo_name">부품 이름</th>
													<th class="sort border-top" data-sort="price">단가</th>
													<th class="sort border-top" data-sort="quantity">수량</th>
													<th class="sort border-top" data-sort="defective_rate">불량률</th>
													<th class="sort border-top" data-sort="quality_grade">품질등급</th>
													<th class="sort border-top" data-sort="prod_period">생산기간</th>
													
													
													<th class="sort text-end align-middle pe-0 border-top"
														scope="col">ACTION</th>
												</tr>
											</thead>
											<tbody class="list" id="proposalList">
												<tr>
													<td class="align-middle ps-3 name">제안번호 예시</td>
													<td class="align-middle email">공급사이름 예시</td>
													<td class="align-middle age">부품이름 예시</td>
													<td class="align-middle age">단가 예시</td>
													<td class="align-middle age">수량 예시</td>
													<td class="align-middle age">불량률 예시</td>
													<td class="align-middle age">품질등급 예시</td>
													<td class="align-middle age">생산기간 예시</td>
													<td class="align-middle white-space-nowrap text-end pe-0">
														<div
															class="font-sans-serif btn-reveal-trigger position-static">
															<button
																class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"
																type="button" data-bs-toggle="dropdown"
																data-boundary="window" aria-haspopup="true"
																aria-expanded="false" data-bs-reference="parent">
																<svg class="svg-inline--fa fa-ellipsis fs--2"
																	aria-hidden="true" focusable="false" data-prefix="fas"
																	data-icon="ellipsis" role="img"
																	xmlns="http://www.w3.org/2000/svg"
																	viewBox="0 0 448 512" data-fa-i2svg="">
																	<path fill="currentColor"
																		d="M120 256C120 286.9 94.93 312 64 312C33.07 312 8 286.9 8 256C8 225.1 33.07 200 64 200C94.93 200 120 225.1 120 256zM280 256C280 286.9 254.9 312 224 312C193.1 312 168 286.9 168 256C168 225.1 193.1 200 224 200C254.9 200 280 225.1 280 256zM328 256C328 225.1 353.1 200 384 200C414.9 200 440 225.1 440 256C440 286.9 414.9 312 384 312C353.1 312 328 286.9 328 256z"></path></svg>
																<!-- <span class="fas fa-ellipsis-h fs--2"></span> Font Awesome fontawesome.com -->
															</button>
															<div class="dropdown-menu dropdown-menu-end py-2">
																<a class="dropdown-item" href="#!">View</a><a
																	class="dropdown-item" href="#!">Export</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item text-danger" href="#!">Remove</a>
															</div>
														</div>
													</td>
												</tr>
												
											</tbody>
										</table>
									</div>
									
								</div>

								<!--  그래프  -->
								<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 col-xxl-12 mt-5 ">
									<div class="echart-social-marketing-radar" style="min-height: 320px; width: 100%"></div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
<!-- 				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button> -->
				<h4 class="modal-title" id="myModalLabel">공급사 상세 정보</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>공급사 이름</label> <input class="form-control" name='suppl_name'
						value=''>
				</div>
				<div class="form-group">
					<label>대표자</label> <input class="form-control" name='ceo_name'
						value=''>
				</div>
				<div class="form-group">
					<label>구분</label> <input class="form-control" name='category'
						value=''>
				</div>
				<div class="form-group">
					<label>사업자 번호</label> <input class="form-control" name='biz_no'
						value=''>
				</div>
				<div class="form-group">
					<label>운송 분류</label> <input class="form-control" name='transport_category'
						value=''>
				</div>
				
				<div class="form-group">
					<label>phone</label> <input class="form-control"
						name='phone' value=''>
				</div>

			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
<!-- 				<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
				<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button> -->
				<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/test.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#searchItem').on('click',function(){
			$('form.position-relative').submit();
			
			$('#supplierCardTitle').html($('#componentSearchBox').find('input').val());
		});
		
		//모달 창
		$(".supplierDetail").on("click", function(e){
			var suppl_no=$(this).closest('tr').children('.ps-3').html();
			console.log(suppl_no);
			//detailService.get();
			var supplierDetail;
			Service.getSupplier(suppl_no,function(result){
				 supplierDetail=result;
				 //console.log(result.ceo_name);
				 $('#myModal').find("input[name='suppl_name']").val(supplierDetail.suppl_name);
				 $('#myModal').find("input[name='ceo_name']").val(supplierDetail.ceo_name);
				 $('#myModal').find("input[name='category']").val(supplierDetail.category);
				 $('#myModal').find("input[name='biz_no']").val(supplierDetail.biz_no);
				 $('#myModal').find("input[name='transport_category']").val(supplierDetail.transport_category);
				 $('#myModal').find("input[name='phone']").val(supplierDetail.phone);
			}); 
			
			$(".modal").modal("show");
			
		});
		
		//모달창 닫기
		$("#modalCloseBtn").on("click",function(e){
			$(".modal").modal("hide");
		});
		
		//체크박스 클릭시 제안 표시
		$('#bulk-select-body').find('input.form-check-input').on("change",function(){
			var suppl_no=$(this).closest('tr').children('.ps-3').html();
			//console.log(suppl_no);
			//console.log($('#supplierCardTitle').html());
			var compo_name=$('#supplierCardTitle').html();
			var str="";
			var foot='<div class="font-sans-serif btn-reveal-trigger position-static">';
			foot+='<button class="btn btn-sm dropdown-toggle dropdown-caret-none transition-none btn-reveal fs--2"';
			foot+='type="button" data-bs-toggle="dropdown"';
			foot+='data-boundary="window" aria-haspopup="true"';
			foot+='aria-expanded="false" data-bs-reference="parent">';
			foot+='<svg class="svg-inline--fa fa-ellipsis fs--2"';
			foot+='aria-hidden="true" focusable="false" data-prefix="fas"';
			foot+='data-icon="ellipsis" role="img"';
			foot+='xmlns="http://www.w3.org/2000/svg"';
			foot+='viewBox="0 0 448 512" data-fa-i2svg="">';
			foot+='<path fill="currentColor"';
				foot+='d="M120 256C120 286.9 94.93 312 64 312C33.07 312 8 286.9 8 256C8 225.1 33.07 200 64 200C94.93 200 120 225.1 120 256zM280 256C280 286.9 254.9 312 224 312C193.1 312 168 286.9 168 256C168 225.1 193.1 200 224 200C254.9 200 280 225.1 280 256zM328 256C328 225.1 353.1 200 384 200C414.9 200 440 225.1 440 256C440 286.9 414.9 312 384 312C353.1 312 328 286.9 328 256z"></path></svg>';
			foot+='</button>';
			foot+='<div class="dropdown-menu dropdown-menu-end py-2">';
			foot+='<a class="dropdown-item" href="#!">View</a><aclass="dropdown-item" href="#!">Export</a>';
			foot+='<div class="dropdown-divider"></div>';
			foot+='<a class="dropdown-item text-danger" href="#!">Remove</a>';
			foot+='</div></div></td></tr>';
			Service.getProposal({suppl_no:suppl_no,compo_name},function(result){
				
				str+="<tr>";
				str+='<td class="align-middle ps-3 name">'+result.proposal_no+'</td>';
				str+='<td class="align-middle email">'+result.supplier.suppl_name+'</td>';
				str+='<td class="align-middle age">'+result.component.compo_name+'</td>';
				str+='<td class="align-middle age">'+result.price+'</td>';
				str+='<td class="align-middle age">'+result.quantity+'</td>';
				str+='<td class="align-middle age">'+result.defective_rate+'</td>';
				str+='<td class="align-middle age">'+result.quality_grade+'</td>';
				str+='<td class="align-middle age">'+result.prod_period+'</td>';
				str+='<td class="align-middle white-space-nowrap text-end pe-0">';	
				$('#proposalList').append(str+foot);
						
			});
			
		});
	});
</script>
<%@include file="includes/footer.jsp"%>