<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Display month &amp; year menus</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1972:2002',
			dateFormat : 'mm/dd/yy',
			endDate : '-18y',
			maxDate : 0
		});
	});

	function disableSunday(d) {
		var day = d.getDay();
		if (day == 0) {
			return [ false ];
		} else {
			return [ true ];
		}
	}

	$(function() {
		$("#udate5").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '0:+2',
			dateFormat : 'dd/mm/yy',

			// Disable for Sunday
			beforeShowDay : disableSunday,
			// Disable for back date
			minDate : 0
		});
	});

	$(function() {
		$("#datepicker2").datepicker({
			dateFormat : 'mm/dd/yy',
			//defaultDate : "06/06/2001",
			changeMonth : true,
			changeYear : true,
			//yearRange: "c-20:c+0",
			//yearRange : "1980:2025",
			maxDate : '31/12/2003',
			// minDate:0
			yearRange : "-40:-18"
		});
	});

	$(function() {
		$("#datepicker3").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '2015:2024',
		});
	});
</script>
</head>
<body>

	<!-- <p>Date: <input type="text" id="datepicker"></p> -->


</body>
</html>