<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.daterangepicker{width: 100%;}
.daterangepicker.show-calendar .calendar{display: inline--block;}
.daterangepicker .calendar, .daterangepicker .ranges{float: right;}
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
												<i class="icon-list-unordered"></i>3 Column Form Input (1-3)*3
											</h5></td>
										<td width="40%" align="right">
										
								
								
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
									id="submitInsertLocaion" method="post" enctype="multipart/form-data">
									<input type="hidden" value="${bank.bankId}" id="bankId"
										name="bankId">
											<div class="form-group row">
											<label
												class="col-form-label text-info font-weight-bold col-lg-1 float"
												for="bank">Bank Name <span class="text-danger">*
											</span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text"  style="text-transform: capitalize;" class="form-control maxlength-badge-position" value="${bank.name}"
													placeholder="Enter Bank Name" id="bankName" name="bankName"
													autocomplete="off" onchange="trim(this)" maxlength="100">
												<span class="validation-invalid-label" id="error_bank"
													style="display: none;">This field is required.</span>
											</div>
											<label class="col-form-label col-lg-1 float" for="micrCode">MICR
												Code <span class="text-danger"></span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text" class="form-control maxlength-badge-position numbersOnly"
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
												<input type="text" class="form-control maxlength-badge-position"
													value="${bank.ifscCode}" placeholder="Enter IFSC Code"
													id="ifscCode" maxlength="11" style="text-transform: uppercase;" name="ifscCode"
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
													for="email">Email <span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control"
														value="${company.cpEmail1}" id="email"
														onchange="trim(this)" placeholder="Email" name="email"
														autocomplete="off"> <span
														class="hidedefault  validation-invalid-label"
														style="display: none;" id="error_email">This field
														is required.</span>
												</div>
												
												<label class="col-form-label font-weight-bold col-lg-1 float"
													for="mobile">Mobile No.
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control maxlength-badge-position numbersOnly"
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
															${company.isPfApplicable==2 ? 'selected' : ''} >Please
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
														<c:forEach items="${assetCatList}" var="assetCat" varStatus="count">
														<option value="${assetCat.assetCatId}" ${assetCat.assetCatId == catId ? 'selected' : ''}>${assetCat.catName}</option>
														</c:forEach>
														
														
														
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
														
														<c:forEach items="${locationList}" var="locationList">
															<c:set value="0" var="find"></c:set>
															<c:forEach items="${locationIds}" var="locationIds">
																<c:if test="${locationList.locId==locationIds}">
																	<option selected="selected"
																		value="${locationList.locId}">${locationList.locName}</option>
																	<c:set value="1" var="find"></c:set>
																</c:if>
															</c:forEach>
															<c:if test="${find==0}">
																<option value="${locationList.locId}">${locationList.locName}</option>
															</c:if>
														</c:forEach>
														
														
														<option value="1">JAVA</option>
														<option value="2">PYTHON</option>
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
														id="error_Dob" style="display: none;">Invalid
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
														id="error_dr" style="display: none;">Invalid
														Date Range</span>
												</div>
												
												<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="ch">Check boxes<span class="text-danger">*</span>:
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
														<span
														class="hidedefault  validation-invalid-label"
														id="error_checkbox" style="display: none;">This field
														is required.</span>
												</div>
												
												
										
									</div>
									
										<div class="form-group row">
										
										<label
													class="col-form-label text-info font-weight-bold col-lg-1"
													for="doc">Select File<span class="text-danger">*</span>:
												</label>
												<div class="col-lg-3">
													<input type="file" class="form-control"
																id="doc" name="doc"
																accept=".docx,.xlsx,.pdf"> <span
																class="form-text text-muted">Only
																.docx,.xlsx,.pdf</span> <span
																class="validation-invalid-label" id="error_doc1"
																style="display: none;">This field is required.</span>

												
												
												</div>
											
												<label class="col-form-label text-info font-weight-bold  col-lg-1 float" for="docImg">Select
												 Image<span class="text-danger">* </span>:</label>
													<div class="col-lg-3 float">
												<img id="output" width="150" src="${imgPath}${asset.assetPurImage}"/>
												<input type="file" accept="image/*" name="docImg" id="docImg" value="${asset.assetPurImage}" 
												accept=".jpg,.png,.gif,.jpeg,.bmp" onchange="loadFile(event)"><span
													class="form-text text-muted">Only
													.jpg,.png,.gif,.jpeg,.bmp</span>
												<span class="validation-invalid-label" id="error_docImg"
													style="display: none;">This field is required.</span>
												</div>	
												<label
												class="col-form-label text-info font-weight-bold col-lg-1 float"
												for="pan">PAN No<span class="text-danger">*
											</span>:
											</label>
											<div class="col-lg-3 float">
												<input type="text" class="form-control maxlength-badge-position alhanumeric" style="text-transform: uppercase;" value="${bank.name}"
													placeholder="Enter PAN No" id="pan" name="pan"
													autocomplete="off" onchange="trim(this)" maxlength="10">
												<span class="validation-invalid-label" id="error_pan"
													style="display: none;">This field is required.</span>
											</div>
										
												</div>
												
												
												<div class="form-group row">
									<label class="col-lg-1 col-form-label text-info font-weight-bold  col-lg-1 float">Basic radio group <span class="text-danger">*</span>:</label>
									<div class="col-lg-3 float">
										<div class="form-check">
											<label class="form-check-label">
												<input type="radio" class="form-check-input" name="basic_radio">
												Cras leo malesuada eget
											</label>
										</div>

										<div class="form-check">
											<label class="form-check-label">
												<input type="radio" class="form-check-input" name="basic_radio">
												Maecenas congue justo  
											</label>
										</div>
									</div>
									
									<label class="col-form-label text-info font-weight-bold  col-lg-1 float">Inline radio <span class="text-danger">*</span>:</label>
									<div class="col-lg-3 float">
										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input type="radio" class="form-check-input" name="basic_radio_group">
												Cras leo 
											</label>
										</div>

										<div class="form-check form-check-inline">
											<label class="form-check-label">
												<input type="radio" class="form-check-input" name="basic_radio_group">
												Maecenas congue
											</label>
										</div>
									</div>
									
									
								</div>
											
									
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="bank">Bank Name <span class="text-danger">*
										</span>:
										</label>
										<div class="col-lg-10 float">
											<input type="text" style="text-transform: capitalize;"
												class="form-control maxlength-badge-position"
												value="${bank.name}" placeholder="Enter Bank Name"
												id="bankName" name="bankName" autocomplete="off"
												onchange="trim(this)" maxlength="100"> <span
												class="validation-invalid-label" id="error_bank"
												style="display: none;">This field is required.</span>
										</div>
										</div>

									<div class="form-group row mb-0">
										<div style="margin: 0 auto;">

											<button type="submit" class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>
											<button type="button" data-toggle="modal" data-target="#modal_form_vertical" class="btn ml-1 btn-outline-primary border-transparent"
												id="data_view_button">
												View Ajax Data
											</button>
											
											
											<a href="${pageContext.request.contextPath}/showBankList"><button
													type="button" class="btn btn-light">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>
													Back
												</button></a>
										</div>
									</div>
							<!-- Vertical Modal -->		
				<div class="col-md-4" style="margin: 20px 0 0 0;">
										
										<!-- Vertical form modal -->
										<div id="modal_form_vertical" class="modal fade" tabindex="-1">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="mod_title">Vertical form</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

												
														<div class="modal-body">
															<div class="form-group">
																<div class="row">
																	<div class="col-sm-6">
																		<label>First name</label> <input type="text" id="f_name" readonly
																			placeholder="First Name" class="form-control">
																	</div>

																	<div class="col-sm-6">
																		<label>Last name</label> <input type="text" id="l_name" readonly
																			placeholder="Last Name" class="form-control">
																	</div>
																</div>
															</div>

															<div class="form-group">
																<div class="row">
																	<div class="col-sm-6">
																		<label>Address line 1</label> <input type="text"
																			placeholder="Ring street 12" class="form-control">
																	</div>

																	<div class="col-sm-6">
																		<label>Address line 2</label> <input type="text"
																			placeholder="building D, flat #67"
																			class="form-control">
																	</div>
																</div>
															</div>

															<div class="form-group">
																<div class="row">
																	<div class="col-sm-4">
																		<label>City</label> <input type="text"
																			placeholder="Munich" class="form-control">
																	</div>

																	<div class="col-sm-4">
																		<label>State/Province</label> <input type="text"
																			placeholder="Bayern" class="form-control">
																	</div>

																	<div class="col-sm-4">
																		<label>ZIP code</label> <input type="text"
																			placeholder="1031" class="form-control">
																	</div>
																</div>
															</div>

															<div class="form-group">
																<div class="row">
																	<div class="col-sm-6">
																		<label>Email</label> <input type="text"
																			placeholder="eugene@kopyov.com" class="form-control">
																		<span class="form-text text-muted">name@domain.com</span>
																	</div>

																	<div class="col-sm-6">
																		<label>Phone #</label> <input type="text"
																			placeholder="+99-99-9999-9999"
																			data-mask="+99-99-9999-9999" class="form-control">
																		<span class="form-text text-muted">+99-99-9999-9999</span>
																	</div>
																</div>
															</div>
															
														</div>
														

														<div class="modal-footer">
															<button type="button" class="btn btn-link"
																data-dismiss="modal">Close</button>
															<button type="button" class="btn bg-primary">Submit
																form</button>
														</div>
												</div>
											</div>
										</div>
										<!-- /vertical form modal -->
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
function trim(el) {
			el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
			replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
			replace(/\n +/, "\n"); // Removes spaces after newlines

			return;
		}
