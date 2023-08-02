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
				<h2 class="mb-0" id="pageTitle">판매 예측 비교</h2>
			</div>
		</div>

		<!-- 상단 ; 부품/상품 검색 및 부품/공급사추가 버튼  -->
		<div id="products" data-list='{"valueNames":["product","price","category","tags","vendor","time"],"page":10,"pagination":true}'>
			<div class="mb-4">
				<div class="d-flex flex-wrap gap-3">
				
					<!-- 부품/상품 검색창 -->
					<div class="search-box" id="productSearchBox">
						<form class="position-relative" data-bs-toggle="search" data-bs-display="static" action="/comparsionRetailer" method="post">
							<input class="form-control search-input search" type="search" placeholder="상품 검색창" aria-label="Search" name="prod_name"/> 
							<span class="fas fa-search search-box-icon"></span>
						</form>
					</div>
					<button class="btn btn-primary" id="searchItem">
						<span class="fas fa-plus me-2"></span>검색
					</button> 

					<!-- 공급사/부품 추가 버튼 -->
					<div class="ms-xxl-auto">
						<button class="btn btn-primary" id="addSupplierBtn">
							<span class="fas fa-plus me-2"></span>고객사 추가
						</button>
						<button class="btn btn-primary" id="addProdutBtn">
							<span class="fas fa-plus me-2"></span>제품 추가
						</button>
					</div>
				</div>
			</div>

			<!-- 콘텐츠 : 고객사 리스트 및 비교 표, 그래프 -->
			<div class="mx-lg-n4 mt-3">
				<div class="row g-3">
				
					<!-- 왼쪽 표 감싸는 컨테이너(카드) -->
					<div class="col-12 col-xl-6 col-xxl-6 min-vh-75">
						<div class="card retailerCard h-100">
						
							<!-- 카드 헤더 -->
							<div class="card-header border-bottom-0 pb-0">
								<div class="row justify-content-between align-items-center mb-4">
								
									<!-- 카드 타이틀 및 설명, 카드 헤더 내용 -->
									<div class="col-auto">
									<c:if test="${not empty prod_name }">
										<h3 class="text-1100" id="retailerCardTitle"><c:out value="${prod_name }"/></h3>
										<button class="btn btn-primary" id="productDetail">
											제품상세보기
										</button>
										<p class="mb-0 text-700"><c:out value="${prod_name } 판매사"/></p>
									</c:if>
									<c:if test="${empty prod_name }">
										<h3 class="text-1100" id="retailerCardTitle">상품을 검색해주세요</h3>
										<p class="mb-0 text-700"></p>
									</c:if>
										<input type="hidden" name="prod_name" id="prod_name" value="${prodDetail.prod_name }">
										<input type="hidden" name="prod_no" id="prod_no" value="${prodDetail.prod_no }">
										<input type="hidden" name="prod_detail" id="prod_detail" value="${prodDetail.prod_detail }">
										<input type="hidden" name="unit" id="unit" value="${prodDetail.unit }">
										<input type="hidden" name="model" id="model" value="${prodDetail.model }">
									</div>
									
									<!-- 검색 결과 개수 표시 -->
									<div class="col-auto w-100 w-md-auto">
										<div class="row align-items-center g-0 justify-content-between">
											<div class="col-12 col-sm-auto"></div>
											<div class="col-auto d-flex">
												<p class="mb-0 ms-sm-3 fs--1 text-700 fw-bold">
													<span class="fas fa-filter me-1 fw-extra-bold fs--2"></span>
													<span id="retailerTasks">${count} tasks</span>
												</p>
											</div>
										</div>
									</div>

								</div>
							</div> <!-- 카드 헤더 끝  -->

							<!-- 카드 바디 :  고객사 리스트 테이블 -->
							<div class="card-body py-0 scrollbar to-do-list-body min-vh-xxl-50 h-xl-auto">

								<div id="retailerTableContainer" dat-list='{"valueNames":["name","email","age"],"page":10,"pagination":true}'>
									<div class="table-responsive mx-n1 px-1">
									
										<!-- 고객사 테이블 : retailerTable  -->
										<table class=" table tabl-sm border-top border-200 fs--1 mb-0" id="retailerTable">
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
													<th class="sort align-middle ps-3" data-sort="no">판매사 번호</th>
													<th class="sort align-middle" data-sort="name">판매사 이름</th>
													<th class="sort align-middle" data-sort="ceo">대표자</th>
													<th class="sort align-middle" data-sort="cate">구분</th>
													<th class="sort align-middle" data-sort="scale">규모 등급</th>
													<th class="sort text-end align-middle pe-0" scope="col">ACTION</th>
												</tr>
											</thead>
											
											<tbody class="list" id="bulk-select-body">
												<c:forEach items="${rList }" var="retailer">
													<tr>
													<td class="fs--1 align-middle">
														<div class="form-check mb-0 fs-0">
															<input class="form-check-input" type="checkbox"
																data-bulk-select-row="{&quot;name&quot;:&quot;Anna&quot;,&quot;email&quot;:&quot;anna@example.com&quot;,&quot;age&quot;:18}" />
														</div>
													</td>
													<td class="align-middle ps-3 no"><c:out value="${retailer.retail_no }"/></td>
													<td class="align-middle name"><c:out value="${retailer.retail_name }"/></td>
													<td class="align-middle ceo"><c:out value="${retailer.ceo_name }"/></td>
													<td class="align-middle cate"><c:out value="${retailer.category }"/></td>
														<td class="align-middle cate"><c:out value="${retailer.scale_grade }"/></td>
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
																<a class="dropdown-item retailerDetail" href="#!" >View</a><a
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
									<h3 class="text-1100">판매 예측 비교</h3>
								</div>
								<p class="text-700 mb-4">판매 예측 비교 설명</p>

								<!-- 오른쪽 비교 리스트 테이블 -->
								<div id="tableComparsionR" data-list='{"valueNames":["name","email","age"],"page":5,"pagination":true}'>
									<div class="table-responsive">
										<table class="table table-sm fs--1 mb-0">
											<thead>
												<tr>
													<th class="sort border-top ps-3 asc" data-sort="predict_no">예측 번호</th>
													<th class="sort border-top" data-sort="retail_name">판매사 이름</th>
													<th class="sort border-top" data-sort="product_name">상품 이름</th>
													<th class="sort border-top" data-sort="sales_amount">예측 판매량</th>
													<th class="sort border-top" data-sort="purchasing_grade">구매자 등급</th>
													<th class="sort border-top" data-sort="price">단가</th>
													<th class="sort border-top" data-sort="transport_grade">운임등급</th>
												</tr>
											</thead>
											<tbody class="lisr" id="predictList">
												<tr>
													<td class="align-middle ps-3 predict_no">예측 번호</td>
													<td class="align-middle retail_name">판매사 이름</td>
													<td class="align-middle product_name">판매사 이름</td>
													<td class="align-middle sales_amount">예측 판매량</td>
													<td class="align-middle purchasing_grade">구매자 등급</td>
													<td class="align-middle price">단가</td>
													<td class="align-middle transport_grade">운임등급</td>
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
				<h4 class="modal-title" id="myModalLabel">판매사 상세 정보</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>판매사 이름</label> <input class="form-control" name='retail_name' value='' readonly>
				</div>
				<div class="form-group">
					<label>대표자</label> <input class="form-control" name='ceo_name' value='' readonly>
				</div>
				<div class="form-group">
					<label>구분</label> <input class="form-control" name='category' value='' readonly>
				</div>
				<div class="form-group">
					<label>사업자 번호</label> <input class="form-control" name='biz_no' value='' readonly>
				</div>
				<div class="form-group">
					<label>운송 분류</label> <input class="form-control" name='transport_category' value='' readonly>
				</div>
				
				<div class="form-group">
					<label>phone</label> <input class="form-control" name='phone' value='' readonly>
				</div>

			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				<button type="button" class="btn btn-default modalCloseBtn">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
