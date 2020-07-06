<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
</head>


<body>
	<c:url value="/getCatList" var="getCatList"></c:url>
	<!-- Main navbar -->
	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<!-- /main navbar -->


	<!-- Page content -->
	<div class="page-content">

		<!-- Main sidebar -->
		<jsp:include page="/WEB-INF/views/include/left.jsp"></jsp:include>
		<!-- /main sidebar -->


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light"></div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">


				<!-- Highlighting rows and columns -->
				<div class="card">


					<div class="card-header header-elements-inline">
						<table width="100%">
							<tr width="100%">
								<td width="60%"><h5 class="pageTitle">
										<i class="icon-list-unordered"></i> Employee Designation
										Assignment
									</h5></td>
								<td width="40%" align="right"></td>
							</tr>
						</table>
					</div>

					<div class="card-body">

						<%
							if (session.getAttribute("errorMsg") != null) {
						%>
						<div
							class="alert bg-danger text-white alert-styled-left alert-dismissible">
							<button type="button" class="close" data-dismiss="alert">
								<span>×</span>
							</button>
							<span class="font-weight-semibold">Oh snap!</span>
							<%
								out.println(session.getAttribute("errorMsg"));
							%>
						</div>

						<%
							session.removeAttribute("errorMsg");
							}
						%>
						<%
							if (session.getAttribute("successMsg") != null) {
						%>
						<div
							class="alert bg-success text-white alert-styled-left alert-dismissible">
							<button type="button" class="close" data-dismiss="alert">
								<span>×</span>
							</button>
							<span class="font-weight-semibold">Well done!</span>
							<%
								out.println(session.getAttribute("successMsg"));
							%>
						</div>
						<%
							session.removeAttribute("successMsg");
							}
						%>
						<form
							action="${pageContext.request.contextPath}/submitAssignDesnToEmp"
							id="submitInsertEmp" method="post">

							<div class="form-group row">

								<label
									class="col-form-label text-info font-weight-bold col-lg-2"
									for="desigId"> Designation <span class="text-danger">*</span>:
								</label>
								<div class="col-lg-4">
									<select name="desigId" data-placeholder="Select Designation"
										id="desigId"
										class="form-control form-control-select2 select2-hidden-accessible">
										<option value="">Select Designation</option>
										<c:forEach items="${designationList}" var="designationList">

											<option value="${designationList.desigId}">${designationList.name}
												[${designationList.nameSd}]</option>

										</c:forEach>
									</select> <span class="hidedefault   validation-invalid-label"
										style="display: none;" id="error_desigId">This field is
										required.</span>
								</div>
							</div>

							<div class="table-responsive">
								<!-- <table
									class="table  table-bordered table-hover datatable-highlight  "
									id="printtable1"> -->

								<table
									class="table datatable-fixed-left_custom table-bordered  table-hover   table-striped"
									width="100%" id="abcd">

									<thead>
										<tr class="bg-blue">

											<th width="10%">Sr.no</th>
											<th>Category Name</th>
											<th>Remark</th>
											<th>Return Notif Days</th>
											<th>AMC Notif Days</th>
											<th>Serv Notif Days</th>
										</tr>
									</thead>
								</table>
							</div>
							<br /> <span class="validation-invalid-label" id="error_chk"
								style="display: none;">Please Select the Employee.</span>


							<div style="text-align: center;">
								<input type="button" onclick="getData()" class="btn blue_btn"
									value="Assign" id="deleteId"
									style="align-content: center; width: 113px; margin-left: 40px;">
							</div>
						</form>

					</div>

				</div>
				<!-- /highlighting rows and columns -->

			</div>
			<!-- /content area -->


			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			<script
				src="${pageContext.request.contextPath}/resources/assets/js/scrolltable.js"></script>

			<!-- /footer -->

		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->

	<script>
		$(document).ready(function() { // When the HTML DOM is ready loading, then execute the following function...
			$('#deleteId').click(function() { // Locate HTML DOM element with ID "somebutton" and assign the following function to its "click" event...
				var bodyContent = $.ajax({
					url : "getCatList",
					global : false,
					type : "GET",
					// data : "name=value",
					dataType : "json",
					async : false,
					columns : [ {
						"data" : "assetCatId"
					}, {
						"data" : "catName"
					}, {
						"data" : "catRemark"
					}, {
						"data" : "returnNotifctnDays"
					}, {
						"data" : "amcNotifctnDays"
					}, {
						"data" : "serviceNotifctnDays"
					}, ],

					success : function() {
						console.log("ok");
						alert("ok111");
					}
				}).responseText;
				alert(bodyContent);
				var x = JSON.parse(bodyContent)
				$('#abcd').dataTable().fnAddData(x);
				$('#abcd').ajax.reload();
				/*    $('#printtable1').dataTable( {
				       "data": bodyContent
				   }); */
			});
		});
	</script>

	<script type="text/javascript">
		var table;
		$(document)
				.ready(
						function() {

							//datatables
							var exportString = [/*'copy','excel','csv','pdf','print'*/];
        table = $('#abcd').DataTable({
												// "responsive": true,
												"bSort" : false,
												
												"processing" : true, //Feature control the processing indicator.
												"serverSide" : true, //Feature control DataTables' server-side processing mode.
												"order" : [], //Initial no order.
												//Set column definition initialisation properties.
												"columnDefs" : [ {
													"targets" : [ 0 ], //first column / numbering column
													"orderable" : false, //set not orderable
												}, ],
											});

							
        table.fnDraw();


						});
	</script>


	<!-- <script type="text/javascript">
