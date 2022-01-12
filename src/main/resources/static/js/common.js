/**
 * 공통 스크립트 부분
 * 2022.01.03 김성겸 작성시작
 */

$('#datePicker').datepicker({
	format: "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
	language: "kr", // 언어(js 추가가 필요하다.)
	todayHighlight: true
});



window.addEventListener('DOMContentLoaded', () => {
	const viewCnt = document.querySelectorAll("#viewDetailContent > div");
	const navLinks = document.querySelectorAll(".main-tool-bar a.nav-link");
	
	if(viewCnt.length){
		gsap.registerPlugin(ScrollTrigger);
		
		ScrollTrigger.create({
			trigger: "#target",
		  start: 'top 30',
		  end: "bottom top",
		  toggleClass: {className: 'main-tool-bar--scrolled', targets: '.main-tool-bar, #target'}
		});
	
		viewCnt.forEach((panel,index)=>{
			ScrollTrigger.create({
				trigger:panel,
				start: "top 120",
				end:"bottom 120",
				toggleActions: 'play reverse none reverse',
	    	toggleClass: {targets: navLinks[index], className: "active"},
				//markers:true
			});
		});
	}
  
	
});

