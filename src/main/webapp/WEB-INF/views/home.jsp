<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@include file="includes/header.jsp"%>
<section class="pt-5 pb-9">

        <div class="container-large mx-12 my-10">
          
          <div class="row align-items-center justify-content-between g-3 mb-4">
            <div class="col-auto">
              <h2 class="mb-0"> Welcome, (사용자)님!</h2>
            </div>
            <div class="col-auto">
              <div class="row g-2 g-sm-3">
                <div class="col-auto">
                  <button class="btn btn-phoenix-danger"><span class="fas fa-trash-alt me-2"></span>계정 삭제</button>
                </div>
                <div class="col-auto">
                  <button class="btn btn-phoenix-secondary"><span class="fas fa-key me-2"></span>비밀번호 변경</button>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row g-3 mb-6">
            <div class="col-12 col-lg-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="border-bottom border-dashed border-300 pb-4">
                    <div class="row align-items-center g-3 g-sm-5 text-center text-sm-start">
                      <div class="col-12 col-sm-auto">
                        <input class="d-none" id="avatarFile" type="file" />
                        <label class="cursor-pointer avatar avatar-5xl" for="avatarFile"><img class="rounded-circle" src="/resources/assets/img/team/30.webp" alt="" /></label>
                      </div>
                      <div class="col-12 col-sm-auto flex-1">
                        <div class="col-12 col-sm-auto flex-1">
                          <h3 class="fw-bolder mb-2">사용자이름</h3>
                          <p class="mb-0">부서</p><a class="fw-bold" href="#!">직급</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="d-flex flex-between-center pt-4">
                    <div>
                      <h6 class="mb-2 text-800">입사일</h6>
                      <h4 class="fs-1 text-1000 mb-0">20-11-05</h4>
                    </div>
                    <div class="text-end">
                      <h6 class="mb-2 text-800">연차</h6>
                      <h4 class="fs-1 text-1000 mb-0">3years</h4>
                    </div>
                    <div class="text-end">
                      <h6 class="mb-2 text-800">기타</h6>
                      <h4 class="fs-1 text-1000 mb-0">등등 </h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-lg-8">
              <div class="card h-100">
                <div class="card-body">
                  <div class="border-bottom border-dashed border-300">
                    <h4 class="mb-3 lh-sm lh-xl-1"> 사용자 정보
                      <button class="btn btn-link p-0" type="button"> <span class="fas fa-edit fs--1 ms-3 text-500"></span></button>
                    </h4>
                  </div>
                  <div class="pt-4 mb-2">
                    <div class="row justify-content-between">
                      <div class="col-4">
                        <h5 class="text-1000">Address</h5>
                      </div>
                      <div class="col-auto">
                        <p class="text-800">서울특별시 중구 중구대로1길 1</p>
                      </div>
                    </div>
                  </div>
                  <div class="border-top border-dashed border-300 pt-4">
                    <div class="row flex-between-center mb-2">
                      <div class="col-auto">
                        <h5 class="text-1000 mb-0">Email</h5>
                      </div>
                      <div class="col-auto"><a class="lh-1" href="mailto:shatinon@jeemail.com">aa1234@kapple.com</a></div>
                    </div>
                    <div class="row flex-between-center">
                      <div class="col-auto">
                        <h5 class="text-1000 mb-0">Phone</h5>
                      </div>
                      <div class="col-auto"><a href="tel:+1234567890">+1234567890</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row g-3 mb-6">
            <div class="col-12 col-lg-12">
              <div class="card h-100">
                <div class="card-body">
                  <h4>알람 등등..</h4>
                </div>
              </div>
            </div>
          </div>
          
        </div>
        

      </section>
<%@include file="includes/footer.jsp"%>