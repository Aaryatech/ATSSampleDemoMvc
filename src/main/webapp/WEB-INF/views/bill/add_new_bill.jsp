<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.daterangepicker {
	width: 100%;
}

.daterangepicker.show-calendar .calendar {
	display: inline--block;
}

.daterangepicker .calendar, .daterangepicker .ranges {
	float: right;
}
</style>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
</head>

<body>
	<c:url value="/getSingleCategory" var="getSingleCategory"></c:url>

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

				<!-- Form validation -->
				<div class="row">
					<div class="col-md-12">

						<div class="card">

							<div class="card-header header-elements-inline">
								<table width="100%">
									<tr width="100%">
										<td width="60%"><h5 class="pageTitle">
												<i class="icon-list-unordered"></i>Add Bill
											</h5></td>
										<td width="40%" align="right">
										</td>
									</tr>
								</table>
							</div>
							<div class="card-body">
								<jsp:include page="/WEB-INF/views/include/response_msg.jsp"></jsp:include>
								<form
									action="${pageContext.request.contextPath}/submitCustAddForm"
									id="submitInsert" method="post">
									<input type="hidden" value="${cust.custId}" id="custId"
										name="custId">
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="cust_id">Customer Name <span
											class="text-danger">* </span>:
										</label>
										<div class="col-lg-4 float">
											<select name="cust_id" data-placeholder="Select Customer"
												id="cust_id"
												class="form-control form-control-select2 select2-hidden-accessible">
												<c:forEach items="${custList}" var="cust"
													varStatus="count">
													<option value="${cust.custId}"
														${cust.custId == custId ? 'selected' : ''}>${cust.custName}</option>
												</c:forEach>
											</select><span class="validation-invalid-label" id="error_custName"
												style="display: none;">This field is required.</span>
										</div>
										<label class="col-form-label text-info col-lg-2 float"
											for="bill_date">Bill Date <span
											class="text-danger">*</span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control datepickerclass"
												placeholder="Enter bill date" id="bill_date"
												name="bill_date" autocomplete="off"
												onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_date"
												style="display: none;">This field is required.</span>
										</div>
									</div>
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="tot_items">Total Items<span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-2 float">
											<input type="text"
												class="form-control maxlength-badge-position numbersOnly"
												 placeholder="Enter Total Items"
												id="tot_items" maxlength="3" name="tot_items"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_tot_items"
												style="display: none;">This field is required. </span>
										</div>
										<label class="col-form-label text-info font-weight-bold col-lg-1 float"
											for="item_rate">Rate<span class="text-danger"> *
										</span>:</label>
										<div class="col-lg-1 float">
											<input type="text"
												class="form-control maxlength-badge-position numbersOnly"
												 placeholder="Enter Rate"
												id="item_rate" maxlength="4" name="item_rate"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_item_rate"
												style="display: none;">This field is required. </span>
										</div>
										
										
										<label class="col-form-label text-info font-weight-bold col-lg-1 float"
											for="item_desc">Desc<span class="text-danger"> *
										</span>:</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control maxlength-badge-position"
												 placeholder="Enter desc"
												id="item_desc" maxlength="40" name="item_desc"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_item_desc"
												style="display: none;">This field is required. </span>
										</div>
										</div>
											<div class="form-group row">
											
											
										<label class="col-form-label  font-weight-bold col-lg-2 float"
											for="item_total">Total</label>
										<div class="col-lg-2 float">
											<input type="text"
												class="form-control"
												 placeholder="Item total" readonly
												id="item_total"   name="item_total"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_item_total"
												style="display: none;">This field is required. </span>
										</div>
										
										<label class="col-form-label  font-weight-bold col-lg-2 float"
											for="item_total"><button type="button" data-popup="tooltip"
												data-original-title="Save Item"
												class="btn blue_btn" id="saveitembtn">
												Save
											</button></label>
									</div>


									<div class="form-group row mb-0">
										<div style="margin: 0 auto;">
										</div>
									</div>

									<p class="desc text-danger fontsize11">Note : * Fields are
										mandatory.</p>

								<!-- 	<table
										class="table datatable-fixed-left_custom"
										width="100%"> -->
										<table class="table datatable-fixed-left_custom" id="bill_detail_table">
										<thead>
											<tr>
												<th>Sr No</th>
												<th>Work Desc</th>
												<th>Total Item</th>
												<th>Rate</th>
												<th>Total</th>
												<th>Paid</th>
												<th>Pending</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${custList}" varStatus="count"
												var="custBean">
												<tr>
													<td>${count.index+1}</td>
													<td>${custBean.custName}</td>
													<td>${custBean.custMob}</td>
													<td>${custBean.creditDays}</td>
													<td>${custBean.isActive}</td>
													<td>${custBean.creditDays}</td>
													<td>${custBean.isActive}</td>

													<td class="text-center"><c:if
															test="${editAccess == 0}">
															<!-- This is Access Rights check  -->
															<!-- Show Edit button by checking this condition by here only  Sachin 10-07-2020 -->
														</c:if> <c:if test="${deleteAccess == 0}">
															<!-- This is Access Rights check  -->
															<!-- Show Delete button by checking this condition by here only  Sachin 10-07-2020 -->
														</c:if> <a
														href="${pageContext.request.contextPath}/showEditCustomerPage?custId=${custBean.custId}"
														class="list-icons-item text-primary-600"
														data-popup="tooltip" title="" data-original-title="Edit"><i
															class="icon-pencil7"></i></a> <a
														href="javascript:void(0)"
														class="list-icons-item text-danger-600 bootbox_custom"
														data-uuid="${custBean.custId}" data-popup="tooltip"
														title="" data-original-title="Delete"><i
															class="icon-trash"></i></a></td>

												</tr>
											</c:forEach>
										</tbody>
									</table>

								</form>
							</div>
						</div>


					</div>
				</div>

			</div>
			<!-- /content area -->


			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			<!-- /footer -->

		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->
	<script type="text/javascript">
    jsonObj = [];
	$("#saveitembtn")
	.click(
			function() {
				//alert("Ok")
				var rowCount = $("#bill_detail_table").find("tbody>tr").length;

				 // var rowCount = document.getElementById('bill_detail_table > tbody > tr').rows.length;
				var rate1=document.getElementById("item_rate").value;
				var desc1=document.getElementById("item_desc").value;
				var qty=document.getElementById("tot_items").value;
				var itemTotal=(parseInt(rate1)* parseInt(qty));
				alert(rowCount);
				item = {};	
		        
				item ["rate"] = rate1;
		        item ["desc"] = desc1;
		        item ["qty"] = qty;
		        item ["itemTotal"] = itemTotal;
		        item ["itemIndex"] = rowCount+1;
		        jsonObj.push(item);
		        
		      for(var i=0;i<jsonObj.length;i++){
		    	//alert(JSON.stringify(jsonObj[i].desc));
		      }
		    //  jsonObj.splice(2, 1)
		    alert(JSON.stringify(jsonObj));

			})
	 		// Overlay callback
		$("#data_view_button")
				.click(
						function() {
							//blockThis();

							$
									.getJSON(
											'${getSingleCategory}',
											{
												ajax : 'true',
											},
											function(data) {
												//document.getElementById("g_name").innerHTML=" Category Name:" +data.catName;
												//document.getElementById("ifsc_code").innerHTML=" Bank Name: Bank of India";
												document
														.getElementById("mod_title").innerHTML = "Appending Ajax Return Data ";
												document
														.getElementById("f_name").value = data.catName;
												document
														.getElementById("l_name").value = "Thakur";
												//unBlock();
											})
						})
	</script>
	<script>
		$(document)
				.ready(
						function($) {

							$("#submitInsert")
									.submit(
											function(e) {
												var isError = false;
												var errMsg = "";

												if (!$("#cust_name").val()) {
													isError = true;
													$("#error_custName").show()
												} else {
													$("#error_custName").hide()
												}

												if (!$("#cust_mob").val()
														|| !validateMobile($(
																"#cust_mob")
																.val())) {
													isError = true;
													$("#error_mob").show()
												} else {
													$("#error_mob").hide()
												}

												if (!$("#cred_days").val()) {
													isError = true;
													$("#error_credDays").show()
												} else {
													$("#error_credDays").hide()
												}

												if (!isError) {
													var x = true;
													if (x == true) {
														document
																.getElementById("submtbtn").disabled = true;
														return true;
													}
												}

												return false;

											});
						});
		//
		$('.datepickerclass').daterangepicker({
			"autoUpdateInput" : false,
			singleDatePicker : true,
			selectMonths : true,
			selectYears : true,
			locale : {
				format : 'DD-MM-YYYY'
			}
		});
		$('input[name="bill_date"]').on('apply.daterangepicker',
				function(ev, picker) {
					$(this).val(picker.startDate.format('DD-MM-YYYY'));
				});

		$('input[name="bill_date"]').on('cancel.daterangepicker',
				function(ev, picker) {
					$(this).val('');
				});
		//daterange-basic_new
		// Basic initialization
		$('.daterange-basic_new').daterangepicker({
			applyClass : 'bg-slate-600',

			cancelClass : 'btn-light',
			locale : {
				format : 'DD-MM-YYYY',
				separator : ' to '
			}
		});

		$('.maxlength-badge-position').maxlength({
			alwaysShow : true,
			placement : 'top'
		});

		$('.datatable-fixed-left_custom').DataTable({

			columnDefs : [ {
				orderable : false,
				targets : [ 1 ]
			}, {
				width : "10px",
				targets : [ 0 ]
			}, {
				width : "10px",
				targets : [ 1 ]
			}, {
				width : "200px",
				targets : [ 3 ]
			} ],
			//scrollX : true,
			scrollX : true,
			scrollY : '65vh',
			scrollCollapse : true,
			paging : false,
			fixedColumns : {
				leftColumns : 1,
				rightColumns : 1
			}

		});

		$(document).ready(function() {

			$('body').on('click', '#selAll', function() {
				//alert("111111");
				$('body input[type="checkbox"]').prop('checked', this.checked);
				// $(this).toggleClass('allChecked');
			})
		});

		$('.bootbox_custom')
				.on(
						'click',
						function() {
							var uuid = $(this).data("uuid")
							bootbox
									.confirm({
										//size: 'small',
										//backdrop: true, //auto close when click in background
										// locale: 'hr',
										// centerVertical: true,

										title : 'Confirm ',
										message : 'Are you sure you want to delete selected records ?',
										buttons : {
											confirm : {
												label : 'Yes',
												className : 'btn-success'
											},
											cancel : {
												label : 'Cancel',
												className : 'btn-link'
											}
										},
										callback : function(result) {
											if (result) {
												location.href = "${pageContext.request.contextPath}/deleteCustomerByCustId?custId="
														+ uuid;

											}
										}
									});
						});
	</script>


</body>
</html>