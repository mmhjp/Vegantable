// 왼쪽 버튼 이미지 클릭 시 동작 how
window.addEventListener("load", ()=>{
    var leftBtn = document.querySelector(".leftbtn");
    var arrImg = ['images/연두부샐러드.png', 'images/2.png', 'images/3.png'];
    var cntleft = 1;
    leftBtn.onclick = function() {
        var mainImg = document.querySelector("#main_image");
        if(cntleft >= arrImg.length){
            cntleft = 0;
        }
        cntleft++;
        mainImg.style.backgroundImage = "url(" + arrImg[cntleft-1] + ")";
        /* element css 속성 변경하는 법 object.style.attribute
         원래 css 파일에선 background-image 라고 작성하지만,
         javascript에선 하이픈(-) 권장하지 않기 때문에 대문자로 대체ㅣ
        */
    }
    
});
// 오른 쪽 버튼 이미지 클릭 시 동작 how
window.addEventListener("load", ()=>{
    var rightBtn = document.querySelector(".rightbtn");
    var arrImg = ['images/연두부샐러드.png', 'images/2.png', 'images/3.png'];
    var cntright = arrImg.length;
    rightBtn.onclick = function() {
        var mainImg = document.querySelector("#main_image");
        cntright--;
        if(cntright < 0){
            cntright = arrImg.length-1;
        }
        mainImg.style.backgroundImage = "url(" + arrImg[cntright] + ")";
    }
});
