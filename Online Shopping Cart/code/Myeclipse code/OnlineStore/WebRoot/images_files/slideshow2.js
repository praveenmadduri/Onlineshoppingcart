
<!-- Begin
// Set slideShowSpeed (milliseconds)
var slideShowSpeed =4000;
// Duration of crossfade (seconds)
var crossFadeDuration =3;
// Specify the image files
var Pic2 = new Array();
// to add more images, just continue
// the pattern, adding to the array below
Pic2[0] = 'images/photo1.jpg'
Pic2[1] = 'images/photo2.jpg'
Pic2[2] = 'images/photo3.jpg'
Pic2[3] = 'images/photo4.jpg'
Pic2[4]  =  'images/photo5.jpg'
Pic2[5]  =  'images/photo6.jpg'
Pic2[6] = 'images/photo7.jpg'
Pic2[7] = 'images/photo8.jpg'
Pic2[8] = 'images/photo9.jpg'

// do not edit anything below this line
var t2;
var j2 = 0;
var p2 = Pic2.length;
var preLoad2 = new Array();
for (i2 = 0; i2 < p2; i2++) {
preLoad2[i2] = new Image();
preLoad2[i2].src = Pic2[i2];
}
function runSlideShow2() {
if (document.all) {
document.images.SlideShow2.style.filter="blendTrans(duration=2)";
document.images.SlideShow2.style.filter="blendTrans(duration=crossFadeDuration)";
document.images.SlideShow2.filters.blendTrans.Apply();
}
document.images.SlideShow2.src = preLoad2[j2].src;
if (document.all) {
document.images.SlideShow2.filters.blendTrans.Play();
}
j2 = j2+ 1;
if (j2 > (p2 - 1)) j2 = 0;
t = setTimeout('runSlideShow2()', slideShowSpeed);
}
// 