<!-- 				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button> -->
				<h4 class="modal-title" id="myModalLabel">부품 상세 정보</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>상품 이름</label> <input class="form-control" name='product_name' value='' readonly>
				</div>
				<div class="form-group">
					<label>상품 번호</label> <input class="form-control" name='product_no' value='' readonly>
				</div>
				<div class="form-group">
					<label>상품 설명</label> <input class="form-control" name='product_detail' value='' readonly>
				</div>
				<div class="form-group">
					<label>상품 단위</label> <input class="form-control" name='product_unit' value='' readonly>
				</div>
				<div class="form-group">
					<label>모델 이름</label> <input class="form-control" name='model_name' value='' readonly>
				</div>
				<div class="form-group">
					<label>모델 용량</label> <input class="form-control" name='capacity' value='' readonly>
				</div>
				<div class="form-group">
					<label>모델 색상</label> <input class="form-control" name=color value='' readonly>
				</div>
				<div class="form-group">
					<label>출시일</label> <input class="form-control" name='release_date' value='' readonly>
				</div>

			</div>
			<div class="modal-footer">
				<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
				<button type="button" class="btn btn-default modalCloseBtn">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<input type="hidden" id="product_name" value="${productDetail.prod_name }">
<input type="hidden" id="product_no" value="${productDetail.prod_no }">
<input type="hidden" id="product_detail" value="${productDetail.prod_detail }">
<input type="hidden" id="product_unit" value="${productDetail.unit }">
<input type="hidden" id="model_name" value="${productDetail.model.model_name }">
<input type="hidden" id="capacity" value="${productDetail.model.capacity }">
<input type="hidden" id="color" value="${productDetail.model.color }">
<input type="hidden" id="release_date" value="${productDetail.model.release_date }">

