
function getSubTypes(value) {
	alert(value);
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "${context}/getSubType",
		data: { value: value },
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
			console.log("SUCCESS: ", data);
			display(data);
		},
		error : function(e) {
			console.log("ERROR: ", e);
			display(e);
		},
		done : function(e) {
			console.log("DONE");
		}
	});
}
