<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<jsp:include page="/WEB-INF/views/include/metacssjs.jsp"></jsp:include>
</head>

<body>

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
						<!-- Title -->
						<!-- <div class="mb-3">
							<h6 class="mb-0 font-weight-semibold">Hidden labels</h6>
							<span class="text-muted d-block">Inputs with empty values</span>
						</div> -->
						<!-- /title -->


						<div class="card">

							<div class="card-header header-elements-inline">
								<table width="100%">
									<tr width="100%">
										<td width="60%"><h5 class="pageTitle">
												<i class="icon-list-unordered"></i> ${title}
											</h5></td>
										<td width="40%" align="right">
											<%-- <a
									href="${pageContext.request.contextPath}/showAddKra?empId=${editKra.exVar3}&finYrId=${editKra.exVar2}"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">KRA List </button>
								</a>  --%>
										</td>
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
									action="${pageContext.request.contextPath}/submitInsertBank"
									id="submitInsertLocaion" method="post">
									<input type="hidden" value="${bank.bankId}" id="bankId"
										name="bankId">
											<div class="form-group row">
											<label
												class="col-form-label text-info font-weight-bold col-lg-1 float"
												for="bank">Bank Name <span class="text-danger">*
											</span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text" class="form-control" value="${bank.name}"
													placeholder="Enter Bank Name" id="bankName" name="bankName"
													autocomplete="off" onchange="trim(this)" maxlength="100">
												<span class="validation-invalid-label" id="error_bank"
													style="display: none;">This field is required.</span>
											</div>
											<label class="col-form-label col-lg-1 float" for="micrCode">MICR
												Code <span class="text-danger"></span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text" class="form-control numbersOnly"
													value="${bank.micrCode}" placeholder="Enter MICR Code"
													id="micrCode" maxlength="9" name="micrCode"
													autocomplete="off" onchange="trim(this)"> <span
													class="validation-invalid-label" id="error_micrCode"
													style="display: none;">This field is required.</span>
											</div>
											<label
												class="col-form-label text-info font-weight-bold col-lg-1 float"
												for="ifscCode">IFSC Code <span class="text-danger">*
											</span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text" class="form-control"
													value="${bank.ifscCode}" placeholder="Enter IFSC Code"
													id="ifscCode" maxlength="11" name="ifscCode"
													autocomplete="off" onchange="trim(this)"> <span
													class="validation-invalid-label" id="error_ifscCode"
													style="display: none;">This field is required.
													Example : SBINXXXXXXX </span>
											</div>
											</div>

									<div class="form-group row">
