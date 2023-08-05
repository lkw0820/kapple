<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp"%>

<div class="content">

	<div class="pb-5">
		<div class="row g-4">

			<!-- 페이지 타이틀, 동적으로 변경 원할시 아이디 추가해서 사용 -->
			<div class="mb-5">
				<h2 id="heading" class="mb-2">통합 통계</h2>
				<h5 id="subheading" class="text-700 fw-semi-bold">통합 통계 화면 설명</h5>
			</div>

			<!-- 왼쪽 통계 그래프들 -->
			<div class="col-12 col-xxl-6">

				<!-- 통계 값 패널, 이모티콘 : Unicons Line, 다른거 사용 가능, 동적 변환 원하면 클래스명 또는 아이디값 부여 -->
				<div class="row justify-content-between">
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl-0 border-bottom-xxl-0 
						border-end border-bottom pb-4 pb-xxl-0 ">
						<span class="uil fs-3 lh-1 uil-download-alt text-primary"></span>
						<h1 class="fs-3 pt-3">★2,800</h1>
						<p class="fs--1 mb-0">★총 입고량</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl-0 border-bottom-xxl-0 
						border-end-md border-bottom pb-4 pb-xxl-0">
						<span class="uil fs-3 lh-1 uil-upload text-info"></span>
						<h1 class="fs-3 pt-3">★1,866</h1>
						<p class="fs--1 mb-0">★총 생산수</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-bottom-xxl-0 border-bottom 
						border-end border-end-md-0 pb-4 pb-xxl-0 pt-4 pt-md-0">
						<span class="uil fs-3 lh-1 uil-money-bill-stack text-primary"></span>
						<h1 class="fs-3 pt-3">★1,366</h1>
						<p class="fs--1 mb-0">★총 판매량</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl pb-md-4 pb-xxl-0 pt-4 pt-xxl-0">
						<span class="uil fs-3 lh-1 uil-usd-circle text-danger"></span>
						<h1 class="fs-3 pt-3">★1,200</h1>
						<p class="fs--1 mb-0">★총 반품량</p>
					</div>
				</div>
				<!-- class="row justify-content-between" END -->
				<hr class="bg-200 mb-6 mt-4" />

				<!--  그래프 1 상단  -->
				<div class="row flex-between-center mb-4 g-3">
					<div class="col-auto">
						<h3>★총 판매량</h3>
						<p class="text-700 lh-sm mb-0">★총 판매량 그래프 설명</p>
					</div>
					<div class="col-6 col-sm-4">
						<!--  셀렉트, 내용 변경 가능 -->
						<select class="form-select form-select-sm mt-2"
							id="selectTotalSale">
							<option>★Mar 1 - 31, 2022</option>
							<option>★April 1 - 30, 2022</option>
							<option>★May 1 - 31, 2022</option>
						</select>
					</div>
				</div>
				<!-- 그래프 -->
				<div class="echart-total-sales-chart"
					style="min-height: 320px; width: 100%"></div>
			</div>
			<!-- class="col-12 col-xxl-6" -->

			<!-- 오른쪽 그래프 컨테이너  -->
			<div class="col-12 col-xxl-6">
				<div class="row g-3">
					<div class="col-12 col-md-6">
						<div class="card h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<div>
										<h5 class="mb-1">
											★Total orders <span
												class="badge badge-phoenix badge-phoenix-warning rounded-pill fs--1 ms-2">
												<span class="badge-label">★-6.8%</span>
											</span>
										</h5>
										<h6 class="text-700">★Last 7 days</h6>
									</div>
									<h4>★16,247</h4>
								</div>
								<!-- class="d-flex justify-content-between" -->
								<div class="d-flex justify-content-center px-4 py-6">
									<div class="echart-total-orders"
										style="height: 85px; width: 115px"></div>
								</div>
								<div class="mt-2">
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Completed</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★52%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-primary-100 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Pending
											payment</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★48%</h6>
									</div>
								</div>
								<!-- lass="mt-2" END -->
							</div>
							<!-- class="card-body" END -->
						</div>
						<!-- class="card h-100" END -->
					</div>
					<!-- class="col-12 col-md-6" END -->
					<div id="totalSalesAmount" class="col-12 col-md-6">
						<div class="card h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<div>
										<h5 class="mb-1" id="totalSalesAmount">
											총 매출액<span
												class="badge badge-phoenix badge-phoenix-warning rounded-pill fs--1 ms-2">
												<span class="badge-label">★+26.5%</span>
											</span>
										</h5>
										<h6 class="text-700">★Last 7 days</h6>
										<!-- 이거 드롭다운 옵션했으면 좋겠는데? -->
									</div>
									<%-- <h4>${ testData }</h4> --%>
									<h4>DEFAULT</h4>
								</div>
								<!-- class="d-flex justify-content-between" -->
								<div class="pb-0 pt-4">
									<div class="echarts-new-customers"
										style="height: 180px; width: 100%;"></div>
								</div>
							</div>
							<!-- class="card-body" END -->
						</div>
						<!-- class="card h-100" END -->
					</div>
					<!-- class="col-12 col-md-6" END -->
					<div class="col-12 col-md-6">
						<div class="card h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<div>
										<h5 class="mb-2">★Top coupons</h5>
										<h6 class="text-700">★Last 7 days</h6>
									</div>
								</div>
								<div class="pb-4 pt-3">
									<div class="echart-top-coupons"
										style="height: 115px; width: 100%;"></div>
								</div>
								<div>
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Percentage
											discount</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★72%</h6>
									</div>
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary-200 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Fixed card
											discount</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★18%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-info-500 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Fixed
											product discount</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★10%</h6>
									</div>
								</div>
							</div>
							<!-- class="card-body" END -->
						</div>
						<!-- class="card h-100" END -->
					</div>
					<!-- class="col-12 col-md-6" END -->
					<div class="col-12 col-md-6">
						<div class="card h-100">
							<div class="card-body d-flex flex-column">
								<div class="d-flex justify-content-between">
									<div>
										<h5 class="mb-2">★총 매출 목표</h5>
										<h6 class="text-700">★Last 7 days</h6>
									</div>
								</div>
								<div class="d-flex justify-content-center pt-3 flex-1">
									<div class="echarts-paying-customer-chart"
										style="height: 100%; width: 100%;"></div>
								</div>
								<div class="mt-3">
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Paying
											customer</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★30%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-primary-100 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Non-paying
											customer</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★70%</h6>
									</div>
								</div>
								<!-- class="mt-3"END  -->
							</div>
							<!-- class="card-body d-flex flex-column" END -->
						</div>
						<!-- class="card h-100" END -->
					</div>
					<!-- class="col-12 col-md-6" END -->
				</div>
				<!-- class="row g-3" END -->
			</div>
			<!-- class="col-12 col-xxl-6" END -->
		</div>
		<!-- class="row g-4" END -->
	</div>
	<!-- class="pb-5" END -->
