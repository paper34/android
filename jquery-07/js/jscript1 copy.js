//alert("1111")

function showslide(n){// 번호로 슬라이드 이미지를 선택


//이미지 배열로 저장 (document 객체)
var slide = document.getElementsByClassName("myslide"); //베열변수(이미지)

for(i=0; i<slide.length; i++){
    slide[i].style.display ="none";
    }
    
//번호가 1~3 사이가 아닌 경우 처리 필요
//추가코드
if(n>3){
    slideIndex=1;
}
if(n<1){
    slideIndex=slide.length;
}

n=slideIndex;
slide[slideIndex-1].style.display="block";
}

slideIndex = 1;  //시작슬라이드 번호  //1,2,3 슬라이드번호
 //1번만 보여줘라

showslide(slideIndex);

//숫자가 증가하는 함수
function plusslide(i){ //i 는 1 또는 -1
    slideIndex += i; //슬라이드 번호 증가 또는 감소
    showslide(slideIndex); //슬라이드 보이기
}