<label
												class="col-form-label text-info font-weight-bold col-lg-1 float"
												for="address">Address <span class="text-danger">*
											</span>:
											</label>
											<div class="col-lg-3 float">
												<textarea class="form-control"
													placeholder="Enter Branch Address" id="address"
													 name="address" autocomplete="off"
													onchange="trim(this)">${bank.address}</textarea> <span
													class="validation-invalid-label" id="error_address"
													style="display: none;">This field is required.</span>

											</div>
											
											<label class="col-form-label text-info font-weight-bold col-lg-1 float"
													for="email1">Email <span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control"
														value="${company.cpEmail1}" id="email1"
														onchange="trim(this)" placeholder="Email" name="email1"
														autocomplete="off"> <span
														class="hidedefault  validation-invalid-label"
														style="display: none;" id="error_email1">This field
														is required.</span>
												</div>
												
												<label class="col-form-label font-weight-bold col-lg-1 float"
													for="mobile">Mobile No.
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control numbersOnly"
														value="${company.cpMobile}" id="mobile"
														onchange="trim(this)" placeholder="Mobile No."
														name="mobile" autocomplete="off" maxlength="10">
													<span class="hidedefault  validation-invalid-label"
														style="display: none;" id="error_mobile">This field
														is required.</span>
												</div>
									</div>

									<div class="form-group row">
									<label class="col-form-label font-weight-bold col-lg-1"
													for="isPfApplicable">Simple Select  
												</label>
												<div class="col-lg-3">
													<select name="isPfApplicable" 
														data-placeholder="Simple Select" id="isPfApplicable"
														class="form-control form-control-select21 select2-hidden-accessible1">

														<option value="2"
															${company.isPfApplicable==2 ? 'selected' : ''}>Please
															Select</option>
														<option value="1"
															${company.isPfApplicable==1 ? 'selected' : ''}>Yes</option>
														<option value="0"
															${company.isPfApplicable==0 ? 'selected' : ''}>No</option>
													</select> <span class="hidedefault  validation-invalid-label"
														style="display: none;" id="error_isPfApplicable">This
														field is required.</span>

												</div>
												
													<label class="col-form-label text-info font-weight-bold col-lg-1"
													for="empType">Medium Select<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<select name="empType"
														data-placeholder="Select Medium" id="empType"
														class="form-control form-control-select2 select2-hidden-accessible">
														<option value="">Select Employee Type</option>
														<option value="1" ${emp.empType==1 ? selected : ''}>Yearly
															</option>
														<option value="2" ${emp.empType==2 ? selected : ''}>Monthly
															</option>
														<option value="3" ${emp.empType==3 ? selected : ''}>Other</option>
													</select> <span class="hidedefault   validation-invalid-label"
														style="display: none;" id="error_empType">This
														field is required.</span>
												</div>
									<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="locId_list"> MultiSelect<span
													class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<select name="locId_list"
														data-placeholder="Select Location" id="locId_list"
														multiple="multiple"
														class="form-control form-control-sm select"
														data-container-css-class="select-sm" data-fouc>
														
														<option value="1">JAVA</option>
														<option selected value="2">PYTHON</option>
														<option value="3">GO</option>
														<option value="4">ERLANG</option>
														<option value="5">RUBY</option>
														<option value="6">HTML</option>
														
													</select> <span class="hidedefault  validation-invalid-label"
														style="display: none;" id="error_locId_list">This
														field is required.</span>
												</div>
										
									</div>

									<div class="form-group row">
										
										<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="dob">Select Date<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control datepickerclass"
														placeholder="Date" id="dob" name="dob"
														value="${empPersInfo.dob}" autocomplete="off"
														onchange="trim(this)"> <span
														class="hidedefault  validation-invalid-label"
														id="error_empDob" style="display: none;">This field
														is required.</span> <span
														class="hidedefault  validation-invalid-label"
														id="error_nomDob" style="display: none;">Invalid
														Date</span>
												</div>
												
												<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="dr">Date Range<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control daterange-basic_new"
														placeholder="Date Range" id="dr" name="dr"
														value="${empPersInfo.dob}" autocomplete="off"
														onchange="trim(this)"> <span
														class="hidedefault  validation-invalid-label"
														id="error_empDob" style="display: none;">This field
														is required.</span> <span
														class="hidedefault  validation-invalid-label"
														id="error_nomDob" style="display: none;">Invalid
														Date Range</span>
												</div>
												
												<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="ch">Checkboxes<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3"> Cricket
													<input type="checkbox" class="chk"
													  id="ch1" name="ch"
														value="1" autocomplete="off"> Football
														<input type="checkbox" class="chk"
													  id="ch2" name="ch"
														value="0" autocomplete="off">
														 Tennis
														<input type="checkbox" class="chk"
													  id="ch3" name="ch"
														value="1" autocomplete="off">
												</div>
										
									</div>
									
										<div class="form-group row">
										
										<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="dob">Select File<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="file" class="form-control"
																id="doc" type="file" name="doc"
																accept=".jpg,.png,.gif,.docx,.xlsx,.pdf"> <span
																class="form-text text-muted">Only
																.jpg,.png,.gif,.docx,.xlsx,.pdf</span> <span
																class="validation-invalid-label" id="error_doc1"
																style="display: none;">This field is required.</span>

												
												
												</div>
											
												<label class="col-form-label text-info font-weight-bold  col-lg-1 float" for="doc">Select
												 Image<span class="text-danger">* </span>:</label>
													<div class="col-lg-3 float">
												<img id="output" width="150" src="${imgPath}${asset.assetPurImage}"/>
												<input type="file" accept="image/*" name="doc" id="doc" value="${asset.assetPurImage}" 
												accept=".jpg,.png,.gif,.doc,.xls,.pdf" onchange="loadFile(event)"><span
													class="form-text text-muted">Only
													.jpg,.png,.gif,.doc,.xls,.pdf</span>
												<span class="validation-invalid-label" id="error_doc"
													style="display: none;">This field is required.</span>
												</div>	
										
												</div>

									<div class="form-group row mb-0">
										<div style="margin: 0 auto;">

											<button type="submit" class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>
											<a href="${pageContext.request.contextPath}/showBankList"><button
													type="button" class="btn btn-light">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>
													Back
												</button></a>
										</div>
									</div>
								</form>
								<p class="desc text-danger fontsize11">Note : * Fields are
									mandatory.</p>
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

	<script>
	 var loadFile = function(event) {
		 try {
			var image = document.getElementById('output');
			image.src = URL.createObjectURL(event.target.files[0]);
		 } catch(err) {
			 console.log(err);
			}
		};
		
		function trim(el) {
			el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
			replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
			replace(/\n +/, "\n"); // Removes spaces after newlines

			return;
		}

		function validateIfsc(temp) {

			var eml = /^[A-Za-z]{4}[a-zA-Z0-9]{7}$/;

			if (eml.test($.trim(temp)) == false) {

				return false;

			}

			return true;

		}

		function validateMicr(temp) {

			var eml = /^\d{9}$/;

			if (eml.test($.trim(temp)) == false) {

				return false;

			}

			return true;

		}
		function validateEmail(email) {

			//	alert(111);

			var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

			if (eml.test($.trim(email)) == false) {

				return false;

			}

			return true;

		}
		function validateMobile(mobile) {
			var mob = /^[1-9]{1}[0-9]{9}$/;

			if (mob.test($.trim(mobile)) == false) {

				//alert("Please enter a valid email address .");
				return false;

			}
			return true;

		}

		$(document)
				.ready(
						function($) {

							$("#submitInsertLocaion")
									.submit(
											function(e) {
												var isError = false;
												var errMsg = "";

												if (!$("#bankName").val()) {

													isError = true;

													$("#error_bank").show()
													//return false;
												} else {
													$("#error_bank").hide()
												}

												if (!$("#address").val()) {

													isError = true;

													$("#error_address").show()

												} else {
													$("#error_address").hide()
												}
												if (!$("#branchName").val()) {

													isError = true;

													$("#error_branchName")
															.show()

												} else {
													$("#error_branchName")
															.hide()
												}

												if ($("#micrCode").val().length > 0) {
													if (!$("#micrCode").val()
															|| !validateMicr($(
																	"#micrCode")
																	.val())) {

														isError = true;

														document
																.getElementById("error_micrCode").innerHTML = "Enter valid MICR code. Enter 9 digit no."
														$("#error_micrCode")
																.show()
													} else {
														$("#error_micrCode")
																.hide()
													}
												} else {
													$("#error_micrCode").hide()
												}

												if (!$("#ifscCode").val()
														|| !validateIfsc($(
																"#ifscCode")
																.val())) {

													isError = true;

													$("#error_ifscCode").show()

												} else {
													$("#error_ifscCode").hide()
												}

												if (!isError) {

													var x = true;
													if (x == true) {

														document
																.getElementById("submtbtn").disabled = true;
														return true;
													}
													//end ajax send this to php page
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

	</script>


</body>
</html>