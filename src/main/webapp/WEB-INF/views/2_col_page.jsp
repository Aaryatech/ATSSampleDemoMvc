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
												<i class="icon-list-unordered"></i>2 Column Form Input (2-4)*2
											</h5></td>
										<td width="40%" align="right">
											<%-- <a
									href="${pageContext.request.contextPath}/getPage/3"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">3 Column Page </button>
								</a>
								<a
									href="${pageContext.request.contextPath}/getPage/1"
									class="breadcrumb-elements-item">
										<button type="button" class="btn btn-primary">1 Column Page </button>
								</a> --%>
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
									id="submitInsertLocaion" method="post"
									enctype="multipart/form-data">
									<input type="hidden" value="${bank.bankId}" id="bankId"
										name="bankId">
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="bank">Bank Name <span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text" style="text-transform: capitalize;"
												class="form-control maxlength-badge-position"
												value="${bank.name}" placeholder="Enter Bank Name"
												id="bankName" name="bankName" autocomplete="off"
												onchange="trim(this)" maxlength="100"> <span
												class="validation-invalid-label" id="error_bank"
												style="display: none;">This field is required.</span>
										</div>
										<label class="col-form-label col-lg-2 float" for="micrCode">MICR
											Code <span class="text-danger"></span>:
										</label>
										<div class="col-lg-4 float">
											<input type="text"
												class="form-control maxlength-badge-position numbersOnly"
												value="${bank.micrCode}" placeholder="Enter MICR Code"
												id="micrCode" maxlength="9" name="micrCode"
												autocomplete="off" onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_micrCode"
												style="display: none;">This field is required.</span>
										</div>
									</div>

									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="address">Address <span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-4 float">
											<textarea class="form-control"
												placeholder="Enter Branch Address" id="address"
												name="address" autocomplete="off" onchange="trim(this)">${bank.address}</textarea>
											<span class="validation-invalid-label" id="error_address"
												style="display: none;">This field is required.</span>

										</div>

										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="email">Email <span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4">
											<input type="text" class="form-control"
												value="${company.cpEmail1}" id="email" onchange="trim(this)"
												placeholder="Email" name="email" autocomplete="off">
											<span class="hidedefault  validation-invalid-label"
												style="display: none;" id="error_email">This field is
												required.</span>
										</div>

									</div>

									<div class="form-group row">
										<label class="col-form-label font-weight-bold col-lg-2"
											for="isPfApplicable">Simple Select </label>
										<div class="col-lg-4">
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

										<label
											class="col-form-label text-info font-weight-bold col-lg-2"
											for="empType">Medium Select<span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4">
											<select name="empType" data-placeholder="Select Medium"
												id="empType"
												class="form-control form-control-select2 select2-hidden-accessible">
												<option value="">Select Employee Type</option>
												<option value="1" ${emp.empType==1 ? selected : ''}>Yearly
												</option>
												<option value="2" ${emp.empType==2 ? selected : ''}>Monthly
												</option>
												<option value="3" ${emp.empType==3 ? selected : ''}>Other</option>
											</select> <span class="hidedefault   validation-invalid-label"
												style="display: none;" id="error_empType">This field
												is required.</span>
										</div>

									</div>

									<div class="form-group row">

										<label
											class="col-form-label text-info font-weight-bold col-lg-2"
											for="dob">Select Date<span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4">
											<input type="text" class="form-control datepickerclass"
												placeholder="Date" id="dob" name="dob"
												value="${empPersInfo.dob}" autocomplete="off"
												onchange="trim(this)"> <span
												class="hidedefault  validation-invalid-label"
												id="error_empDob" style="display: none;">This field
												is required.</span> <span
												class="hidedefault  validation-invalid-label" id="error_Dob"
												style="display: none;">Invalid Date</span>
										</div>

										<label
											class="col-form-label text-info font-weight-bold col-lg-2"
											for="dr">Date Range<span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4">
											<input type="text" class="form-control daterange-basic_new"
												placeholder="Date Range" id="dr" name="dr"
												value="${empPersInfo.dob}" autocomplete="off"
												onchange="trim(this)"> <span
												class="hidedefault  validation-invalid-label"
												id="error_empDob" style="display: none;">This field
												is required.</span> <span
												class="hidedefault  validation-invalid-label" id="error_dr"
												style="display: none;">Invalid Date Range</span>
										</div>


									</div>

									<div class="form-group row">

										<label
											class="col-form-label text-info font-weight-bold col-lg-2"
											for="doc">Select File<span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4">
											<input type="file" class="form-control" id="doc" name="doc"
												accept=".docx,.xlsx,.pdf"> <span
												class="form-text text-muted">Only .docx,.xlsx,.pdf</span> <span
												class="validation-invalid-label" id="error_doc1"
												style="display: none;">This field is required.</span>



										</div>

										<label
											class="col-form-label text-info font-weight-bold  col-lg-2 float"
											for="docImg">Select Image<span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-4 float">
											<div class="image-cropper-container">
								
											<img id="output" width="150"  class="cropper"
												src="${imgPath}${asset.assetPurImage}" /> <input type="file"
												accept="image/*" name="docImg" id="docImg"
												value="${asset.assetPurImage}"
												accept=".jpg,.png,.gif,.jpeg,.bmp"
												onchange="loadFile(event)"></div><span
												class="form-text text-muted">Only
												.jpg,.png,.gif,.jpeg,.bmp</span> <span
												class="validation-invalid-label" id="error_docImg"
												style="display: none;">This field is required.</span>
												
												
								<div class="form-group demo-cropper-toolbar">
									<label class="font-weight-semibold">Toolbar:</label>
									<div class="btn-group btn-group-justified">
										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="setDragMode" data-option="move" title="Move">
												<span class="icon-move"></span>
											</button>
										</div>

										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="setDragMode" data-option="crop" title="Crop">
												<span class="icon-crop2"></span>
											</button>
										</div>

										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
												<span class="icon-arrow-left13"></span>
											</button>
										</div>

										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="move" data-option="10" data-second-option="0" title="Move Right">
												<span class="icon-arrow-right14"></span>
											</button>
										</div>

										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
												<span class="icon-arrow-up13"></span>
											</button>
										</div>

										<div class="btn-group">
											<button type="button" class="btn bg-blue btn-icon" data-method="move" data-option="0" data-second-option="10" title="Move Down">
												<span class="icon-arrow-down132"></span>
											</button>
										</div>
									</div>
								</div>
										</div>

									</div>


									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold  col-lg-2 float">Basic
											radio group <span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4 float">
											<div class="form-check">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="basic_radio"> Cras
													leo malesuada eget
												</label>
											</div>

											<div class="form-check">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="basic_radio">
													Maecenas congue justo
												</label>
											</div>
										</div>

										<label
											class="col-form-label text-info font-weight-bold  col-lg-2 float">Inline
											radio <span class="text-danger">*</span>:
										</label>
										<div class="col-lg-4 float">
											<div class="form-check form-check-inline">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="basic_radio_group">
													Cras leo
												</label>
											</div>

											<div class="form-check form-check-inline">
												<label class="form-check-label"> <input type="radio"
													class="form-check-input" name="basic_radio_group">
													Maecenas congue
												</label>
											</div>
										</div>


									</div>

									<div class="form-group row mb-0">
										<div style="margin: 0 auto;">

											<button type="submit" class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>
											<a href="${pageContext.request.contextPath}/"><button
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
<!-- Core JS files -->
	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/main/jquery.min.js"></script>
	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/plugins/media/cropper.min.js"></script>
	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/plugins/forms/styling/switchery.min.js"></script>

	<script src="http://demo.interface.club/limitless/demo/Template/global_assets/js/demo_pages/extension_image_cropper.js"></script>
	<!-- /theme JS files -->
		</div>
		<!-- /main content -->

	</div>
	<!-- /page content -->

	<script>
	

    
	 var loadFile = function(event) {
		 document.getElementById('output').style.display="none";
		 try {
			var image = document.getElementById('output');
			image.src = URL.createObjectURL(event.target.files[0]);
			document.getElementById('output').style="display:block"
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
			var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			if (eml.test($.trim(email)) == false) {
				return false;
			}
			return true;
		}
		
		function validateMobile(mobile) {
			var mob = /^[1-9]{1}[0-9]{9}$/;
			if (mob.test($.trim(mobile)) == false) {
				return false;
			}
			return true;
		}
		
		function validatePAN(pan){
			var regex1 = /^[A-Z]{5}\d{4}[A-Z]{1}$/;
			if (regex1.test($.trim(pan)) == false) {
				return false;
			}else{
				return true
			}
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
												} else {
													$("#error_bank").hide()
												}

												if (!$("#address").val()) {
													isError = true;
													$("#error_address").show()
												} else {
													$("#error_address").hide()
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
												
												if (!$("#email").val()
														|| !validateEmail($(
																"#email")
																.val())) {
													isError = true;
													$("#error_email").show()
												} else {
													$("#error_email").hide()
												}
												
												if (!$("#isPfApplicable").val()) {
													isError = true;
													$("#error_isPfApplicable").show()
												} else {
													$("#error_isPfApplicable").hide()
												}
												
												if (!$("#empType").val()) {
													isError = true;
													$("#error_empType").show()
												} else {
													$("#error_empType").hide()
												}
												
												var options = $('#locId_list > option:selected');
										         if(options.length == 0){
										        	 $("#error_locId_list").show();
										        	 isError = true;
										         } else {
														$("#error_locId_list").hide();
													}
												
										         if (!$("#dob").val()) {
														isError = true;
														$("#error_Dob").show()
													} else {
														$("#error_Dob").hide()
													}
										         
										         if (!$("#dr").val()) {
														isError = true;
														$("#error_dr").show()
													} else {
														$("#error_dr").hide()
													}
												
										         var checked = $("input[name=ch]:checked").length;

										         if(!checked) {
										        	 isError = true;
													$("#error_checkbox").show();
													}else{
														$("#error_checkbox").hide()
													}
										         
										         if (!$("#doc").val()) {
														isError = true;
														$("#error_doc1").show()
													} else {
														$("#error_doc1").hide()
													}
										         
										         if (!$("#docImg").val()) {
														isError = true;
														$("#error_docImg").show()
													} else {
														$("#error_docImg").hide()
													}
										         
										         if (!$("#pan").val()
															|| !validatePAN($(
																	"#pan")
																	.val().toUpperCase())) {
														isError = true;
														$("#error_pan").show()
													} else {
														$("#error_pan").hide()
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
		 $('.maxlength-options').maxlength({
	            alwaysShow: true,
	            threshold: 10,
	            warningClass: 'text-success form-text',
	            limitReachedClass: 'text-danger form-text',
	            separator: ' of ',
	            preText: 'You have ',
	            postText: ' chars remaining.',
	            validate: true
	        });
		 
		 $('.maxlength-badge-position').maxlength({
	            alwaysShow: true,
	            placement: 'top'
	        });
	</script>


</body>
</html>