</script>
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
		 /* Block the card on button click */
		 $('#submtbtn1').on('click', function() {
		 	var block = $(this).parent().parent();
		 	$(block).block({ 
		 	    message: '<i class="icon-spinner4 spinner"></i>',
		 	    timeout: 2000, //unblock after 2 seconds
		 	    overlayCSS: {
		 	        backgroundColor: '#fff',
		 	        opacity: 0.8,
		 	        cursor: 'wait'
		 	    },
		 	    css: {
		 	        border: 0,
		 	        padding: 0,
		 	        backgroundColor: 'transparent'
		 	    }
		 	});
		 });
		  // Default message
	        $('#data_view_button11').on('click', function() {
	            var block = $(this).closest('.card');
	            $(block).block({
	                message: '<span class="font-weight-semibold">Please wait...</span>',
	                timeout: 2000, //unblock after 2 seconds
	                overlayCSS: {
	                    backgroundColor: '#fff',
	                    opacity: 0.8,
	                    cursor: 'wait'
	                },
	                css: {
	                    border: 0,
	                    padding: 0,
	                    backgroundColor: 'transparent'
	                }
	            });
	        });
		  $('#submtbtn').on('click', function() {
	            $.blockUI({ 
	                message: '<i class="icon-spinner4 spinner"></i>',
	                fadeIn: 800, 
	                timeout: 2000, //unblock after 2 seconds
	                overlayCSS: {
	                    backgroundColor: 'transparent',
	                    opacity: 0.2,
	                    zIndex: 1200,
	                    cursor: 'wait'
	                },
	                css: {
	                    border: 0,
	                    color: '#fff',
	                    zIndex: 1201,
	                    padding: 0,
	                    backgroundColor: 'transparent'
	                },
	                onBlock: function() { 
	                    alert('Page is now blocked. FadeIn completed.'); 
	                } 
	            });
	        });

		/*  $('#submtbtn').on('click', function() {
					
				  //  message: '&lt;i class="icon-spinner4 spinner">&lt;/i>',
				    timeout: 4000, //unblock after 2 seconds
				    overlayCSS: {
				        backgroundColor: '#1b2024',
				        opacity: 0.8,
				        cursor: 'wait'
				    },
				    css: {
				        border: 0,
				        color: '#fff',
				        padding: 0,
				        backgroundColor: 'transparent'
				    }
				});
			}); */
			
	</script>


</body>
</html>