</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/test.js"></script>
<script src="https://cdn.jsdelivr.net/npm/echarts@5.4.3/dist/echarts.min.js" ></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#searchItem').on('click',function(){
			$('form.position-relative').submit();
			$('#retailerCardTitle').html($('#productSearchBox').find('input').val());
		});
		
		$('#productDetail').on("click",function(e){
			$('#productModal').find("input[name='product_name']").val($('#product_name').val());
			$('#productModal').find("input[name='product_no']").val($('#product_no').val());
			$('#productModal').find("input[name='product_detail']").val($('#product_detail').val());
			$('#productModal').find("input[name='product_unit']").val($('#product_unit').val());
			$('#productModal').find("input[name='model_name']").val($('#model_name').val());
			$('#productModal').find("input[name='capacity']").val($('#capacity').val());
			$('#productModal').find("input[name='color']").val($('#color').val());
			$('#productModal').find("input[name='release_date']").val($('#release_date').val());
			
			$("#productModal").modal("show"); 
		});
		
		$(".retailerDetail").on("click", function(e){
			var retail_no=$(this).closest('tr').children('.ps-3').html();
			var retailerDetail;
			Service.getRetailer(retail_no,function(result){
				retailerDetail=result;
				console.log(retailerDetail.retail_name);
				 $('#myModal').find("input[name='retail_name']").val(retailerDetail.retail_name);
				 $('#myModal').find("input[name='ceo_name']").val(retailerDetail.ceo_name);
				 $('#myModal').find("input[name='category']").val(retailerDetail.category);
				 $('#myModal').find("input[name='biz_no']").val(retailerDetail.biz_no);
				 $('#myModal').find("input[name='transport_category']").val(retailerDetail.transport_category);
				 $('#myModal').find("input[name='phone']").val(retailerDetail.phone);
				 $('#myModal').find("input[name='scale_grade']").val(retailerDetail.scale_grade);
			}); 
			$("#myModal").modal("show");
			
		});
		$(".modalCloseBtn").on("click",function(e){
			$("#myModal").modal("hide");
			$("#productModal").modal("hide");
		});
		//체크박스 클릭시 제안 표시
		$('#bulk-select-body').find('input.form-check-input').on("change",function(){
			var retail_no=$(this).closest('tr').children('.ps-3').html();
			var prod_name=$('#retailerCardTitle').html();
			if($(this).is(':checked')){
				var str="";
				Service.getPredict({retail_no:retail_no,prod_name},function(result){
					str+="<tr>";
					str+='<td class="align-middle ps-3 sale_predict_no">'+result.sale_predict_no+'</td>';
					str+='<td class="align-middle retail_name">'+result.retailer.retail_name+'</td>';
					str+='<td class="align-middle prod_name">'+result.product.prod_name+'</td>';
					str+='<td class="align-middle sales_amount">'+result.sales_amount+'</td>';
					str+='<td class="align-middle purchasing_grade">'+result.purchasing_grade+'</td>';
					str+='<td class="align-middle price">'+result.price+'</td>';
					str+='<td class="align-middle transport_grade">'+result.transport_grade+'</td>';
					console.log(str);
/* 					var proposalDetail={};
					var regex = /[^0-9]/g;
					//차트 라벨
					names.push(result.supplier.suppl_name);
					
					//max값 계산을 위해서
					price.push(result.price);
					let maxPrice=Math.max(...price);
					quantity.push(result.quantity);
					let maxQuantity=Math.max(...quantity);
					//차트 각 데이터 이름
					proposalDetail.name=result.supplier.suppl_name;
					//정수 변환
					let quality_grade=result.quality_grade.replace(regex,"");
					let prod_period=result.prod_period.replace(regex,"");
					//차트 각 데이터들
					proposalDetail.value=[result.price,result.quantity,result.defective_rate,quality_grade,prod_period];
					//proposal.push(result); 
					proposal.push(proposalDetail);*/
					$('#predictList').append(str);
					//makeChart(proposal,names,maxPrice,maxQuantity);
				});
			}else if(!($(this).is(':checked'))){
				var td = $('#proposalList').find('.proposal_no');
				Service.getPredict({retail_no:retail_no,prod_name},function(result){
					var proposal_no=result.proposal_no;
					for(let i=0; i<td.length;i++){

	 					if(td.eq(i).html()==proposal_no){
							td.eq(i).parent().remove();
							proposal.splice(i,1);
							//makeChart(proposal);
						}
					} 
				})
			}
		});
		
	})
		
		
</script>
<%@include file="includes/footer.jsp"%>