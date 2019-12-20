import '../scss/home.scss';
import { TweenMax, CSSPlugin, EasePack, TimelineMax , gsap } from 'gsap';
import ScrollMagic from 'scrollmagic';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators';
import Swiper from 'swiper';
import 'swiper/css/swiper.min.css';


$('.modalOpen').on('click',function(){
	let $this = $(this);
	let href = $this.attr('href');
	$(href).addClass('active');
});
$('.mymodal_close').on('click',function(){	
	$('.mymodal').removeClass('active');
});

var mySwiperInit = new Swiper('.banner_home .swiper-container', {
    speed: 400,
    pagination: {
        el: '.banner_home .swiper-pagination',
        clickable: true
    },
    autoplay: 2500,
    slidesPerView: 1
});

var mySwiperInit = new Swiper('.carousel-casos .swiper-container', {
    speed: 400,
    navigation: true,
    autoplay: 2500,
    slidesPerView: 3
});