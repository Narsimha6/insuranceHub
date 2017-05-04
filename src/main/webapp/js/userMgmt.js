(function($){

$(document).ready(function() {
    //code for admin dashboard
	$('#userTable').DataTable( {
		paging:true,
		bInfo: true,
		
		 "bFilter" : true,
         "dom": '<"top"iflp<"clear">>rt',
		ordering:true,
		'order':[1,'asc'],
		'bAutoWidth':false,
		//"responsive": true,
		//"sScrollX": "100%",
		"columnDefs": [ 
		{
				"targets" : 0,
				"sTitle" : "<input type='checkbox' name='auto_select_all'></input>",
				'orderable' : false,
				"width" : "20px",
				"defaultContent" : "<input id='txtNoResiUnits' type='checkbox' value='' />"
			},
			{
				"targets" : 1,
				"defaultContent" : "",
				"width" : "80px"
			},
			{
				"targets" : 2,
				"defaultContent" : "",
				"width" : "120px"
			},
			{
				"targets" : 3,
				"defaultContent" : "",
				"width" : "166px"
			},
			{
				"targets" : 4,
				"defaultContent": "<select id='ddlAppId' class='table-cell-input'></select>",
				"width" : "102px"
			},
			{
				"targets" : 5,
				 "defaultContent": "<select id='ddlActive' class='table-cell-input'><option value='1'>Yes</option><option value='0'>No</option></select>",
				 "width" : "62px"
			},
			{
				"targets" : 6,
				"defaultContent" : "",
				"width" : "120px"
			},
			{
				"targets" : 7,
				"defaultContent" : "",
				"width" : "120px"
			},
			{
				"targets" : 8,
				"defaultContent" : "",
				"width" : "50px"
			},
			{
				"targets" : 9,
				"defaultContent" : "",
				"width" : "90px"
			},
			{
				"targets" : 10,
				'orderable' : false,
				"defaultContent": "<i id='btnAutoSubmitRow' class='fa fa-save submit-control hide-class' title='Save'></i><i id='btnAutoEditRow' class='fa fa-edit edit-control' title='Edit'></i>",
				"width" : "40px"
			}]
    } );
	
	//$(".dataTables_empty").attr('colspan','13');
	$(".dataTables_empty").addClass('empty-row');
	$("#userTable thead").on('click','th',function() {
		$(".dataTables_empty").addClass('empty-row');
	} );
	
	//hideNextAutoPrevious();
	
	function hideNextAutoPrevious()
	{
		if($("#userTable").DataTable().data().length == 0)
		{
			$('.dataTables_paginate').addClass('hide-class');
		}
	}
	
	if(userDetailsList != null)
	{
		var table = $("#userTable").DataTable();
		for(var index = 0; index < userDetailsList.length; index++)
		{
			var rowData = userDetailsList[index];
			if(rowData.userId != "None")
			{
				var isActive='';
				if(rowData.enabled == '1')
				{
					isActive = 'Yes';
				}
				else
				{
					isActive = 'No';
				}
				var appId = "";
				if(rowData.consumerGroup != null)
				{
					appId = rowData.consumerGroup;
				}
				table.row.add([null, rowData.userId, rowData.username, rowData.emailId, appId, isActive, rowData.firstLogin, rowData.lastLogin, rowData.role, "<input id='txtPwd' type='password' class='table-cell-input' disabled value='" + rowData.password + "'/>", null]);
			}
		}
		table.draw();
	}
	
	$('#userTable tbody').on('click', '#btnAutoSubmitRow', function(){
		 var tr = $(this).closest('tr');
		 var row = $('#userTable').DataTable().row( tr );
		 var userId = row.data()[1];
		 var fullName = row.data()[2];
		 var email = row.data()[3];
		 var applicationId = "";
		 if($(tr).find('#ddlAppId').length > 0)
		 {
			 applicationId = $(tr).find('#ddlAppId option:selected').text();
		 }
		 else
		 {
			 applicationId = row.data()[4];
		 }
		
		 var firstLogin = row.data()[6];
		 var lastLogin = row.data()[7];
		 var role = row.data()[8];
		 var password = $(tr).find("#txtPwd").val();
		 var isActive = $(tr).find('#ddlActive option:selected').text();
		 var isActiveVal = $(tr).find('#ddlActive').val();
		 $(tr).find('#ddlActive').remove();
		 isEditClicked = false;
		 row.data([null, userId, fullName, email, applicationId, isActive, firstLogin, lastLogin, role, "<input id='txtPwd' type='password' class='table-cell-input' disabled value='" + password + "'/>"]).draw(false);
		/* showLoader();*/
		 $.ajax({
				type : 'POST',
				url : './editUserProfile?userId=' + userId + '&isActive=' + isActiveVal + '&password=' + password + '&appId=' + applicationId,
				cache : false,
				success : function(response) {
					hideLoader();
					$(tr).find('#btnAutoSubmitRow').addClass('hide-class');
					$(tr).find('#btnAutoEditRow').removeClass('hide-class');
					$("#lblMsg").removeClass('hide-class');
					$(".edit-control").prop('disabled',false);
					 $(".edit-control").removeClass('btn-disabled');
				},
				error:function(response){
				}
			});
		 
		  
	});
	
	var isEditClicked = false;
	$('#userTable tbody').on('click', '#btnAutoEditRow', function(){
		isEditClicked = true;
		 $("#lblMsg").addClass('hide-class');
		 $(".edit-control").prop('disabled',true);
		 $(".edit-control").addClass('btn-disabled');
		 var tr = $(this).closest('tr');
		 var row = $('#userTable').DataTable().row( tr );
		 var userId = row.data()[1];
		 $("#txtUserName").text("'"+ userId +"'");
		 var fullName = row.data()[2];
		 var email = row.data()[3];
		 var applicationId = row.data()[4];
		 var isActive = row.data()[5];
		 var firstLogin = row.data()[6];
		 var lastLogin = row.data()[7];
		 var role = row.data()[8];
		 var password = $(tr).find("#txtPwd").val();
		 if(userId != "demo" && userId != "demoAdmin")
		 {
			 row.data([null, userId, fullName, email, null, null, firstLogin, lastLogin, role, "<input id='txtPwd' type='password' class='table-cell-input' disabled value='" + password + "'/>"]).draw(false);
			 fillApplicationList(tr); 
			 $(tr).find('#ddlAppId option:contains("'+ applicationId +'")').prop('selected',true);
		 }
		 else
		 {
			 row.data([null, userId, fullName, email, applicationId, null, firstLogin, lastLogin, role, "<input id='txtPwd' type='text' class='table-cell-input' value='" + password + "'/>"]).draw(false);
		 }
		 
		 $(tr).find('#ddlActive option:contains("'+ isActive +'")').prop('selected',true);
		 $(tr).find('#btnAutoEditRow').addClass('hide-class');
		 $(tr).find('#btnAutoSubmitRow').removeClass('hide-class');
		 
	});
	
	function fillApplicationList(tr)
	{
		$('#userTable tbody').find(tr).find('#ddlAppId').append($('<option>').text("--Select--").attr('value', null));
		$('#userTable tbody').find(tr).find('#ddlAppId').append($('<option>').text("ATS").attr('value', "ATS"));
		$.each(applicationIdList, function(index, valueProp) {
			 $('#userTable tbody').find(tr).find('#ddlAppId').append($('<option>').text(valueProp.consumerGroupName).attr('value', valueProp.consumerGroupId));
		});
	}
	
	hideLoader();
	function showLoader() {
		$(".loaderDiv").css('display', 'block');
		$(".loaderDiv").width($('html').width() + 'px');
		$(".loaderDiv").height($('html').height() + 'px');
		$(".loaderDiv").faLoading();
	}
	function hideLoader() {
		$(".loaderDiv").faLoading(false);
		$(".loaderDiv").css('display', 'none');
	}
	
	$('#userTable tbody tr td').each( function() {
	    this.setAttribute( 'title', $(this).text());
	});
	
	$('#userTable').on('draw.dt', function() {
		hideNextAutoPrevious();
		$('#userTable tbody tr td').each( function() {
		    this.setAttribute( 'title', $(this).text());
		});
		if(isEditClicked == true)
		{
			$(".edit-control").prop('disabled',true);
			 $(".edit-control").addClass('btn-disabled');
		}
		else
		{
			$(".edit-control").prop('disabled',false);
			 $(".edit-control").removeClass('btn-disabled');
		}
		
		//$(".dataTables_scrollHeadInner").css({"width":"100%"});

		//$(".table ").css({"width":"100%"});
	});
	
	$('#userTable tbody').on(
			'click',
			'input[type="checkbox"]',
			function(e) {
				// Update state of "Select all" control
				updateDataTableSelectAllCtrl($(
						'#autoSearchTable').DataTable());

				// Prevent click event from propagating to
				// parent
				e.stopPropagation();
			});

	function updateDataTableSelectAllCtrl(table) {
		var $table = table.table().node();
		var $chkbox_all = $('tbody input[type="checkbox"]',
				$table);
		var $chkbox_checked = $(
				'tbody input[type="checkbox"]:checked', $table);
		var chkbox_select_all = $(
				'thead input[name="auto_select_all"]', $table)
				.get(0);

		// If none of the checkboxes are checked
		if ($chkbox_checked.length === 0) {
			chkbox_select_all.checked = false;
			if ('indeterminate' in chkbox_select_all) {
				chkbox_select_all.indeterminate = false;
			}

			// If all of the checkboxes are checked
		} else if ($chkbox_checked.length === $chkbox_all.length) {
			chkbox_select_all.checked = true;
			if ('indeterminate' in chkbox_select_all) {
				chkbox_select_all.indeterminate = false;
			}

			// If some of the checkboxes are checked
		} else {
			
			chkbox_select_all.checked = true;
			if ('indeterminate' in chkbox_select_all) {
				chkbox_select_all.indeterminate = true;
			}
		}
	}

	// Handle click on table cells with checkboxes
	$('#userTable').on(
			'click',
			'tbody td:first-child, thead th:first-child',
			function(e) {

				$(this).parent().find('input[type="checkbox"]')
						.trigger('click');
			});

	// Handle click on "Select all" control
	$(
			'#userTable thead input[name="auto_select_all"]',
			$('#userTable').DataTable().table()
					.container())
			.on(
					'click',
					function(e) {
						if (this.checked) {
							$(
									'#userTable tbody input[type="checkbox"]:not(:checked)')
									.trigger('click');
						} else {
							$(
									'#userTable tbody input[type="checkbox"]:checked')
									.trigger('click');
						}

						// Prevent click event from propagating
						// to parent
						e.stopPropagation();
					});
} );
})(jQuery);