$(document).ready(function() {
    $('#printtable1').DataTable( {
        "ajax": {
            "url": "getCatList",
            "dataSrc": ""
        },
        "columns": [
    	    { "data": "catId" },
    	    { "data": "catName" },
    	    { "data": "catRemark" },
    	    { "data": "returnNotifctnDays" },
    	    { "data": "amcNotifctnDays" },
    	    {"data": "serviceNotifctnDays"},
    	  ]
    } );
} );
</script> -->
	<script>
		function getData11() {
			$.getJSON('${getCatList}', {
				ajax : 'true',

			}, function(data) {

				var dataTable = $('#printtable1').DataTable();
				dataTable.clear().draw();
				$.each(data, function(i, v) {

					/* 	var acButton = '<a href="${pageContext.request.contextPath}/editAssetServicing?encodeServicingId='
							+ v.exVar1
							+ '" class="list-icons-item text-primary-600" data-popup="tooltip" title="" data-original-title="Edit"><i class="icon-pencil7"></i></a>'
							+'&nbsp; &nbsp;<a href="javascript:void(0)" onClick=\'bootbox_ban("'+v.exVar1+'")\' class="list-icons-item text-danger-600 bootbox_custom bootbox_custom1" data-uuid="'+v.exVar1+'" data-popup="tooltip" title=""' 
							+'data-original-title="Terminate"><i class="icon-trash"></i></a>'; */
					dataTable.row.add(
							[ i + 1, v.catName, v.catRemark,
									v.returnNotifctnDays, v.amcNotifctnDays,
									v.serviceNotifctnDays, i + 1, v.catName,
									v.catRemark, v.returnNotifctnDays,
									v.amcNotifctnDays, v.serviceNotifctnDays ])
							.draw();
				});

			});
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function($) {
			$("#submitInsertEmp").submit(function(e) {

				var table = $('#printtable1').DataTable();
				table.search("").draw();

				var isError = false;
				var errMsg = "";
				var desigId = $("#desigId").val();

				var checked = $("#submitInsertEmp input:checked").length > 0;
				if (!checked) {
					$("#error_chk").show()
					isError = true;
				} else {
					$("#error_chk").hide()
					isError = false;
				}
				//alert("checked" +checked);
				if (desigId == null || desigId == "") {
					isError = true;
					$("#error_desigId").show()
				} else {
					$("#error_desigId").hide()
				}

				if (!isError) {

					var x = true;
					if (x == true) {

						document.getElementById("deleteId").disabled = true;

						return true;
					}
					//end ajax send this to php page
				}
				return false;
			});
		});
	</script>

	<script type="text/javascript">
		/* $(document).ready(
				function() {
					//	$('#printtable').DataTable();

					$("#selAll").click(
							function() {
								$('#printtable1 tbody input[type="checkbox"]')
										.prop('checked', this.checked);
							});
				}); */
	</script>

</body>
</html>