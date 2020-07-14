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
	<c:url value="/addBillDetail" var="addBillDetail"></c:url>
	<c:url value="/getBillDetailForEdit" var="getBillDetailForEdit"></c:url>

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
												<i class="icon-list-unordered"></i>Search Bills
											</h5></td>
										<td width="40%" align="right">
										</td>
									</tr>
								</table>
							</div>
							<div class="card-body">
								<jsp:include page="/WEB-INF/views/include/response_msg.jsp"></jsp:include>
								<form
									action="${pageContext.request.contextPath}/searchBills"
									id="searchBills" method="get">
										
									<div class="form-group row">
										<label
											class="col-form-label text-info font-weight-bold col-lg-2 float"
											for="cust_id">Customer Name<span
											class="text-danger">* </span>:
										</label>
										<div class="col-lg-4 float">
											<select name="cust_Id" data-placeholder="Select Customer"
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
												class="form-control daterange-basic_new"
												placeholder="Enter bill date" id="bill_date" value="${daterange}"
												name="daterange" autocomplete="off"
												onchange="trim(this)"> <span
												class="validation-invalid-label" id="error_date"
												style="display: none;">This field is required.</span>
										</div>
									</div>
									
											

									<div class="form-group row mb-0">
									<div style="margin: 0 auto;">
											<button type="submit" data-popup="tooltip" data-original-title="Search Bills"	 class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Search
											</button>
									</div>
									</div>

								<!-- 	<table
										class="table datatable-fixed-left_custom"
										width="100%"> -->
										 <table class="table datatable-fixed-right"   width="100%">
										<thead>
											<tr><th style="display: none;">Sr No</th>
												<th style="display: none;">Customer</th>
												
												<th width="10%;">Sr No</th>
												<th>Customer</th>
												<th>Bill Date</th>
												<th>Invoice</th>
												<th>Total</th>
												
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${billList}" varStatus="count"
												var="bills">
												<tr>
													<td style="display: none;">${count.index+1}</td>
													<td style="display: none;">${bills.exVar1}</td>
													<td width="10%;">${count.index+1}</td>
													<td>${bills.exVar1}</td>
													<td>${bills.billDate}</td>
													<td>${bills.invoiceNo}</td>
													<td>${bills.billAmt}</td>
												
													
													
												</tr>
											</c:forEach>
										</tbody>
									</table> 
									
									
									<table class="table datatable-fixed-right" width="100%">
									
									 <thead>
								        <tr>
								            <th>First name</th>
								            <th>Last name</th>
								            <th>Position</th>
								            <th>Office</th>
								            <th>Age</th>
								            <th>Start date</th>
								            <th>Salary</th>
								            <th>Extn.</th>
								            <th>E-mail</th>
								        </tr>
								    </thead> 
								    
								    
								    
								    <tbody>
								        <tr>
								            <td>Tiger</td>
								            <td>Nixon</td>
								            <td>System Architect</td>
								            <td>Edinburgh</td>
								            <td>61</td>
								            <td>2011/04/25</td>
							                <td><span class="badge badge-info">$320,800</span></td>
								            <td>5421</td>
								            <td><a href="#">t.nixon@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Garrett</td>
								            <td>Winters</td>
								            <td>Accountant</td>
								            <td>Tokyo</td>
								            <td>63</td>
								            <td>2011/07/25</td>
							                <td><span class="badge badge-danger">$170,750</span></td>
								            <td>8422</td>
								            <td><a href="#">g.winters@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Ashton</td>
								            <td>Cox</td>
								            <td>Junior Technical Author</td>
								            <td>San Francisco</td>
								            <td>66</td>
								            <td>2009/01/12</td>
							                <td><span class="badge badge-secondary">$86,000</span></td>
								            <td>1562</td>
								            <td><a href="#">a.cox@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Cedric</td>
								            <td>Kelly</td>
								            <td>Senior Javascript Developer</td>
								            <td>Edinburgh</td>
								            <td>22</td>
								            <td>2012/03/29</td>
							                <td><span class="badge badge-success">$433,060</span></td>
								            <td>6224</td>
								            <td><a href="#">c.kelly@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Airi</td>
								            <td>Satou</td>
								            <td>Accountant</td>
								            <td>Tokyo</td>
								            <td>33</td>
								            <td>2008/11/28</td>
							                <td><span class="badge badge-danger">$162,700</span></td>
								            <td>5407</td>
								            <td><a href="#">a.satou@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Brielle</td>
								            <td>Williamson</td>
								            <td>Integration Specialist</td>
								            <td>New York</td>
								            <td>61</td>
								            <td>2012/12/02</td>
							                <td><span class="badge badge-info">$372,000</span></td>
								            <td>4804</td>
								            <td><a href="#">b.williamson@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Herrod</td>
								            <td>Chandler</td>
								            <td>Sales Assistant</td>
								            <td>San Francisco</td>
								            <td>59</td>
								            <td>2012/08/06</td>
							                <td><span class="badge badge-danger">$137,500</span></td>
								            <td>9608</td>
								            <td><a href="#">h.chandler@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Rhona</td>
								            <td>Davidson</td>
								            <td>Integration Specialist</td>
								            <td>Tokyo</td>
								            <td>55</td>
								            <td>2010/10/14</td>
							                <td><span class="badge badge-secondary">$97,900</span></td>
								            <td>6200</td>
								            <td><a href="#">r.davidson@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Colleen</td>
								            <td>Hurst</td>
								            <td>Javascript Developer</td>
								            <td>San Francisco</td>
								            <td>39</td>
								            <td>2009/09/15</td>
							                <td><span class="badge badge-success">$405,500</span></td>
								            <td>2360</td>
								            <td><a href="#">c.hurst@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Sonya</td>
								            <td>Frost</td>
								            <td>Software Engineer</td>
								            <td>Edinburgh</td>
								            <td>23</td>
								            <td>2008/12/13</td>
							                <td><span class="badge badge-danger">$103,600</span></td>
								            <td>1667</td>
								            <td><a href="#">s.frost@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Jena</td>
								            <td>Gaines</td>
								            <td>Office Manager</td>
								            <td>London</td>
								            <td>30</td>
								            <td>2008/12/19</td>
							                <td><span class="badge badge-secondary">$90,560</span></td>
								            <td>3814</td>
								            <td><a href="#">j.gaines@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Quinn</td>
								            <td>Flynn</td>
								            <td>Support Lead</td>
								            <td>Edinburgh</td>
								            <td>22</td>
								            <td>2013/03/03</td>
							                <td><span class="badge badge-info">$342,000</span></td>
								            <td>9497</td>
								            <td><a href="#">q.flynn@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Charde</td>
								            <td>Marshall</td>
								            <td>Regional Director</td>
								            <td>San Francisco</td>
								            <td>36</td>
								            <td>2008/10/16</td>
							                <td><span class="badge badge-success">$470,600</span></td>
								            <td>6741</td>
								            <td><a href="#">c.marshall@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Haley</td>
								            <td>Kennedy</td>
								            <td>Senior Marketing Designer</td>
								            <td>London</td>
								            <td>43</td>
								            <td>2012/12/18</td>
							                <td><span class="badge badge-danger">$113,500</span></td>
								            <td>3597</td>
								            <td><a href="#">h.kennedy@datatables.net</a></td>
								        </tr>
								        <tr>
								            <td>Tatyana</td>
								            <td>Fitzpatrick</td>
								            <td>Regional Director</td>
								            <td>London</td>
								            <td>19</td>
								            <td>2010/03/17</td>
							                <td><span class="badge badge-info">$385,750</span></td>
								            <td>1965</td>
								            <td><a href="#">t.fitzpatrick@datatables.net</a></td>
								        </tr>
								    </tbody> 
								</table>
										<span class="alert bg-danger text-white alert-styled-left" style="display: none;" id="error_table">Please add at least one record !! </span>				
									
									
									<%-- <div class="form-group row mb-0">
										<div style="margin: 0 auto;">

											<button type="submit" data-popup="tooltip" data-original-title="Save Form"	 class="btn blue_btn ml-3 legitRipple"
												id="submtbtn">
												Submit <i class="icon-paperplane ml-2"></i>
											</button>


											<a href="${pageContext.request.contextPath}/showBankList"><button
													type="button" class="btn btn-light">
													<i class="${sessionScope.cancelIcon}" aria-hidden="true"></i>
													Back
												</button></a>
										</div>
									</div> --%>
							

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
	<script>
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
opens:'left',
			cancelClass : 'btn-light',
			locale : {
				format : 'DD-MM-YYYY',
				separator : ' to '
			}
		});


		$('.datatable-fixed-left_custom').DataTable({

			columnDefs : [ {
				orderable : true,
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
							alert("Index" +uuid)
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