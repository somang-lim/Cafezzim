<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main" id="top">
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
	data-navbar-on-scroll="data-navbar-on-scroll">
	<div class="container">
		<a class="navbar-brand d-flex align-items-center fw-bold fs-2"
			href="/">
			<div class="text-warning">App</div>
			<div class="text-1000">Lab</div>
		</a>
		<button class="navbar-toggler collapsed" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div
			class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0"
			id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto pt-2 pt-lg-0">
				<li class="nav-item" data-anchor="data-anchor"><a
					class="nav-link fw-medium active" aria-current="page" href="#top">Home</a></li>
				<li class="nav-item" data-anchor="data-anchor"><a
					class="nav-link fw-medium" href="#location">지역별 검색</a></li>
				<li class="nav-item" data-anchor="data-anchor"><a
					class="nav-link fw-medium" href="#faq">FAQ</a></li>
			</ul>
			<form class="ps-lg-5" action="signIn">
				<button class="btn btn-lg btn-light rounded-pill order-0"
					type="submit">
					<i class="far fa-user"></i>
				</button>
			</form>
		</div>
	</div>
</nav>