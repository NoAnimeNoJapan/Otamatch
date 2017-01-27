// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery
// = require jquery.turbolinks
// = require jquery_ujs
//= require twitter/bootstrap
// = require turbolinks
// = require_tree .

$(function(){
	var $button = document.querySelector('.login-btn');
	$button.addEventListener('click', function() {
	  	var duration = 0.3,
	      	delay = 0.08;
	  	TweenMax.to($button, duration, {scaleY: 1.6, ease: Expo.easeOut});
	  	TweenMax.to($button, duration, {scaleX: 1.2, scaleY: 1, ease: Back.easeOut, easeParams: [3], delay: delay});
	  	TweenMax.to($button, duration * 1.25, {scaleX: 1, scaleY: 1, ease: Back.easeOut, easeParams: [6], delay: delay * 3 });
	});
});