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
<div class="row">

					<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4><i class="icon-arrow-left52 mr-2"></i> <span class="font-weight-semibold">Home</span> - Dashboard</h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-link btn-float font-size-sm font-weight-semibold text-default">
								<i class="icon-bars-alt text-pink-300"></i>
								<span>Statistics</span>
							</a>
							<a href="#" class="btn btn-link btn-float font-size-sm font-weight-semibold text-default">
								<i class="icon-calculator text-pink-300"></i>
								<span>Invoices</span>
							</a>
							<a href="#" class="btn btn-link btn-float font-size-sm font-weight-semibold text-default">
								<i class="icon-calendar5 text-pink-300"></i>
								<span>Schedule</span>
							</a>
						</div>
					</div>
				</div>

				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="index.html" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
							<span class="breadcrumb-item active">Dashboard</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						<div class="breadcrumb justify-content-center">
							<a href="#" class="breadcrumb-elements-item">
								<i class="icon-comment-discussion mr-2"></i>
								Support
							</a>

							<div class="breadcrumb-elements-item dropdown p-0">
								<a href="#" class="breadcrumb-elements-item dropdown-toggle" data-toggle="dropdown">
									<i class="icon-gear mr-2"></i>
									Settings
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a href="#" class="dropdown-item"><i class="icon-user-lock"></i> Account security</a>
									<a href="#" class="dropdown-item"><i class="icon-statistics"></i> Analytics</a>
									<a href="#" class="dropdown-item"><i class="icon-accessibility"></i> Accessibility</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item"><i class="icon-gear"></i> All settings</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">

				<!-- Main charts -->
				<div class="row">
					<div class="col-xl-7">

						<!-- Traffic sources -->
						<div class="card">
							<div class="card-header header-elements-inline">
								<h6 class="card-title">Traffic sources</h6>
								<div class="header-elements">
									<div class="form-check form-check-right form-check-switchery form-check-switchery-sm">
										<label class="form-check-label">
											Live update:
											<input type="checkbox" class="form-input-switchery" checked data-fouc>
										</label>
									</div>
								</div>
							</div>

							<div class="card-body py-0">
								<div class="row">
									<div class="col-sm-4">
										<div class="d-flex align-items-center justify-content-center mb-2">
											<a href="#" class="btn bg-transparent border-teal text-teal rounded-round border-2 btn-icon mr-3">
												<i class="icon-plus3"></i>
											</a>
											<div>
												<div class="font-weight-semibold">New visitors</div>
												<span class="text-muted">2,349 avg</span>
											</div>
										</div>
										<div class="w-75 mx-auto mb-3" id="new-visitors"></div>
									</div>

									<div class="col-sm-4">
										<div class="d-flex align-items-center justify-content-center mb-2">
											<a href="#" class="btn bg-transparent border-warning-400 text-warning-400 rounded-round border-2 btn-icon mr-3">
												<i class="icon-watch2"></i>
											</a>
											<div>
												<div class="font-weight-semibold">New sessions</div>
												<span class="text-muted">08:20 avg</span>
											</div>
										</div>
										<div class="w-75 mx-auto mb-3" id="new-sessions"></div>
									</div>

									<div class="col-sm-4">
										<div class="d-flex align-items-center justify-content-center mb-2">
											<a href="#" class="btn bg-transparent border-indigo-400 text-indigo-400 rounded-round border-2 btn-icon mr-3">
												<i class="icon-people"></i>
											</a>
											<div>
												<div class="font-weight-semibold">Total online</div>
												<span class="text-muted"><span class="badge badge-mark border-success mr-2"></span> 5,378 avg</span>
											</div>
										</div>
										<div class="w-75 mx-auto mb-3" id="total-online"></div>
									</div>
								</div>
							</div>

							<div class="chart position-relative" ><!--id="traffic-sources"-->
								<img src="assets/images/traffic.jpg" alt="" class="traffic_pic">
							</div>
						</div>
						<!-- /traffic sources -->

					</div>

					<div class="col-xl-5">

						<!-- Sales stats -->
						<div class="card">
							<div class="card-header header-elements-inline">
								<h6 class="card-title">Sales statistics</h6>
								<div class="header-elements">
									<select class="form-control custom-select" id="select_date">
										<option value="val1">June, 29 - July, 5</option>
										<option value="val2">June, 22 - June 28</option>
										<option value="val3" selected>June, 15 - June, 21</option>
										<option value="val4">June, 8 - June, 14</option>
									</select>
			                	</div>
							</div>

							<div class="card-body py-0">
								<div class="row text-center">
									<div class="col-4">
										<div class="mb-3">
											<h5 class="font-weight-semibold mb-0">5,689</h5>
											<span class="text-muted font-size-sm">new orders</span>
										</div>
									</div>

									<div class="col-4">
										<div class="mb-3">
											<h5 class="font-weight-semibold mb-0">32,568</h5>
											<span class="text-muted font-size-sm">this month</span>
										</div>
									</div>

									<div class="col-4">
										<div class="mb-3">
											<h5 class="font-weight-semibold mb-0">$23,464</h5>
											<span class="text-muted font-size-sm">expected profit</span>
										</div>
									</div>
								</div>
							</div>

							<div class="chart mb-2" ></div><!--id="app_sales"-->
							<div class="chart"><img src="assets/images/statistics.jpg" alt="" class="traffic_pic" ></div><!--id="monthly-sales-stats"-->
						</div>
						<!-- /sales stats -->

					</div>
				</div>
				<!-- /main charts -->


				<!-- Dashboard content -->
				<div class="row">
					<div class="col-xl-8">

						<!-- Marketing campaigns -->
						<div class="card">
							<div class="card-header header-elements-sm-inline">
								<h6 class="card-title">Marketing campaigns</h6>
								<div class="header-elements">
									<span class="badge bg-success badge-pill">28 active</span>
									<div class="list-icons ml-3">
				                		<div class="dropdown">
				                			<a href="#" class="list-icons-item dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i></a>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item"><i class="icon-sync"></i> Update data</a>
												<a href="#" class="dropdown-item"><i class="icon-list-unordered"></i> Detailed log</a>
												<a href="#" class="dropdown-item"><i class="icon-pie5"></i> Statistics</a>
												<div class="dropdown-divider"></div>
												<a href="#" class="dropdown-item"><i class="icon-cross3"></i> Clear list</a>
											</div>
				                		</div>
				                	</div>
			                	</div>
							</div>

							<div class="card-body d-sm-flex align-items-sm-center justify-content-sm-between flex-sm-wrap">
								<div class="d-flex align-items-center mb-3 mb-sm-0">
									<div id="campaigns-donut"></div>
									<div class="ml-3">
										<h5 class="font-weight-semibold mb-0">38,289 <span class="text-success font-size-sm font-weight-normal"><i class="icon-arrow-up12"></i> (+16.2%)</span></h5>
										<span class="badge badge-mark border-success mr-1"></span> <span class="text-muted">May 12, 12:30 am</span>
									</div>
								</div>

								<div class="d-flex align-items-center mb-3 mb-sm-0">
									<div id="campaign-status-pie"></div>
									<div class="ml-3">
										<h5 class="font-weight-semibold mb-0">2,458 <span class="text-danger font-size-sm font-weight-normal"><i class="icon-arrow-down12"></i> (-4.9%)</span></h5>
										<span class="badge badge-mark border-danger mr-1"></span> <span class="text-muted">Jun 4, 4:00 am</span>
									</div>
								</div>

								<div>
									<a href="#" class="btn bg-indigo-300"><i class="icon-statistics mr-2"></i> View report</a>
								</div>
							</div>
						</div>
						<!-- /marketing campaigns -->





						<!-- Support tickets -->
						<div class="card">
							<div class="card-header header-elements-sm-inline">
								<h6 class="card-title">Support tickets</h6>
								<div class="header-elements">
									<a class="text-default daterange-ranges font-weight-semibold cursor-pointer dropdown-toggle">
										<i class="icon-calendar3 mr-2"></i>
										<span></span>
									</a>
			                	</div>
							</div>

							<div class="card-body d-md-flex align-items-md-center justify-content-md-between flex-md-wrap">
								<div class="d-flex align-items-center mb-3 mb-md-0">
									<div id="tickets-status"></div>
									<div class="ml-3">
										<h5 class="font-weight-semibold mb-0">14,327 <span class="text-success font-size-sm font-weight-normal"><i class="icon-arrow-up12"></i> (+2.9%)</span></h5>
										<span class="badge badge-mark border-success mr-1"></span> <span class="text-muted">Jun 16, 10:00 am</span>
									</div>
								</div>

								<div class="d-flex align-items-center mb-3 mb-md-0">
									<a href="#" class="btn bg-transparent border-indigo-400 text-indigo-400 rounded-round border-2 btn-icon">
										<i class="icon-alarm-add"></i>
									</a>
									<div class="ml-3">
										<h5 class="font-weight-semibold mb-0">1,132</h5>
										<span class="text-muted">total tickets</span>
									</div>
								</div>

								<div class="d-flex align-items-center mb-3 mb-md-0">
									<a href="#" class="btn bg-transparent border-indigo-400 text-indigo-400 rounded-round border-2 btn-icon">
										<i class="icon-spinner11"></i>
									</a>
									<div class="ml-3">
										<h5 class="font-weight-semibold mb-0">06:25:00</h5>
										<span class="text-muted">response time</span>
									</div>
								</div>

								<div>
									<a href="#" class="btn bg-teal-400"><i class="icon-statistics mr-2"></i> Report</a>
								</div>
							</div>


						</div>
						<!-- /support tickets -->




					</div>

					<div class="col-xl-4">

						<!-- Progress counters -->
						<div class="row">
							<div class="col-sm-6">

								<!-- Available hours -->
								<div class="card text-center">
									<div class="card-body">

					                	<!-- Progress counter -->
										<div class="svg-center position-relative" id="hours-available-progress"></div>
										<!-- /progress counter -->


										<!-- Bars -->
										<div id="hours-available-bars"></div>
										<!-- /bars -->

									</div>
								</div>
								<!-- /available hours -->

							</div>

							<div class="col-sm-6">

								<!-- Productivity goal -->
								<div class="card text-center">
									<div class="card-body">

										<!-- Progress counter -->
										<div class="svg-center position-relative" id="goal-progress"></div>
										<!-- /progress counter -->

										<!-- Bars -->
										<div id="goal-bars"></div>
										<!-- /bars -->

									</div>
								</div>
								<!-- /productivity goal -->

							</div>
						</div>
						<!-- /progress counters -->

					</div>




				</div>
				<!-- /dashboard content -->

				<div class="row">
					<div class="col-lg-12">
						<!-- Quick stats boxes -->
						<div class="row">
							<div class="col-lg-4">

								<!-- Members online -->
								<div class="card bg-teal-400">
									<div class="card-body">
										<div class="d-flex">
											<h3 class="font-weight-semibold mb-0">3,450</h3>
											<span class="badge bg-teal-800 badge-pill align-self-center ml-auto">+53,6%</span>
														</div>

														<div>
											Members online
											<div class="font-size-sm opacity-75">489 avg</div>
										</div>
									</div>

									<div class="container-fluid">
										<div id="members-online"></div>
									</div>
								</div>
								<!-- /members online -->

							</div>

							<div class="col-lg-4">

								<!-- Current server load -->
								<div class="card bg-pink-400">
									<div class="card-body">
										<div class="d-flex">
											<h3 class="font-weight-semibold mb-0">49.4%</h3>
											<div class="list-icons ml-auto">
																<div class="dropdown">
																	<a href="#" class="list-icons-item dropdown-toggle" data-toggle="dropdown"><i class="icon-cog3"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a href="#" class="dropdown-item"><i class="icon-sync"></i> Update data</a>
														<a href="#" class="dropdown-item"><i class="icon-list-unordered"></i> Detailed log</a>
														<a href="#" class="dropdown-item"><i class="icon-pie5"></i> Statistics</a>
														<a href="#" class="dropdown-item"><i class="icon-cross3"></i> Clear list</a>
													</div>
																</div>
															</div>
														</div>

														<div>
											Current server load
											<div class="font-size-sm opacity-75">34.6% avg</div>
										</div>
									</div>

									<div id="server-load"></div>
								</div>
								<!-- /current server load -->

							</div>

							<div class="col-lg-4">

								<!-- Today's revenue -->
								<div class="card bg-blue-400">
									<div class="card-body">
										<div class="d-flex">
											<h3 class="font-weight-semibold mb-0">$18,390</h3>
											<div class="list-icons ml-auto">
																<a class="list-icons-item" data-action="reload"></a>
															</div>
														</div>

														<div>
											Today's revenue
											<div class="font-size-sm opacity-75">$37,578 avg</div>
										</div>
									</div>

									<div id="today-revenue"></div>
								</div>
								<!-- /today's revenue -->

							</div>
						</div>
						<!-- /quick stats boxes -->
					</div>
				</div>

			</div>
			<!-- /content area -->

		</div>
		<!-- /main content -->
				
			</div>

		</div>
		<!-- /content area -->


		<!-- Footer -->
		
			<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/streamgraph.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/sparklines.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/lines.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/areas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/donuts.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/bars.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/progress.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/heatmaps.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/pies.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/demo_charts/pages/dashboard/light/bullets.js"></script>
	
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
			
	</script>


</body>
</html>