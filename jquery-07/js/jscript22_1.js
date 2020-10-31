


function showslide(n){
slide = document.getElementsByClassName("mySlide");

for(i=0; i<slide.length; i++){
    slide[i].style.display="none"; 
    }
if(n>slide.length) indexSlide = 1;
if(n<1) indexSlide = slide.length;
slide[indexSlide-1].style.display="block"; 
}

//////////////////////////////////////////////////

indexSlide = 1;
showslide(indexSlide);

/////////////////////////////////////////////////

function plusslide(n){
    temp = indexSlide+=n;
    showslide(temp);
    }

