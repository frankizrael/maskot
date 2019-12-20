import '../scss/casos.scss';
import { TweenMax, CSSPlugin, EasePack, TimelineMax , gsap } from 'gsap';
import ScrollMagic from 'scrollmagic';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators';
import Swiper from 'swiper';
import 'swiper/css/swiper.min.css';

$('header').addClass('header-active2');
var mySwiperInit = new Swiper('.carousel-casos .swiper-container', {
    speed: 400,
    navigation: true,
    autoplay: 2500,
    slidesPerView: 3
});