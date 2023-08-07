<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp"%>
<div class="content">
	<div class="pb-5">
		<div class="row g-4">
			<!-- 페이지 타이틀, 동적으로 변경 원할시 아이디 추가해서 사용 -->
			<div class="mb-5">
				<h2 id="heading" class="mb-2">통계 및 분석</h2>
				<h5 id="subheading" class="text-700 fw-semi-bold">통계 요약 및 분석</h5>
			</div>
			<button id="testBtn">What is it</button>
<!-- 			<div class="echart-projection-actual"
										style="height: 180px; width: 100%;"></div> -->
			
			<!-- 왼쪽 통계 그래프들 -->
			<!-- 데이트피커 -->
<!-- 			<div class="row justify-content-between">
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl-0 border-bottom-xxl-0 
						border-end border-bottom pb-4 pb-xxl-0 ">
						<input type="text" id="datePicker" class="form-control" value="2019-06-27">
					</div>
			</div> -->
			<div class="col-12 col-xxl-6">
				<!-- 통계 값 패널, 이모티콘 : Unicons Line, 다른거 사용 가능, 동적 변환 원하면 클래스명 또는 아이디값 부여 -->
				<div class="row justify-content-between">
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl-0 border-bottom-xxl-0 
						border-end border-bottom pb-4 pb-xxl-0 ">
						<span class="uil fs-3 lh-1 uil-download-alt text-primary"></span>
						<h1 class="fs-3 pt-3" id="orderQt">${ orderQ }</h1>
						<p class="fs--1 mb-0">부품 주문량</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl-0 border-bottom-xxl-0 
						border-end-md border-bottom pb-4 pb-xxl-0">
						<span class="uil fs-3 lh-1 uil-upload text-info"></span>
						<h1 class="fs-3 pt-3" id="produceQt">${ produceQ }</h1>
						<p class="fs--1 mb-0">제품 생산량</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-bottom-xxl-0 border-bottom 
						border-end border-end-md-0 pb-4 pb-xxl-0 pt-4 pt-md-0">
						<span class="uil fs-3 lh-1 uil-money-bill-stack text-primary"></span>
						<h1 class="fs-3 pt-3" id="salesQt">${ saleQ }</h1>
						<p class="fs--1 mb-0">제품 판매량</p>
					</div>
					<div
						class="col-6 col-md-4 col-xxl-3 text-center 
						border-start-xxl border-end-xxl pb-md-4 pb-xxl-0 pt-4 pt-xxl-0">
						<span class="uil fs-3 lh-1 uil-usd-circle text-danger"></span>
						<h1 class="fs-3 pt-3" id="returnQt">${ returnQ }</h1>
						<p class="fs--1 mb-0">제품 반품량</p>
					</div>
				</div>
				<!-- class="row justify-content-between" END -->
				<hr class="bg-200 mb-6 mt-4" />

				<!--  그래프 1 상단  -->
				<div class="row flex-between-center mb-4 g-3">
					<div class="col-auto">
						<h3 id="compareTitle">판매량 비교</h3> 
						<p class="text-700 lh-sm mb-0" 
							id="compareComment">직전 단위기간 대비 판매량</p>
					</div>
					<div class="col-6 col-sm-4">
						<!--  셀렉트, 내용 변경 가능 -->
						<select class="form-select form-select-sm mt-2"
							id="selectComparePeriod">
							<option>2023년도</option>
							<option>2022년도</option>
							<option>2021년도</option>
						</select>
					</div>
				</div>
				<!-- 그래프 -->
				<div id="compareChart" class="echart-total-sales-chart" 
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
										<h5 class="mb-1" id="salesTopBadge">
											제품별 판매량<!-- <span
												class="badge badge-phoenix badge-phoenix-warning rounded-pill fs--1 ms-2">
												<span class="badge-label">★-6.8%</span> -->
											</span>
										</h5>
										<h6 class="text-700" id="salesTopPeriod">★Last 7 days</h6>
									</div>
									<h4 id="salesTopQt">★16,247</h4>
								</div>
								<!-- class="d-flex justify-content-between" -->
								<div class="d-flex justify-content-center px-4 py-6">
									<!--  첫번째 차트 코드  -->
									<div id="salesTopChart" class="echart-total-orders"
										style="height:115%; width: 100%"></div>
								</div>
								<div class="mt-2">
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0"
											id="salesTopText">★Completed</h6>
										<h6 class="text-900 fw-semi-bold mb-0"
											id="salesTopCompleted">★52%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-primary-100 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0"
											id="salesTopAnotherText">★Pending payment</h6>
										<h6 class="text-900 fw-semi-bold mb-0"
											id="salesTopPending">★48%</h6>
									</div>
								</div>
								<!-- lass="mt-2" END -->
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
										<h5 class="mb-1" id="totalSalesAmount"> 판매 예측 정확도
												<!-- <span class="badge badge-phoenix badge-phoenix-warning rounded-pill fs--1 ms-2">
												<span class="badge-label" id="totalSalesBadge">★+26.5%</span> -->
											</span>
										</h5>
										<h6 class="text-700" id="predictPeriod">★Last 7 days</h6>
										<!-- 이거 드롭다운 옵션했으면 좋겠는데? -->
									</div>
									<%-- <h4>${ testData }</h4> --%>
									<h4 id="predictPrecision">DEFAULT</h4>
								</div>
								<!-- class="d-flex justify-content-between" -->
								<div class="pb-0 pt-4">
									<div id="predictChart" class="echarts-new-customers"
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
										<h5 class="mb-2">부품 공급 의존도</h5>
										<h6 class="text-700" id="suppleDependPeriod">★Last 7 days</h6>
									</div>
								</div>
								<div class="pb-4 pt-3">
									<div id="suppleDependChart" class="echart-top-coupons"
										style="height: 115px; width: 100%;"></div>
								</div>
								<div>
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Percentage discount</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★72%</h6>
									</div>
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary-200 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Fixed card discount</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★18%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-info-500 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Fixed product discount</h6>
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
										<h5 class="mb-2">부품 회전율</h5>
										<h6 class="text-700" id="compoTurnoverPeriod">★Last 7 days</h6>
									</div>
								</div>
								<div id="compoTurnoverChart" class="d-flex justify-content-center pt-3 flex-1">
									<div class="echarts-paying-customer-chart"
										style="height: 100%; width: 100%;"></div>
								</div>
								<div class="mt-3">
									<div class="d-flex align-items-center mb-2">
										<div class="bullet-item bg-primary me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Paying customer</h6>
										<h6 class="text-900 fw-semi-bold mb-0">★30%</h6>
									</div>
									<div class="d-flex align-items-center">
										<div class="bullet-item bg-primary-100 me-2"></div>
										<h6 class="text-900 fw-semi-bold flex-1 mb-0">★Non-paying customer</h6>
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

