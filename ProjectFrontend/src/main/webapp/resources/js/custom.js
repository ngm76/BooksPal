/*$(document).ready(function() {
  $('[data-toggle=offcanvas]').click(function() {
preventDefault();    
	  $('.row-offcanvas').toggleClass('toggled');
  });
});*/

$(document).ready(function() {
	$('#sidebarCollapse').on('click', function() {
		$('#sidebar').toggleClass('active');
	});
});



