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

				<!-- Form inputs -->
				<div class="card">


					<div class="card-body">


						<form action="#">

							<!--page Loader-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Page Loader</legend>
								<div class="row">
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-infinity.svg">
									</div>
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-ellipsis.svg">
									</div>
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-dualball.svg">
									</div>
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-disk.svg">
									</div>
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-spin.svg">
									</div>
									<div class="col-md-2 loader_icn">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-blocks.svg">
									</div>
								</div>

								<div class="row">
									<div class="col-md-12" style="text-align:center">
										<img src="${pageContext.request.contextPath}/resources/assets/images/loader-vanilla.svg">
									</div>
								</div>
							</fieldset>
							<!--page Loader close -->

							<!--basic table-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Basic Data table</legend>
								<table class="table datatable-basic">
									<thead>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Job Title</th>
											<th>DOB</th>
											<th>Status</th>
											<th class="text-center">Actions</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Marth</td>
											<td><a href="#">Enright</a></td>
											<td>Traffic Court Referee</td>
											<td>22 Jun 1972</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Jackelyn</td>
											<td>Weible</td>
											<td><a href="#">Airline Transport Pilot</a></td>
											<td>3 Oct 1981</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Aura</td>
											<td>Hard</td>
											<td>Business Services Sales Representative</td>
											<td>19 Apr 1969</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Nathalie</td>
											<td><a href="#">Pretty</a></td>
											<td>Drywall Stripper</td>
											<td>13 Dec 1977</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Sharan</td>
											<td>Leland</td>
											<td>Aviation Tactical Readiness Officer</td>
											<td>30 Dec 1991</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Maxine</td>
											<td><a href="#">Woldt</a></td>
											<td><a href="#">Business Services Sales Representative</a></td>
											<td>17 Oct 1987</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Sylvia</td>
											<td><a href="#">Mcgaughy</a></td>
											<td>Hemodialysis Technician</td>
											<td>11 Nov 1983</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Lizzee</td>
											<td><a href="#">Goodlow</a></td>
											<td>Technical Services Librarian</td>
											<td>1 Nov 1961</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Kennedy</td>
											<td>Haley</td>
											<td>Senior Marketing Designer</td>
											<td>18 Dec 1960</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Chantal</td>
											<td><a href="#">Nailor</a></td>
											<td>Technical Services Librarian</td>
											<td>10 Jan 1980</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Delma</td>
											<td>Bonds</td>
											<td>Lead Brand Manager</td>
											<td>21 Dec 1968</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Roland</td>
											<td>Salmos</td>
											<td><a href="#">Senior Program Developer</a></td>
											<td>5 Jun 1986</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Coy</td>
											<td>Wollard</td>
											<td>Customer Service Operator</td>
											<td>12 Oct 1982</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Maxwell</td>
											<td>Maben</td>
											<td>Regional Representative</td>
											<td>25 Feb 1988</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th><div class="form-check">
												<input type="checkbox" class="form-check-input position-static">
											</div></th>
											<td>Cicely</td>
											<td>Sigler</td>
											<td><a href="#">Senior Research Officer</a></td>
											<td>15 Mar 1960</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<!--basic table close-->

							<!--Scrollable table-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Scrollable table</legend>
								<div class="table-responsive table-scrollable">
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Job Title</th>
												<th>DOB</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td><select name="select" multiple="multiple" class="form-control form-control-select2" data-fouc>
				                                    <option value="opt1" selected>Option 1</option>
				                                    <option value="opt2" selected>Option 2</option>
				                                    <option value="opt3">Option 3</option>
				                                    <option value="opt4">Option 4</option>
				                                    <option value="opt5">Option 5</option>
				                                    <option value="opt6">Option 6</option>
				                                    <option value="opt7">Option 7</option>
				                                    <option value="opt8">Option 8</option>
				                                </select></td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-secondary">Inactive</span></td>
												<td>
													<div class="list-icons">
				                		<a href="#" class="list-icons-item"><i class="icon-pencil7"></i></a>
				                		<a href="#" class="list-icons-item"><i class="icon-trash"></i></a>
				                		<div class="dropdown">
					                		<a href="#" class="list-icons-item dropdown-toggle" data-toggle="dropdown"><i class="icon-cog6"></i></a>
															<div class="dropdown-menu">
																<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to PDF</a>
																<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to CSV</a>
																<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to DOC</a>
															</div>
			                			</div>
			                	</div>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td><select class="form-control form-control-multiselect" multiple="multiple" data-fouc>
	                          <option value="opt1">Option 1</option>
	                          <option value="opt2">Option 2</option>
	                          <option value="opt3">Option 3</option>
	                          <option value="opt4">Option 4</option>
	                          <option value="opt5">Option 5</option>
	                          <option value="opt6">Option 6</option>
	                          <option value="opt7">Option 7</option>
	                          <option value="opt8">Option 8</option>
	                      </select></td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-success">Active</span></td>
												<td>
													<div class="list-icons">
				                		<a href="#" class="list-icons-item text-primary-600"><i class="icon-pencil7"></i></a>
				                		<a href="#" class="list-icons-item text-danger-600"><i class="icon-trash"></i></a>
				                		<a href="#" class="list-icons-item text-teal-600"><i class="icon-cog6"></i></a>
				                	</div>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td><input type="file" class="form-control h-auto"></td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-danger">Suspended</span></td>
												<td>
													<div class="list-icons">
														<div class="dropdown">
									            <a href="#" class="list-icons-item dropdown-toggle" data-toggle="dropdown"><i class="icon-cog6"></i></a>
															<div class="dropdown-menu">
																<div class="dropdown-header">Options</div>
																<a href="#" class="dropdown-item"><i class="icon-pencil7"></i>Edit entry</a>
																<a href="#" class="dropdown-item"><i class="icon-bin"></i>Remove entry</a>
																<div class="dropdown-header">Export</div>
																<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
																<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
																<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
															</div>
								                		</div>
								                	</div>
												</td>
											</tr>
											<tr>
												<td>4</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td><input type="text" class="form-control" placeholder="Text input"></td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-info">Pending</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot	</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-secondary">Inactive</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td>Jackelyn</td>
												<td><button type="button" class="btn btn-success">Basic button</button></td>
												<td><select name="select" class="form-control form-input-styled" data-fouc>
				                                    <option value="opt1">Styled select box</option>
				                                    <option value="opt2">Option 2</option>
				                                    <option value="opt3">Option 3</option>
				                                    <option value="opt4">Option 4</option>
				                                    <option value="opt5">Option 5</option>
				                                    <option value="opt6">Option 6</option>
				                                    <option value="opt7">Option 7</option>
				                                    <option value="opt8">Option 8</option>
				                                </select></td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-success">Active</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-danger">Suspended</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>4</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-info">Pending</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-secondary">Inactive</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>2</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-success">Active</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-danger">Suspended</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
											<tr>
												<td>4</td>
												<td>Jackelyn</td>
												<td>Weible</td>
												<td>Airline Transport Pilot</td>
												<td>3 Oct 1981</td>
												<td><span class="badge badge-info">Pending</span></td>
												<td>
													<div class="list-icons">
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Edit" data-container="body">
					                			<i class="icon-pencil7"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Remove" data-container="body">
					                			<i class="icon-trash"></i>
				                			</a>
					                		<a href="#" class="list-icons-item" data-popup="tooltip" title="Options" data-container="body">
					                			<i class="icon-cog6"></i>
				                			</a>
					                	</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</fieldset>
							<!--Scrollable table close-->

							<!--Scrollable table header Fixed-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Scrollable table header Fixed</legend>
								<table class="table datatable-scroll-y" width="100%">
									<thead>
										<tr>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Job Title</th>
											<th>DOB</th>
											<th>Status</th>
											<th class="text-center">Actions</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Marth</td>
											<td><a href="#">Enright</a></td>
											<td>Traffic Court Referee</td>
											<td>22 Jun 1972</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Jackelyn</td>
											<td>Weible</td>
											<td><a href="#">Airline Transport Pilot</a></td>
											<td>3 Oct 1981</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Aura</td>
											<td>Hard</td>
											<td>Business Services Sales Representative</td>
											<td>19 Apr 1969</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Nathalie</td>
											<td><a href="#">Pretty</a></td>
											<td>Drywall Stripper</td>
											<td>13 Dec 1977</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Sharan</td>
											<td>Leland</td>
											<td>Aviation Tactical Readiness Officer</td>
											<td>30 Dec 1991</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Maxine</td>
											<td><a href="#">Woldt</a></td>
											<td><a href="#">Business Services Sales Representative</a></td>
											<td>17 Oct 1987</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Sylvia</td>
											<td><a href="#">Mcgaughy</a></td>
											<td>Hemodialysis Technician</td>
											<td>11 Nov 1983</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Lizzee</td>
											<td><a href="#">Goodlow</a></td>
											<td>Technical Services Librarian</td>
											<td>1 Nov 1961</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Kennedy</td>
											<td>Haley</td>
											<td>Senior Marketing Designer</td>
											<td>18 Dec 1960</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Chantal</td>
											<td><a href="#">Nailor</a></td>
											<td>Technical Services Librarian</td>
											<td>10 Jan 1980</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Delma</td>
											<td>Bonds</td>
											<td>Lead Brand Manager</td>
											<td>21 Dec 1968</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Roland</td>
											<td>Salmos</td>
											<td><a href="#">Senior Program Developer</a></td>
											<td>5 Jun 1986</td>
											<td><span class="badge badge-secondary">Inactive</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Coy</td>
											<td>Wollard</td>
											<td>Customer Service Operator</td>
											<td>12 Oct 1982</td>
											<td><span class="badge badge-success">Active</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Maxwell</td>
											<td>Maben</td>
											<td>Regional Representative</td>
											<td>25 Feb 1988</td>
											<td><span class="badge badge-danger">Suspended</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>Cicely</td>
											<td>Sigler</td>
											<td><a href="#">Senior Research Officer</a></td>
											<td>15 Mar 1960</td>
											<td><span class="badge badge-info">Pending</span></td>
											<td class="text-center">
												<div class="list-icons">
													<div class="dropdown">
														<a href="#" class="list-icons-item" data-toggle="dropdown">
															<i class="icon-menu9"></i>
														</a>

														<div class="dropdown-menu dropdown-menu-right">
															<a href="#" class="dropdown-item"><i class="icon-file-pdf"></i> Export to .pdf</a>
															<a href="#" class="dropdown-item"><i class="icon-file-excel"></i> Export to .csv</a>
															<a href="#" class="dropdown-item"><i class="icon-file-word"></i> Export to .doc</a>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<!--Scrollable table header close-->

							<!--Left fixed column-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Left fixed column</legend>
								<table class="table datatable-fixed-left" width="100%">
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
							</fieldset>
							<!--Left fixed column-->

							<!--Right fixed column-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Right fixed column</legend>
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
							</fieldset>
							<!--Right fixed column close-->

							<!--Multiple fixed columns-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Multiple fixed columns</legend>
								<table class="table datatable-fixed-both" width="100%">
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
							</fieldset>

						</form>
					</div>
				</div>
				<!-- /form inputs -->
<a id="back2Top" class="form-control" title="Back to top" href="#"><i class="icon-arrow-up16 mr-2 icon-1x"></i></a>

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

<script type="text/javascript">
/*Scroll to top when arrow up clicked BEGIN*/
$(window).scroll(function() {
	var height = $(window).scrollTop();
	
	if (height > 100) {
			$('#back2Top').fadeIn();
	} else {
			$('#back2Top').fadeOut();
	}
});
$(document).ready(function() {
	$("#back2Top").click(function(event) {
			event.preventDefault();
			$("html, body").animate({ scrollTop: 0 }, "slow");
			return false;
	});

});
/*Scroll to top when arrow up clicked END*/

	</script>
</body>
</html>