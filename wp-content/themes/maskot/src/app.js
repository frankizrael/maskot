// Import styles
import './scss/app.scss';

// Import scripts
import { TweenMax, CSSPlugin, EasePack, TimelineMax , gsap } from 'gsap';
import ScrollMagic from 'scrollmagic';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators';

//preload dog
$(window).on('load',function(){
	TweenLite.to( $('.preload-dog .simple-dog') , 3, {css:{right:'-350px'}, delay:1});
	TweenLite.to( $('.preload-dog') , 0.3, {css:{opacity:'0'}, delay:3});
	TweenLite.to( $('.preload-dog') , 0.1, {css:{display:'none'}, delay:3.3});
});


$('.menu-mobile').on('click',function(){
	$('body').toggleClass('menu-active');
});

$(window).scroll(function(){
	let hei = $(window).scrollTop();
	if (hei > 20) {
		$('header').addClass('header-active');
	} else {
		$('header').removeClass('header-active');
	}
});

$('#menu-item-119').on('mouseenter',function(){
	$('header').addClass('header-active');
	$('.nav-ff').addClass('active');
	$('nav').addClass('active');
});

$('.nav-ff').on('click',function(){
	$('header').removeClass('header-active');
	$('.nav-ff').removeClass('active');
	$('nav').removeClass('active');
});