// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
	$("tr.link").each(function(){
		$(this).click(function(){
			window.location = $(this).find('td a.link').attr("href");
		});
	});
});

$("a#inline").fancybox({
	'hideOnContentClick': true
});

$("#iframe").fancybox({
	'width'				: '75%',
	'height'			: '75%',
	'autoScale'			: false,
	'transitionIn'		: 'none',
	'transitionOut'		: 'none',
	'type'				: 'iframe'
});
