
<!-- Begin
// Set slideShowSpeed (milliseconds)
var slideShowSpeed =4000;
// Duration of crossfade (seconds)
var crossFadeDuration =3;
// Specify the image files
var Pic = new Array();
// to add more images, just continue
// the pattern, adding to the array below

Pic[0] = 'images/slide1.jpg'
Pic[1] = 'images/slide2.jpg'
Pic[2] = 'images/slide3.jpg'
Pic[3] = 'images/slide4.jpg'
Pic[4] = 'images/slide5.jpg'
Pic[5] = 'images/slide6.jpg'
Pic[6] = 'images/slide7.jpg'
Pic[7] = 'images/slide8.jpg'
Pic[8] = 'images/slide9.jpg'

// do not edit anything below this line
var t;
var j = 0;
var p = Pic.length;
var preLoad = new Array();
for (i = 0; i < p; i++) {
preLoad[i] = new Image();
preLoad[i].src = Pic[i];
}
function runSlideShow1() {
if (document.all) {
document.images.SlideShow1.style.filter="blendTrans(duration=2)";
document.images.SlideShow1.style.filter="blendTrans(duration=crossFadeDuration)";
document.images.SlideShow1.filters.blendTrans.Apply();
}
document.images.SlideShow1.src = preLoad[j].src;
if (document.all) {
document.images.SlideShow1.filters.blendTrans.Play();
}
j = j + 1;
if (j > (p - 1)) j = 0;
t = setTimeout('runSlideShow1()', slideShowSpeed);
}
// 