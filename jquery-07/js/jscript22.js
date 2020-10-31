//배열변수


function showslide(n){ //번호를 입력하면 해당 이미지를 보여주는 함수
slide = document.getElementsByClassName("mySlide");  //입력한 클래스 네임 보이기
//slide[2].style.display="none"; //슬라이드2 이미지 숨김 확인
for(i=0; i<slide.length; i++){
    slide[i].style.display="none";  // 0 1 2 모두삭제
}
//n값이 1~3일때만 보이도록
//n값이 3보다 크면 indexSlide = 1;
if(n>slide.length) indexSlide = 1;

//n값이 1보다 작으면 indexSlide = slide.length;
if(n<1) indexSlide = slide.length;
//(슬라이드가 3개이기 때문에 3말고 slide.length 사용)


//현재 슬라이드 번호의 이미지 보이기
slide[indexSlide-1].style.display="block"; //슬라이드 0번 블록으로 보이기
}

indexSlide = 1; //실제 이미지의 순서 번호
showslide(indexSlide);

function plusslide(n){
    temp = indexSlide+=n;
    showslide(temp);
}

