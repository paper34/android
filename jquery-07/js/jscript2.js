

//시작 슬라이드 번호 1번만 보여라 
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n){
    showSlides(slideIndex += n);
}

function currentSlide(n){
    showSlides(slideIndex = n);
}

function showSlides(n){
    var i;
    var slides = document.getElementsByClassName("mySlides");//이미지 배열 변수
    if(n>slides.length) {
        slideIndex = 1;
    }
    if(n<1){
        slideIndex = slides.length;
    }
    for(i=0; i<slides.length; i++){
        slides[i].style.display = "none";
    }
    slides[slideIndex-1].style.display = "block";
}
