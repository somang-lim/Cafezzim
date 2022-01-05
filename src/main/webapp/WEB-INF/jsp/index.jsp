<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- ===============================================-->
<!--    Document Title-->
<!-- ===============================================-->
<title>카페 예약 사이트</title>
<%@include file="common.jsp" %>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="header.jsp" %>
		
		<section class="py-0" id="searchMain">
			<div class="bg-holder"
				style="background-image: url(img/gallery/hero-bg.jpg); background-position: center; background-size: cover;">
			</div>
			<div class="container-sm position-relative">
				<div class="row flex-center pt-8">
					
					<!-- 카페 검색 form 부분 -->
					<div class="col-lg-10 col-xl-6">
						<form name="frm_search" action="" method="post" class="mb-6">
							<div class="cafe-find-wrap">
								<!-- 위치 혹은 카페명으로 검색 -->
								<div class="cafe-search-txt">
									<label>위치 혹은 카페명</label>
									<input type="text" name="findStr" placeholder="가고싶은 카페를 저희에게 알려주세요">
								</div>
								<!-- 카페 예약 날짜 검색 -->
								<div class="cafe-search-date">
									<label>예약 날짜</label>
									<input type="text" name="date" id="datePicker" placeholder="날짜를 알려주세요">
								</div>
								<div class="cafe-search-btn text-center">
									<button type="button" class="btn btn-lg btn-primary rounded-pill hover-top"><i class="fas fa-search"></i> 검색</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="row flex-center pb-4">
					<!-- 메인 카피 부분 -->
					<div class="col-md-10 col-lg-6 text-center">
						<div class="mb-3">
							<img src="img/icons/coffee-cup-thin.png" alt="카페 컵 이미지" class="multiply">
						</div>
						<h1 class="mb-4 display-3 fw-bold lh-sm">
							어떤 커피를 마실까? <br class="d-block d-lg-none d-xl-block" />modern
							lifestyle
						</h1>
						<p class="mt-3 mb-4 fs-1 text-white">
							Increase productivity with a simple to-do app. app for <br
								class="d-none d-lg-block" />managing your personal budgets.
						</p>
					</div>
				</div>
			</div>
		</section>
		
		<section class="py-0" id="joinnow">
			<div class="bg-holder"
				style="background-image: url(img/illustrations/hero-bg.png); background-position: bottom; background-size: cover;">
			</div>
			<!--/.bg-holder-->

			<div class="container position-relative">
				<div class="row align-items-center pt-8 pb-4">
					<div class="col-md-5 col-lg-6 order-md-1 text-center text-md-end mb-4">
						<img class="img-fluid" src="img/illustrations/mobile_pay.svg" alt="" />
					</div>
					<div class="col-md-7 col-lg-6 text-center text-md-start">
						
						<h1 class="mb-4 display-3 fw-bold lh-sm">
							내 자리를 찜하는 <br class="d-block d-lg-none d-xl-block" />가장 스마트한 방법
						</h1>
						<p class="mt-3 mb-4 fs-1">
							Increase productivity with a simple to-do app. app for <br
								class="d-none d-lg-block" />managing your personal budgets.
						</p>
						<a class="btn btn-lg btn-primary rounded-pill hover-top" href="#"
							role="button">가입 하기</a><a class="btn btn-link ps-md-4"
							href="#" role="button"> 카페 찜 이란?</a>
					</div>
				</div>
			</div>
		</section>


		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section class="py-7">

			<div class="container">
				<div class="row">
					<div class="col-12 mx-auto align-items-center text-center">
						<p class="mb-4">Trusted by companies like</p>
					</div>
				</div>
				<div
					class="row align-items-center justify-content-center justify-content-lg-around">
					<div
						class="col-6 col-sm-4 col-md-4 col-lg-2 px-md-0 mb-5 mb-lg-0 text-center">
						<img src="img/gallery/twosome_logo.svg" alt="투썸플레이스" class="img-fluid" />
					</div>
					<div
						class="col-6 col-sm-4 col-md-4 col-lg-2 px-md-0 mb-5 mb-lg-0 text-center">
						<img src="img/gallery/ediya_logo.jpg" alt="이디야" class="img-fluid" />
					</div>
					<div
						class="col-6 col-sm-4 col-md-4 col-lg-2 px-md-0 mb-5 mb-lg-0 text-center">
						<img src="img/gallery/mega_logo.jpg" alt="메가커피" class="img-fluid" />
					</div>
					<div
						class="col-6 col-sm-4 col-md-4 col-lg-2 px-md-0 mb-5 mb-lg-0 text-center">
						<img src="img/gallery/paik_logo.png" alt="빽다방" class="img-fluid"/>
					</div>
					<div
						class="col-6 col-sm-4 col-md-4 col-lg-2 px-md-0 mb-5 mb-lg-0 text-center">
						<img src="img/gallery/hollys_logo.png" alt="할리스" class="img-fluid"/>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->


		<section class="py-5" id="location">
			<div class="container-lg">
				<div class="row align-items-center">
					<!-- 서울 경기 -->
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0">
							<div class="location-img">
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid" alt="서울,경기">
							</div>
							<div class="location-desc py-4 px-4">
								<h4>수도권(서울,경기)</h4>
							</div>
						</a>
					</div>
					<!-- 강릉 -->
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0">
							<div class="location-img">
								<img src="img/gallery/cafe-img02.jpg" class="img-fluid" alt="강릉">
							</div>
							<div class="location-desc py-4 px-4">
								<h4>강릉</h4>
							</div>
						</a>
					</div>
					<!-- 부산 -->
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0">
							<div class="location-img">
								<img src="img/gallery/cafe-img03.jpg" class="img-fluid" alt="부산">
							</div>
							<div class="location-desc py-4 px-4">
								<h4>부산</h4>
							</div>
						</a>
					</div>
					<!-- 제주도 -->
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0">
							<div class="location-img">
								<img src="img/gallery/cafe-img04.jpg" class="img-fluid" alt="제주도">
							</div>
							<div class="location-desc py-4 px-4">
								<h4>제주도</h4>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>

		<section class="py-8" id="testimonial">
			<div class="container-lg">
				<div class="row flex-center">
					<div
						class="col-sm-10 col-md-5 col-lg-5 order-md-0 text-center text-md-start">
						<img class="img-fluid mb-4"
							src="img/illustrations/testimonial.png" alt="" />
					</div>
					<div
						class="col-sm-10 col-md-6 col-lg-6 text-center text-md-start offset-md-1">
						<h6 class="fw-bold fs-4 display-3 lh-sm">
							Meet Client Satisfaction <br />by using product
						</h6>
						<p class="my-4 pe-xl-5">The rise of mobile devices transforms
							the way we consume.Elevant channels such as Facebook.</p>
						<div class="carousel slide" id="carouselExampleDark"
							data-bs-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active" data-bs-interval="10000">
									<div class="row h-100">
										<div class="col-12">
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<h5 class="my-4 fw-bold lh-sm">User friendly &amp;
												Customizable</h5>
											<p class="mb-0 text-center text-md-start">Bring to the
												table win-win survival strategies to ensure proactive
												domination. At the end of the day, going forward, a new
												normal that has evolved from generation X is on the runway
												heading towards a streamlined cloud solution. User generated
												content in real-time will have multiple touchpoints for
												offshoring.</p>
										</div>
										<div class="col-xl-6 pt-4 d-flex d-sm-block flex-center">
											<div class="d-flex align-items-md-center">
												<img class="img-fluid me-4 me-md-3 me-lg-4"
													src="img/gallery/user.png" width="100" alt="" />
												<div class="w-lg-50 my-3">
													<h5 class="mb-0 fw-bold">Zoltan Nemeth</h5>
													<p class="fw-normal mb-0">CEO of Pixer Lab</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="carousel-item" data-bs-interval="2000">
									<div class="row h-100">
										<div class="col-12">
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<h5 class="my-4 fw-bold lh-sm">User friendly &amp;
												Customizable</h5>
											<p class="mb-0 text-center text-md-start">Bring to the
												table win-win survival strategies to ensure proactive
												domination. At the end of the day, going forward, a new
												normal that has evolved from generation X is on the runway
												heading towards a streamlined cloud solution. User generated
												content in real-time will have multiple touchpoints for
												offshoring.</p>
										</div>
										<div class="col-xl-6 pt-4 d-flex d-sm-block flex-center">
											<div class="d-flex align-items-md-center">
												<img class="img-fluid me-4 me-md-3 me-lg-4"
													src="img/gallery/user-1.png" width="100" alt="" />
												<div class="w-lg-50 my-3">
													<h5 class="mb-0 fw-bold">Jhon Doe</h5>
													<p class="fw-normal mb-0">Web Developer</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="carousel-item">
									<div class="row h-100">
										<div class="col-12">
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<svg class="bi bi-star-fill"
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												fill="#FFCC00" viewBox="0 0 16 16">
                          <path
													d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                        </svg>
											<h5 class="my-4 fw-bold lh-sm">User friendly &amp;
												Customizable</h5>
											<p class="mb-0 text-center text-md-start">Bring to the
												table win-win survival strategies to ensure proactive
												domination. At the end of the day, going forward, a new
												normal that has evolved from generation X is on the runway
												heading towards a streamlined cloud solution. User generated
												content in real-time will have multiple touchpoints for
												offshoring.</p>
										</div>
										<div class="col-xl-6 pt-4 d-flex d-sm-block flex-center">
											<div class="d-flex align-items-md-center">
												<img class="img-fluid me-4 me-md-3 me-lg-4"
													src="img/gallery/user-2.png" width="100" alt="" />
												<div class="w-lg-50 my-3">
													<h5 class="mb-0 fw-bold">Viezh Robert</h5>
													<p class="fw-normal mb-0">UI/UX Designer</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="position-relative mt-sm-n5">
								<a class="carousel-control-prev carousel-icon z-index-2"
									href="#carouselExampleDark" role="button" data-bs-slide="prev"><span
									class="carousel-control-prev-icon" aria-hidden="true"></span><span
									class="visually-hidden">Previous</span></a><a
									class="carousel-control-next carousel-icon z-index-2"
									href="#carouselExampleDark" role="button" data-bs-slide="next"><span
									class="carousel-control-next-icon" aria-hidden="true"></span><span
									class="visually-hidden">Next</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- ============================================-->
		<!-- <section> begin ============================-->
		<section class="py-8" id="faq">

			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8 col-lg-6 text-center mb-3">
						<h6 class="fw-bold fs-4 display-3 lh-sm mb-3">궁금하신 점이 있나요?</h6>
						<p class="mb-5">The rise of mobile devices transforms the way
							we consume information entirely and the world's most elevant
							channels such as Facebook.</p>
					</div>
				</div>
				<div class="row flex-center">
					<div class="col-lg-9">
						<div class="accordion" id="accordionExample">
							<div class="accordion-item mb-2">
								<h2 class="accordion-header" id="heading1">
									<button class="accordion-button" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapse1"
										aria-expanded="true" aria-controls="collapse1">
										<span class="mb-0 fw-bold text-start fs-1 text-1000">How
											to contact with riders emergency?</span>
									</button>
								</h2>
								<div class="accordion-collapse collapse show" id="collapse1"
									aria-labelledby="heading1" data-bs-parent="#accordionExample">
									<div class="accordion-body bg-100">Leverage agile
										frameworks to provide a robust synopsis for high level
										overviews. Iterative approaches to corporate strategy foster
										collaborative thinking to further the overall value
										proposition. Organically grow the holistic world view of
										disruptive innovation via workplace diversity and
										empowerment.Bring to the table win-win survival strategies to
										ensure proactive domination. At the end of the day, going
										forward, a new normal that has evolved from generation X is on
										the runway heading towards a streamlined cloud solution. User
										generated content in real-time will have multiple touchpoints
										for offshoring.</div>
								</div>
							</div>
							<div class="accordion-item mb-2">
								<h2 class="accordion-header" id="heading2">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapse2"
										aria-expanded="true" aria-controls="collapse2">
										<span class="mb-0 fw-bold text-start fs-1 text-1000">App
											installation failed, how to update system information?</span>
									</button>
								</h2>
								<div class="accordion-collapse collapse" id="collapse2"
									aria-labelledby="heading2" data-bs-parent="#accordionExample">
									<div class="accordion-body bg-100">You can issue either
										partial or full refunds. There are no fees to refund a charge,
										but the fees from the original charge are not returned.</div>
								</div>
							</div>
							<div class="accordion-item mb-2">
								<h2 class="accordion-header" id="heading3">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapse3"
										aria-expanded="true" aria-controls="collapse3">
										<span class="mb-0 fw-bold text-start fs-1 text-1000">Website
											reponse taking time, how to improve?</span>
									</button>
								</h2>
								<div class="accordion-collapse collapse" id="collapse3"
									aria-labelledby="heading3" data-bs-parent="#accordionExample">
									<div class="accordion-body bg-100">Disputed payments
										(also known as chargebacks) incur a $15.00 fee. If the
										customer’s bank resolves the dispute in your favor, the fee is
										fully refunded.</div>
								</div>
							</div>
							<div class="accordion-item mb-2">
								<h2 class="accordion-header" id="heading4">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapse4"
										aria-expanded="true" aria-controls="collapse4">
										<span class="mb-0 fw-bold text-start fs-1 text-1000">New
											update fixed all bug and issues</span>
									</button>
								</h2>
								<div class="accordion-collapse collapse" id="collapse4"
									aria-labelledby="heading4" data-bs-parent="#accordionExample">
									<div class="accordion-body bg-100">There are no
										additional fees for using our mobile SDKs or to accept
										payments using consumer wallets like Apple Pay or Google Pay.</div>
								</div>
							</div>
							<div class="accordion-item mb-2">
								<h2 class="accordion-header" id="heading5">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapse5"
										aria-expanded="true" aria-controls="collapse5">
										<span class="mb-0 fw-bold text-start fs-1 text-1000">How
											to contact with riders emergency?</span>
									</button>
								</h2>
								<div class="accordion-collapse collapse" id="collapse5"
									aria-labelledby="heading5" data-bs-parent="#accordionExample">
									<div class="accordion-body bg-100">There are no
										additional fees for using our mobile SDKs or to accept
										payments using consumer wallets like Apple Pay or Google Pay.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end of .container-->

		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->



<%@include file="footer.jsp" %>
</body>
</html>