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
												<i class="icon-list-unordered"></i>Add Customer
											</h5></td>
										<td width="40%" align="right"><%-- <a
											href="${pageContext.request.contextPath}/getPage/2"
											class="breadcrumb-elements-item">
												<button type="button" class="btn btn-primary">2
													Column Page</button>
										</a> <a href="${pageContext.request.contextPath}/getPage/1"
											class="breadcrumb-elements-item">
												<button type="button" class="btn btn-primary">1
													Column Page</button>
										</a> <a
											href="${pageContext.request.contextPath}/showAllControlPage"
											class="breadcrumb-elements-item">
												<button type="button" class="btn btn-primary">All
													Control Page</button>
										</a> --%></td>
									</tr>
								</table>
							</div>
							<div class="card-body">
								<%-- <%
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
 --%>
 
 <jsp:include page="/WEB-INF/views/include/response_msg.jsp"></jsp:include>
								<form
									action="${pageContext.request.contextPath}/submitCustAddForm"
									id="submitInsert" method="post">
									<input type="hidden" value="${cust.custId}" id="custId"
										name="custId">
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="cust_name">Customer Name <span
											class="text-danger">* </span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control alphaAndDotonly maxlength-badge-position"
												value="${cust.custName}" placeholder="Enter Customer Name"
												id="cust_name" name="cust_name" autocomplete="off"
												onchange="trim(this)" maxlength="60"> <span
												class="validation-invalid-label" id="error_custName"
												style="display: none;">This field is required.</span>
										</div>
										<label class="col-form-label text-info col-lg-2 float"
											for="cust_mob">Customer Mobile <span
											class="text-danger">*</span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control numbersOnly maxlength-badge-position"
												value="${cust.custMob}"
												placeholder="Enter 10 digit mobile no" id="cust_mob"
												maxlength="10" name="cust_mob" autocomplete="off"
												onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_mob"
												style="display: none;">This field is required.</span>
										</div>
									</div>
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="cred_days">Credit Days <span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control maxlength-badge-position numbersOnly"
												value="${cust.creditDays}" placeholder="Enter Credit Days"
												id="cred_days" maxlength="3" name="cred_days"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_credDays"
												style="display: none;">This field is required. </span>
										</div>
										<label class="col-form-label  font-weight-bold col-lg-2 float"
											for="cust_remark">Remark </label>
										<div class="col-lg-4 float">
											<textarea class="form-control maxlength-badge-position"
												placeholder="Enter Customer Remark" id="cust_remark"
												name="cust_remark" autocomplete="off" maxlength="50"
												onchange="trim(this)">${cust.exVar1}</textarea>

										</div>
									</div>


									<div class="form-group row mb-0">
										<div style="margin: 0 auto;">

											<button type="submit" data-popup="tooltip" data-original-title="Save Form"	 class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>


											<%-- <a href="${pageContext.request.contextPath}/showBankList"><button
													type="button" class="btn btn-light">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>
													Back
												</button></a> --%>
										</div>
									</div>
							


							<p class="desc text-danger fontsize11">Note : * Fields are
								mandatory.</p>

							<table class="table datatable-fixed-left_custom table-bordered  table-hover   table-striped" width="100%">
								<thead>
									<tr>
										<th>Sr No</th>
										<th>Customer Name</th>
										<th>Mobile</th>
										<th>Credit Days</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${custList}" varStatus="count" var="custBean">
									<tr>
									<td>${count.index+1}</td>
									<td>${custBean.custName}</td>
									<td>${custBean.custMob}</td>
									<td>${custBean.creditDays}</td>
									<td>${custBean.isActive}</td>
									
									<td class="text-center">
									<c:if test="${editAccess == 0}">
									<!-- This is Access Rights check  -->
									<!-- Show Edit button by checking this condition by here only  Sachin 10-07-2020 -->
									</c:if>
									
									<c:if test="${deleteAccess == 0}">
									<!-- This is Access Rights check  -->
									<!-- Show Delete button by checking this condition by here only  Sachin 10-07-2020 -->
									</c:if>
												<a
													href="${pageContext.request.contextPath}/showEditCustomerPage?custId=${custBean.custId}"
													class="list-icons-item text-primary-600" data-popup="tooltip" title="" data-original-title="Edit"><i class="icon-pencil7"
													 ></i></a>
										
											<a href="javascript:void(0)"
													class="list-icons-item text-danger-600 bootbox_custom"
													data-uuid="${custBean.custId}" data-popup="tooltip"
													title="" data-original-title="Delete"><i
													class="icon-trash"></i></a>
											</td>
									
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
// Overlay callback
$("#data_view_button")
.click(
		function() {
			//blockThis();
			
			$.getJSON('${getSingleCategory}', {
				ajax : 'true',
			}, function(data) {
				//document.getElementById("g_name").innerHTML=" Category Name:" +data.catName;
				//document.getElementById("ifsc_code").innerHTML=" Bank Name: Bank of India";
				document.getElementById("mod_title").innerHTML="Appending Ajax Return Data ";
				document.getElementById("f_name").value=data.catName;
				document.getElementById("l_name").value="Thakur";	
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
												
												if (!$("#cust_mob").val() || 
														!validateMobile($("#cust_mob") .val())) {
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
														document.getElementById("submtbtn").disabled = true;
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
		$('input[name="dob"]').on('apply.daterangepicker',
				function(ev, picker) {
					$(this).val(picker.startDate.format('DD-MM-YYYY'));
				});

		$('input[name="dob"]').on('cancel.daterangepicker',
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
	            alwaysShow: true,
	            placement: 'top'
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
				paging : true,
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
									bootbox.confirm({
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