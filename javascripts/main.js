$(function () {
	console.log('This would be the main JS file.');
	$('.link').click(function(){
	  var bla = '#lesson_' + $(this).attr('data-index');
	  $('.lesson').fadeOut(300);
	  $('#lesson_' + $(this).attr('data-index') ).fadeIn(400);
	});
});
