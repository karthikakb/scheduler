$(document).on('turbolinks:load', function () {
		console.log("*******************")
 $('#usermeeting_dateandtime').datetimepicker({
   locale: 'en',
   sideBySide: true,
   format: "DD-MM-YYYY h:mm A"
  });
}); 