</main>
<!-- <script src="https://cdn.jsdelivr.net/npm/moment@2.29.4/moment.min.js" defer></script> -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/echarts@5.4.3/dist/echarts.min.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	const { getColor, getData, getDates } = window.phoenix.utils;
	 
	// 테스트
	 $("#testBtn").html("수량:"+${orderQ});
	 $(document).on("click", "#testBtn", function() {
	      $("#totalSalesAmount").html("새로운 내용");
	      displayChart();
	      // requestPeriod(startDate, endDate);
		    const dates = getDates(
				      new Date('5/1/2022'),
				      new Date('5/30/2022'),
				      1000 * 60 * 60 * 24
				    );
		    console.log(dates);
		});  
		var periodOption=[]; //셀렉트 옵션 기간
 		var startDate = new Date('2022-07-01');
		var endDate = new Date('2023-01-01');
		var onString;		//기간 종류
		
		var saleList=[];			//제품 판매 리스트**
		var productList=[]; 	//제품 리스트
  		var orderList=[]; 		//부품 구매 리스트
		var predictList=[];	//매출액 예측 리스트
		
		//좌측 상단 차트
		var orderQty; 		//부품 구매량**
		var produceQty;	//제품 생산량** = productQuantity?어디에서?
		var saleQty;			//제품 판매량**
		var returnQty;		//제품 반품량**
		
		//좌측 하단 차트
		var correspondingSalesAmount;	//해당기간 제품 판매금액
		var precedingSalesAmount;			//직전기간 제품 판매금액
		
		//우측 차트
		var saleQtyListByPeriodWithLank = []; //제품별 판매량 순위 //우측 10시
		var salePredictList = [];   //매출액 예측 비교 //우측 2시 // 그리고 위에서 선언한 saleList 필요
		var supplyDependence;  //전체 부품 공급 의존도 //우측 8시
		var compoInventoryTurnover; //부품 회전율 //우측 4시

		//1. orderQt, produceQt, salesQt, returnQt,
		//2. compareTitle, compareComment, compareChart, 
		//2-1. selectComparePeriod, salesPeriod,
		//3. salesTopQt, salesTopBadge, salesTopChart
		//     salesTopText, salesTopCompleted, salesTopAnotherText, salesTopPending, 
		//4. totalSalesAmount, totalSalesBadge, predictPeriod, predictPrecision
		//5. suppleDependPeriod, suppleDependChart, 
		//6. compoTurnoverPeriod, compoTurnoverChart
		
		 /////////////////////////////////////////////차트
		 var displayChart = function() {
			// 좌측하단 비교 통계  

			
			
			var myChart = echarts.init(document.getElementById('compareChart'));
		      // Specify the configuration items and data for the chart
		      var option = {
		        title: {
		          text: '판매량 비교',
		          subtext: '단위 기간 동안'
		        },
		        tooltip: {},
	/* 	        toolbox: {
		            show: true,
		            feature: {
		              saveAsImage: {}
		            }
		          }, */
		        legend: {
		          data: ['sales']
		        },
		        xAxis: {
		            type: 'category',
		            data: getDates(
		              new Date('5/1/2022'),
		              new Date('5/7/2022'),
		              1000 * 60 * 60 * 24
		            ),
		            show: true,
		            boundaryGap: false,
		            axisLine: {
		              show: true,
		              lineStyle: { color: getColor('gray-200') }
		            },
		            axisTick: {
		              show: false
		            },
		            axisLabel: {
		              formatter: value => window.dayjs(value).format('DD MMM'),
		              interval: 6,
		              showMinLabel: true,
		              showMaxLabel: true,
		              color: getColor('gray-800')
		            }
		          },
		        yAxis: {},
		        series: [
		          {
		            name: 'sales',
		            type: 'line',
		            data: [5, 20, 36, 10, 10, 20]
		          }
		        ]
		      };
		   // Display the chart using the configuration items and data just specified.
		      myChart.setOption(option);
		}
	      
		
		
		

		 
		 // 셀렉트옵션 테스트
		 $("#selectPeriod").on("change", function() {
		        var selectedValue = $(this).val(); // 선택된 옵션의 값 가져오기
		        // 선택된 옵션의 내용을 다른 요소에 출력
		        $("#selectPeriod").html("* " + selectedValue);
		        
		        // Selected Value
		        var text = $('#selectPeriod option:selected').text();
		        var value = $('#selectPeriod').val();
		        // Deselected Values
		        var str = "";
		        $('#selectPeriod option:not(:selected)').each(function(){
		            var text = $(this).text();
		            var value = $(this).val();
		            str += text + "/" + value + ", ";
		        });
		        // 선택된 값으로 바꾸기
		        $('#selectPeriod').val('#0000ff');
		    });
		 
		
		 
		 //* / 왼쪽 큰 그래프
	        // Draw the chart
	        //var makeChart = function(startDate, endDate){
				/*var bigChartDom = document.getElementById('echart-total-sales-chart');
				var bigChart = echarts.init(bigChartDom);
				var bigChartOption = {
				          	title: {
					            text: 'ECharts Getting Started Example'
					          },
					          tooltip: {},
					          xAxis: {
					            data: ['shirt', 'cardigan', 'chiffon', 'pants', 'heels', 'socks']
					          },
					          yAxis: {},
					          series: [
					            {
					              name: 'sales',
					              type: 'bar',
					              data: [5, 20, 36, 10, 10, 20]
					            }
					          ]
					        };
				bigChart.setOption(bigChartOption);*/
		 	
		    //bigChart.setOption(option); */
		
		function requestPeriod(startDate, endDate) {
			$.ajax({
				type: "POST",
				url: "/statistics-overview", // 엔드포인트 URL
				data: JSON.stringify({
					"startDate": startDate,
					"endDate":  endDate,
					"on" : onString
				}), // 요청 페이로드
				contentType: "application/json; charset=utf-8;", // 요청 컨텐츠 타입
				dataType: "json", // 응답 데이터 형식 (리턴형) (이거 안써주면 XML(document형)으로 됨)
				success: function(response) { // 성공적인 응답 처리
					// AJAX 요청의 success 콜백 함수에서 받은 JSON 데이터를 활용하여 UI 업데이트나 처리를 수행
					console.log("JSON 데이터 - ", response);
					//updatePeriodUI(); 
				},
			    error: function(xhr, status, error) {
					console.error(xhr); // 에러 오브젝트. 얘만 있어도 status나 에러코드 알 수 있음
					console.error("서버로부터 오류 메시지: ", error); // 에러 메시지 안나옴...왜냐면 서버에서 안보냈으니깐.
				}
			});
		}
 

 		
}); 
</script>
<!-- 날짜 포맷에 필요한 moment.js 라이브러리 (부트스트랩 데이트피커 JS에서도 사용) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"/>
<%@include file="includes/footer.jsp"%>