</div>
<!-- class="content" END -->


<!-- Ajax 호출에 필요한 jQuery 라이브러리 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		// 기간 (시작일, 종료일) => DatePicker같은 거 있으면 좋겠다
		let startDate = new Date("2000-07-25");
		let endDate = new Date();
		console.log(startDate, endDate);		
		requestPeriod(startDate, endDate);
		function requestPeriod(startDate, endDate) {
			$.post({
				//type: "POST",
				url: "/statistics-overview", // 엔드포인트 URL
				data: JSON.stringify({ "startDate": startDate, "endDate": endDate }), // 요청 페이로드
				contentType: "application/json; charset=utf-8;", // 요청 컨텐츠 타입
				dataType: "json", // 응답 데이터 형식 (리턴형) (이거 안써주면 XML(document형)으로 됨)
				success: function(response) {
					// 성공적인 응답 처리
					// AJAX 요청의 success 콜백 함수에서 받은 JSON 데이터를 활용하여 UI 업데이트나 처리를 수행합니다.
					//console.log("기간:", response.period);
					//console.log("시작일:", new Date(response.period.startDate));
					//console.log("종료일:", new Date(response.period.endDate));
					//console.log("종료일:", new Date(response));
					
					updatePeriodUI();
					// 이제 응답 데이터를 필요에 따라 처리하고 UI에 표시할 수 있습니다.
				},
			    error: function(xhr, status, error) {
					console.error(xhr); // 에러 오브젝트. 얘만 있어도 status나 에러코드 알 수 있음
					console.error("에러메시지: ", error); // 에러 메시지 안나옴...왜냐면 서버에서 안보냈으니깐.
				}
			});
		}
		
		function updatePeriodUI() {
			console.log("====UI업데이트 메소드");
			// id가 totalSalesAmount인 요소의 하위요소인 H4태그의 내용 값을 바꾸려면?
			$("#totalSalesAmount h4").text("새로운 내용");
		}
		
/* 	
     $.ajax({
      type: "GET",
      url: "/statistics-overview", // Ajax로 데이터를 요청할 컨트롤러 URL
      data: { "start_date": startDate, "end_date": endDate},
      success: function (data) {
    		console.log("test3-----------------");
        // 서버로부터 받은 결과 데이터를 동적으로 표시
        const totalSalesAmount = data.TOTAL_SALES_AMOUNT;
        console.log(totalSalesAmount);
         const totalSalesVarianceRate = data.TOTAL_SALES_VARIANCE_RATE; 

        // 총 매출액 표시
//        $("#totalSalesAmount").text("총 매출액: " + totalSalesAmount);
//        $("#totalSalesAmount").html("총 매출액: ");

        // 매출액 증감률 표시
//        $("#salesVariance").text("★" + totalSalesVarianceRate);
      },
      error: function () {
        alert("서버 오류가 발생하였습니다.");
      }
    }); 
  }*/
}); 
</script>

<%@include file="includes/footer.jsp"%>