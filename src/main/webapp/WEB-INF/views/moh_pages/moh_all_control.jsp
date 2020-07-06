

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




	<div class="page-content">

		<!-- Main sidebar -->
		<jsp:include page="/WEB-INF/views/include/left.jsp"></jsp:include>
		<!-- /main sidebar -->


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light"></div>
			<!-- /page header -->


			<div class="content">

				<!-- Form inputs -->
				<div class="card">


					<div class="card-body">


						<form action="#">

							<!--basic inputs -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Basic
									inputs</legend>
								<!--3 colum input field-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">First Name</label>
											<div class="col-lg-8">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Middle Name</label>
											<div class="col-lg-8">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Last Name</label>
											<div class="col-lg-8">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
								</div>

								<!--2 colum input field-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">First Name</label>
											<div class="col-lg-9">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Last Name</label>
											<div class="col-lg-9">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
								</div>

								<!--1 colum input field-->
								<div class="form-group row">
									<label class="col-form-label col-lg-2">Single Row</label>
									<div class="col-lg-10">
										<input type="text" class="form-control">
									</div>
								</div>
							</fieldset>
							<!--basic inputs close -->

							<!-- basic textarea -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Basic
									Textarea</legend>
								<!--3 colum textarea-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Textarea</label>
											<div class="col-lg-8">
												<textarea rows="3" cols="3" class="form-control"
													placeholder=""></textarea>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Textarea</label>
											<div class="col-lg-8">
												<textarea rows="3" cols="3" class="form-control"
													placeholder=""></textarea>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Textarea</label>
											<div class="col-lg-8">
												<textarea rows="3" cols="3" class="form-control"
													placeholder=""></textarea>
											</div>
										</div>
									</div>
								</div>

								<!--2 colum textarea-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Textarea</label>
											<div class="col-lg-9">
												<textarea rows="3" cols="3" class="form-control"
													placeholder=""></textarea>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Textarea</label>
											<div class="col-lg-9">
												<textarea rows="3" cols="3" class="form-control"
													placeholder=""></textarea>
											</div>
										</div>
									</div>
								</div>

								<!--1 colum input field-->
								<div class="form-group row">
									<label class="col-form-label col-lg-2">Textarea</label>
									<div class="col-lg-10">
										<textarea rows="3" cols="3" class="form-control"
											placeholder=""></textarea>
									</div>
								</div>
							</fieldset>
							<!-- basic textarea close -->

							<!-- file input -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">File
									Input</legend>
								<!--2 colum file input-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Styled file
												input</label>
											<div class="col-lg-9">
												<input type="file" class="form-control-uniform" data-fouc>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Styled file
												input</label>
											<div class="col-lg-9">
												<input type="file" class="form-control-uniform" data-fouc>
											</div>
										</div>
									</div>
								</div>

								<!--single file input-->
								<div class="form-group row">
									<label class="col-form-label col-lg-2">Styled file
										input</label>
									<div class="col-lg-10">
										<input type="file" class="form-control-uniform" data-fouc>
									</div>
								</div>

							</fieldset>
							<!-- file input close -->

							<!-- select box -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Basic
									Select</legend>
								<!--3 colum Select-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Single select</label>
											<div class="col-lg-8">
												<select class="form-control">
													<option value="opt1">Default select box</option>
													<option value="opt2">Option 2</option>
													<option value="opt3">Option 3</option>
													<option value="opt4">Option 4</option>
													<option value="opt5">Option 5</option>
													<option value="opt6">Option 6</option>
													<option value="opt7">Option 7</option>
													<option value="opt8">Option 8</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Single select</label>
											<div class="col-lg-8">
												<select class="form-control">
													<option value="opt1">Default select box</option>
													<option value="opt2">Option 2</option>
													<option value="opt3">Option 3</option>
													<option value="opt4">Option 4</option>
													<option value="opt5">Option 5</option>
													<option value="opt6">Option 6</option>
													<option value="opt7">Option 7</option>
													<option value="opt8">Option 8</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-lg-4">Single select</label>
											<div class="col-lg-8">
												<select class="form-control">
													<option value="opt1">Default select box</option>
													<option value="opt2">Option 2</option>
													<option value="opt3">Option 3</option>
													<option value="opt4">Option 4</option>
													<option value="opt5">Option 5</option>
													<option value="opt6">Option 6</option>
													<option value="opt7">Option 7</option>
													<option value="opt8">Option 8</option>
												</select>
											</div>
										</div>
									</div>
								</div>

								<!--2 colum Select-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Single select</label>
											<div class="col-lg-9">
												<select class="form-control">
													<option value="opt1">Default select box</option>
													<option value="opt2">Option 2</option>
													<option value="opt3">Option 3</option>
													<option value="opt4">Option 4</option>
													<option value="opt5">Option 5</option>
													<option value="opt6">Option 6</option>
													<option value="opt7">Option 7</option>
													<option value="opt8">Option 8</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-lg-3">Single select</label>
											<div class="col-lg-9">
												<select class="form-control">
													<option value="opt1">Default select box</option>
													<option value="opt2">Option 2</option>
													<option value="opt3">Option 3</option>
													<option value="opt4">Option 4</option>
													<option value="opt5">Option 5</option>
													<option value="opt6">Option 6</option>
													<option value="opt7">Option 7</option>
													<option value="opt8">Option 8</option>
												</select>
											</div>
										</div>
									</div>
								</div>

								<!--single colum Select-->
								<div class="form-group row">
									<label class="col-form-label col-lg-2">Single select</label>
									<div class="col-lg-10">
										<select class="form-control">
											<option value="opt1">Default select box</option>
											<option value="opt2">Option 2</option>
											<option value="opt3">Option 3</option>
											<option value="opt4">Option 4</option>
											<option value="opt5">Option 5</option>
											<option value="opt6">Option 6</option>
											<option value="opt7">Option 7</option>
											<option value="opt8">Option 8</option>
										</select>
									</div>
								</div>
							</fieldset>
							<!-- select box close -->

							<!--validation box-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">Validation
									States</legend>
								<!--3 colum validation-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label
												class="col-form-label col-lg-4 font-weight-semibold text-success">Valid
												state</label>
											<div class="col-lg-8">
												<input type="text" class="form-control border-success"
													placeholder="Valid state"> <span
													class="form-text text-success">Valid state helper</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label
												class="col-form-label col-lg-4 font-weight-semibold text-danger">Invalid
												state</label>
											<div class="col-lg-8">
												<input type="text" class="form-control border-danger"
													placeholder="Invalid state"> <span
													class="form-text text-danger">Invalid state helper</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label
												class="col-form-label col-lg-4 font-weight-semibold text-success">Valid
												state</label>
											<div class="col-lg-8">
												<input type="text" class="form-control border-success"
													placeholder="Valid state"> <span
													class="form-text text-success">Valid state helper</span>
											</div>
										</div>
									</div>
								</div>

								<!--2 colum validation-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label
												class="col-form-label col-lg-3 font-weight-semibold text-success">Valid
												state</label>
											<div class="col-lg-9">
												<input type="text" class="form-control border-success"
													placeholder="Valid state"> <span
													class="form-text text-success">Valid state helper</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label
												class="col-form-label col-lg-3 font-weight-semibold text-danger">Invalid
												state</label>
											<div class="col-lg-9">
												<input type="text" class="form-control border-danger"
													placeholder="Invalid state"> <span
													class="form-text text-danger">Invalid state helper</span>
											</div>
										</div>
									</div>
								</div>

								<!--single validation-->
								<div class="form-group row">
									<label
										class="col-form-label col-lg-2 font-weight-semibold text-success">Valid
										state</label>
									<div class="col-lg-10">
										<input type="text" class="form-control border-success"
											placeholder="Valid state"> <span
											class="form-text text-success">Valid state helper</span>
									</div>
								</div>

								<!--single validation-->
								<div class="form-group row">
									<label
										class="col-form-label col-lg-2 font-weight-semibold text-danger">Invalid
										state</label>
									<div class="col-lg-10">
										<input type="text" class="form-control border-danger"
											placeholder="Invalid state"> <span
											class="form-text text-danger">Invalid state helper</span>
									</div>
								</div>
							</fieldset>
							<!--validation box close-->

							<!--datetime picker-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Datetime Picker</legend>
								<!--3 colum Date Picker-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Datetime</label>
											<div class="col-md-8">
												<input class="form-control " type="datetime-local"
													name="datetime-local">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Datetime</label>
											<div class="col-md-8">
												<input class="form-control" type="datetime-local"
													name="datetime-local">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Datetime</label>
											<div class="col-md-8">
												<input class="form-control" type="datetime-local"
													name="datetime-local">
											</div>
										</div>
									</div>
								</div>

								<!--2 colum Date Picker-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-md-3">Datetime</label>
											<div class="col-md-9">
												<input class="form-control" type="datetime-local"
													name="datetime-local">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-md-3">Datetime</label>
											<div class="col-md-9">
												<input class="form-control" type="datetime-local"
													name="datetime-local">
											</div>
										</div>
									</div>
								</div>

								<!--single colum date picker-->
								<div class="form-group row">
									<label class="col-form-label col-md-2">Datetime</label>
									<div class="col-md-10">
										<input class="form-control" type="datetime-local"
											name="datetime-local">
									</div>
								</div>
							</fieldset>
							<!--datetime picker close-->

							<!--datepicker -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Date Picker xx</legend>
								<!--3 colum Date Picker-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Date33</label>
											<div class="col-md-8">
												<input class="form-control datepickerclass" type="text"
													name="date1">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Date44</label>
											<div class="col-md-8">
												<input class="form-control datepickerclass" type="text" name="date2">
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-form-label col-md-4">Date55</label>
											<div class="col-md-8">
												<input class="form-control datepickerclass" type="text" name="date3">
											</div>
										</div>
									</div>
								</div>

								<!--2 colum Date Picker-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-md-3">Date</label>
											<div class="col-md-9">
												<input class="form-control datepickerclass" type="text" name="date4">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-form-label col-md-3">Date</label>
											<div class="col-md-9">
												<input class="form-control datepickerclass" type="text" name="date5">
											</div>
										</div>
									</div>
								</div>

								<!--single row-->
								<div class="form-group row">
									<label class="col-form-label col-md-2">Date</label>
									<div class="col-md-10">
										<input class="form-control datepickerclass" type="text" name="date6">
									</div>
								</div>
							</fieldset>
							<!--datepicker close -->

							<!--range slider-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Range Slider</legend>
								<div class="form-group row">
									<label class="col-form-label col-md-2">Range</label>
									<div class="col-md-10">
										<input class="form-control" type="range" name="range" min="0"
											max="10">
									</div>
								</div>
							</fieldset>
							<!--range slider close-->

							<!--checkboxes-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Checkboxes</legend>
								<!--inline-checkboxes-->
								<div class="form-group">
									<label class="d-block font-weight-semibold">Left inline
										default</label>
									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input" checked>
											Checked default
										</label>
									</div>

									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"> Unchecked
											default 1
										</label>
									</div>

									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"> Unchecked
											default 2
										</label>
									</div>

									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"> Unchecked
											default 3
										</label>
									</div>

									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"> Unchecked
											default 4
										</label>
									</div>
								</div>

								<!--single line checkboxes-->
								<div class="form-group">
									<label class="font-weight-semibold">Left stacked
										default</label>
									<div class="form-check">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"
											name="unstyled-radio-left" checked> Selected default
										</label>
									</div>

									<div class="form-check">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input"
											name="unstyled-radio-left"> Unselected default
										</label>
									</div>

									<div class="form-check disabled">
										<label class="form-check-label"> <input
											type="checkbox" class="form-check-input" checked disabled>
											Disabled default
										</label>
									</div>
								</div>

							</fieldset>

							<!--Radio buttons-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Radio buttons </legend>
								<!--inline-radion-->
								<div class="form-group">
									<label class="d-block font-weight-semibold">Left inline
										default</label>
									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="radio-unstyled-inline-left"
											checked> Selected default
										</label>
									</div>

									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="radio-unstyled-inline-left">
											Unselected default
										</label>
									</div>
									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="radio-unstyled-inline-left">
											Unselected default
										</label>
									</div>
									<div class="form-check form-check-inline">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="radio-unstyled-inline-left">
											Unselected default
										</label>
									</div>
								</div>

								<!--single line Radio box-->
								<div class="form-group">
									<label class="font-weight-semibold">Left stacked
										default</label>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="unstyled-radio-left" checked>
											Selected default
										</label>
									</div>

									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="unstyled-radio-left">
											Unselected default
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="unstyled-radio-left">
											Unselected default
										</label>
									</div>


									<div class="form-check disabled">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" checked disabled> Disabled
											default 2
										</label>
									</div>

								</div>

							</fieldset>

							<!--select with search-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Select with search </legend>
								<!--3 colum select with search-->
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label>Select with search</label> <select
												class="form-control select-search" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>Select with search</label> <select
												class="form-control select-search" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>Select with search</label> <select
												class="form-control select-search" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
								</div>

								<!--2 colum select with search-->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Select with search</label> <select
												class="form-control select-search" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Select with search</label> <select
												class="form-control select-search" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ">Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
								</div>

								<!--single select with search -->
								<div class="form-group">
									<label>Select with search</label> <select
										class="form-control select-search" data-fouc>
										<optgroup label="Mountain Time Zone">
											<option value="AZ">Arizona</option>
											<option value="CO">Colorado</option>
											<option value="ID">Idaho</option>
											<option value="WY">Wyoming</option>
										</optgroup>
										<optgroup label="Central Time Zone">
											<option value="AL">Alabama</option>
											<option value="IA">Iowa</option>
											<option value="KS">Kansas</option>
											<option value="KY">Kentucky</option>
										</optgroup>
									</select>
								</div>
							</fieldset>

							<!--Multiple Select-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Multiple selec </legend>
								<!--3 colum select with search-->
								<div class="row">
									<!--1-->
									<div class="col-md-4">
										<div class="form-group">
											<label>Multiple select</label> <select multiple="multiple"
												class="form-control select" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ" selected>Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA" selected>Iowa</option>
													<option value="KS" selected>Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<!--2-->
									<div class="col-md-4">
										<div class="form-group">
											<label>Multiple select</label> <select multiple="multiple"
												class="form-control select" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ" selected>Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA" selected>Iowa</option>
													<option value="KS" selected>Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<!--3-->
									<div class="col-md-4">
										<div class="form-group">
											<label>Multiple select</label> <select multiple="multiple"
												class="form-control select" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ" selected>Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA" selected>Iowa</option>
													<option value="KS" selected>Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>


								</div>


								<!--2 colum select with search-->
								<div class="row">
									<!--1-->
									<div class="col-md-6">
										<div class="form-group">
											<label>Multiple select</label> <select multiple="multiple"
												class="form-control select" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ" selected>Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA" selected>Iowa</option>
													<option value="KS" selected>Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
									<!--2-->
									<div class="col-md-6">
										<div class="form-group">
											<label>Multiple select</label> <select multiple="multiple"
												class="form-control select" data-fouc>
												<optgroup label="Mountain Time Zone">
													<option value="AZ" selected>Arizona</option>
													<option value="CO">Colorado</option>
													<option value="ID">Idaho</option>
													<option value="WY">Wyoming</option>
												</optgroup>
												<optgroup label="Central Time Zone">
													<option value="AL">Alabama</option>
													<option value="IA" selected>Iowa</option>
													<option value="KS" selected>Kansas</option>
													<option value="KY">Kentucky</option>
												</optgroup>
											</select>
										</div>
									</div>
								</div>

								<!--single select with search-->
								<div class="form-group">
									<label>Multiple select</label> <select multiple="multiple"
										class="form-control select" data-fouc>
										<optgroup label="Mountain Time Zone">
											<option value="AZ" selected>Arizona</option>
											<option value="CO">Colorado</option>
											<option value="ID">Idaho</option>
											<option value="WY">Wyoming</option>
										</optgroup>
										<optgroup label="Central Time Zone">
											<option value="AL">Alabama</option>
											<option value="IA" selected>Iowa</option>
											<option value="KS" selected>Kansas</option>
											<option value="KY">Kentucky</option>
										</optgroup>
									</select>
								</div>

							</fieldset>


							<!--buttons examples-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Buttons Examples </legend>
								<div class="row">
									<button type="button" class="btn btn-light">Default
										button</button>
									<button type="button" class="btn ml-1 btn-primary">Default
										button</button>
									<button type="button" class="btn ml-1 btn-danger rounded-round">Rounded
										button</button>
									<button type="button"
										class="btn ml-1 bg-teal-400 btn-labeled btn-labeled-left">
										<b><i class="icon-reading"></i></b> Labeled
									</button>
									<button type="button" class="btn ml-1 btn-link">Linked
										button</button>
									<button type="button" class="btn ml-1 btn-outline-primary">Hoverable</button>
									<button type="button"
										class="btn ml-1 btn-outline-primary border-transparent">Transparent
										border</button>
								</div>
							</fieldset>

							<!--Pagination examples-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Pagination </legend>

								<div class="row">
									<!--Default bordered pagination-->
									<div class="col-md-4">
										<ul class="pagination align-self-center">
											<li class="page-item"><a href="#" class="page-link">&larr;
													&nbsp; Prev</a></li>
											<li class="page-item active"><a href="#"
												class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item"><a href="#" class="page-link">3</a></li>
											<!--disabled-->
											<li class="page-item"><a href="#" class="page-link">4</a></li>
											<li class="page-item"><a href="#" class="page-link">Next
													&nbsp; &rarr;</a></li>
										</ul>
									</div>
									<!--Flat rounded pagination-->
									<div class="col-md-4">
										<ul
											class="pagination pagination-flat pagination-rounded align-self-center">
											<li class="page-item"><a href="#" class="page-link">&larr;
													&nbsp; Prev</a></li>
											<li class="page-item active"><a href="#"
												class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item disabled"><a href="#"
												class="page-link">3</a></li>
											<li class="page-item"><a href="#" class="page-link">4</a></li>
											<li class="page-item"><a href="#" class="page-link">Next
													&nbsp; &rarr;</a></li>
										</ul>
									</div>
									<!--flat pagination-->
									<div class="col-md-4">
										<ul class="pagination pagination-flat align-self-center">
											<li class="page-item"><a href="#" class="page-link"><i
													class="icon-arrow-left12"></i></a></li>
											<li class="page-item active"><a href="#"
												class="page-link">1</a></li>
											<li class="page-item"><a href="#" class="page-link">2</a></li>
											<li class="page-item disabled"><a href="#"
												class="page-link">3</a></li>
											<li class="page-item"><a href="#" class="page-link">4</a></li>
											<li class="page-item"><a href="#" class="page-link"><i
													class="icon-arrow-right13"></i></a></li>
										</ul>
									</div>
								</div>
							</fieldset>

							<!--Pager component examples-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Pager component </legend>
								<div class="row">
									<!--Default pager-->
									<div class="col-md-4">
										<ul class="pagination pagination-pager justify-content-center">
											<li class="page-item"><a href="#" class="page-link">&larr;
													&nbsp; Previous</a></li>
											<li class="page-item"><a href="#" class="page-link">Next
													&nbsp; &rarr;</a></li>
										</ul>
									</div>
									<!--Rounded pager-->
									<div class="col-md-4">
										<ul
											class="pagination pagination-pager pagination-rounded justify-content-center">
											<li class="page-item"><a href="#" class="page-link">&larr;
													&nbsp; Previous</a></li>
											<li class="page-item"><a href="#" class="page-link">Next
													&nbsp; &rarr;</a></li>
										</ul>
									</div>
									<!--Linked pager-->
									<div class="col-md-4">
										<ul
											class="pagination pagination-pager pagination-pager-linked justify-content-center">
											<li class="page-item"><a href="#" class="page-link">&larr;
													&nbsp; Previous</a></li>
											<li class="page-item"><a href="#" class="page-link">Next
													&nbsp; &rarr;</a></li>
										</ul>
									</div>
								</div>
							</fieldset>


							<!--Modal dialogs examples-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Modal dialogs </legend>
								<div class="row">
									<!--basic modale-->
									<div class="col-md-4">
										<button type="button" class="btn bg-primary"
											data-toggle="modal" data-target="#modal_default">
											Basic modal <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Basic modal -->
										<div id="modal_default" class="modal fade" tabindex="-1">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Basic modal</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<div class="modal-body">
														<h6 class="font-weight-semibold">Text in a modal</h6>
														<p>Duis mollis, est non commodo luctus, nisi erat
															porttitor ligula, eget lacinia odio sem. Praesent commodo
															cursus magna, vel scelerisque nisl consectetur et.
															Vivamus sagittis lacus vel augue laoreet rutrum faucibus
															dolor auctor.</p>

														<hr>

														<h6 class="font-weight-semibold">Another paragraph</h6>
														<p>Cras mattis consectetur purus sit amet fermentum.
															Cras justo odio, dapibus ac facilisis in, egestas eget
															quam. Morbi leo risus, porta ac consectetur ac,
															vestibulum at eros.</p>
														<p>Praesent commodo cursus magna, vel scelerisque nisl
															consectetur et. Vivamus sagittis lacus vel augue laoreet
															rutrum faucibus dolor auctor.</p>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link"
															data-dismiss="modal">Close</button>
														<button type="button" class="btn bg-primary">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
										<!-- /basic modal -->
									</div>

									<!--Mini size modal-->
									<div class="col-md-4">
										<button type="button" class="btn bg-success"
											data-toggle="modal" data-target="#modal_mini">
											Mini size modal <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Mini modal -->
										<div id="modal_mini" class="modal fade" tabindex="-1">
											<div class="modal-dialog modal-xs">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Mini modal</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<div class="modal-body">
														<h6 class="font-weight-semibold">Text in a modal</h6>
														<p>Duis mollis, est non commodo luctus, nisi erat
															porttitor ligula, eget lacinia odio sem. Praesent commodo
															cursus magna, vel scelerisque nisl consectetur et.
															Vivamus sagittis lacus vel augue laoreet rutrum faucibus
															dolor auctor.</p>

														<hr>

														<h6 class="font-weight-semibold">Another paragraph</h6>
														<p>Cras mattis consectetur purus sit amet fermentum.
															Cras justo odio, dapibus ac facilisis in, egestas eget
															quam. Morbi leo risus, porta ac consectetur ac,
															vestibulum at eros.</p>
														<p>Praesent commodo cursus magna, vel scelerisque nisl
															consectetur et. Vivamus sagittis lacus vel augue laoreet
															rutrum faucibus dolor auctor.</p>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link"
															data-dismiss="modal">Close</button>
														<button type="button" class="btn bg-primary">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
										<!-- /mini modal -->
									</div>

									<!--Small size modal-->
									<div class="col-md-4">
										<button type="button" class="btn bg-warning"
											data-toggle="modal" data-target="#modal_small">
											Small size modal <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Small modal -->
										<div id="modal_small" class="modal fade" tabindex="-1">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Small modal</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<div class="modal-body">
														<h6 class="font-weight-semibold">Text in a modal</h6>
														<p>Duis mollis, est non commodo luctus, nisi erat
															porttitor ligula, eget lacinia odio sem. Praesent commodo
															cursus magna, vel scelerisque nisl consectetur et.
															Vivamus sagittis lacus vel augue laoreet rutrum faucibus
															dolor auctor.</p>

														<hr>

														<h6 class="font-weight-semibold">Another paragraph</h6>
														<p>Cras mattis consectetur purus sit amet fermentum.
															Cras justo odio, dapibus ac facilisis in, egestas eget
															quam. Morbi leo risus, porta ac consectetur ac,
															vestibulum at eros.</p>
														<p>Praesent commodo cursus magna, vel scelerisque nisl
															consectetur et. Vivamus sagittis lacus vel augue laoreet
															rutrum faucibus dolor auctor.</p>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link"
															data-dismiss="modal">Close</button>
														<button type="button" class="btn bg-primary">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
										<!-- /small modal -->
									</div>

									<!--Large size modal-->
									<div class="col-md-4" style="margin: 20px 0 0 0;">
										<button type="button" class="btn bg-brown" data-toggle="modal"
											data-target="#modal_large">
											Large modal <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Large modal -->
										<div id="modal_large" class="modal fade" tabindex="-1">
											<div class="modal-dialog modal-lg">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Large modal</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<div class="modal-body">
														<h6 class="font-weight-semibold">Text in a modal</h6>
														<p>Duis mollis, est non commodo luctus, nisi erat
															porttitor ligula, eget lacinia odio sem. Praesent commodo
															cursus magna, vel scelerisque nisl consectetur et.
															Vivamus sagittis lacus vel augue laoreet rutrum faucibus
															dolor auctor.</p>

														<hr>

														<h6 class="font-weight-semibold">Another paragraph</h6>
														<p>Cras mattis consectetur purus sit amet fermentum.
															Cras justo odio, dapibus ac facilisis in, egestas eget
															quam. Morbi leo risus, porta ac consectetur ac,
															vestibulum at eros.</p>
														<p>Praesent commodo cursus magna, vel scelerisque nisl
															consectetur et. Vivamus sagittis lacus vel augue laoreet
															rutrum faucibus dolor auctor.</p>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link"
															data-dismiss="modal">Close</button>
														<button type="button" class="btn bg-primary">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
										<!-- /large modal -->
									</div>

									<!--Full size modal-->
									<div class="col-md-4" style="margin: 20px 0 0 0;">
										<button type="button" class="btn bg-teal-300"
											data-toggle="modal" data-target="#modal_full">
											Full width modal <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Full width modal -->
										<div id="modal_full" class="modal fade" tabindex="-1">
											<div class="modal-dialog modal-full">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Full width modal</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<div class="modal-body">
														<h6 class="font-weight-semibold">Text in a modal</h6>
														<p>Duis mollis, est non commodo luctus, nisi erat
															porttitor ligula, eget lacinia odio sem. Praesent commodo
															cursus magna, vel scelerisque nisl consectetur et.
															Vivamus sagittis lacus vel augue laoreet rutrum faucibus
															dolor auctor.</p>

														<hr>

														<h6 class="font-weight-semibold">Another paragraph</h6>
														<p>Cras mattis consectetur purus sit amet fermentum.
															Cras justo odio, dapibus ac facilisis in, egestas eget
															quam. Morbi leo risus, porta ac consectetur ac,
															vestibulum at eros.</p>
														<p>Praesent commodo cursus magna, vel scelerisque nisl
															consectetur et. Vivamus sagittis lacus vel augue laoreet
															rutrum faucibus dolor auctor.</p>
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link"
															data-dismiss="modal">Close</button>
														<button type="button" class="btn bg-primary">Save
															changes</button>
													</div>
												</div>
											</div>
										</div>
										<!-- /full width modal -->
									</div>

									<!--Vertical form-->
									<div class="col-md-4" style="margin: 20px 0 0 0;">
										<button type="button" class="btn btn-light"
											data-toggle="modal" data-target="#modal_form_vertical">
											Vertical form <i class="icon-play3 ml-2"></i>
										</button>
										<!-- Vertical form modal -->
										<div id="modal_form_vertical" class="modal fade" tabindex="-1">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title">Vertical form</h5>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>

													<form action="#">
														<div class="modal-body">
															<div class="form-group">
																<div class="row">
																	<div class="col-sm-6">
																		<label>First name</label> <input type="text"
																			placeholder="Eugene" class="form-control">
																	</div>

																	<div class="col-sm-6">
																		<label>Last name</label> <input type="text"
																			placeholder="Kopyov" class="form-control">
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
															<button type="submit" class="btn bg-primary">Submit
																form</button>
														</div>
													</form>
												</div>
											</div>
										</div>
										<!-- /vertical form modal -->
									</div>
								</div>
							</fieldset>

							<!--tabs-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Tabs </legend>
								<div class="row">
									<div class="col-md-6">
										<!--basic tab-->
										<ul class="nav nav-tabs">
											<li class="nav-item"><a href="#basic-tab1"
												class="nav-link active" data-toggle="tab">Active</a></li>
											<li class="nav-item"><a href="#basic-tab2"
												class="nav-link" data-toggle="tab">Inactive</a></li>
											<li class="nav-item dropdown"><a href="#"
												class="nav-link dropdown-toggle" data-toggle="dropdown">Dropdown</a>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#basic-tab3" class="dropdown-item"
														data-toggle="tab">Dropdown tab</a> <a href="#basic-tab4"
														class="dropdown-item" data-toggle="tab">Another tab</a>
												</div></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane fade show active" id="basic-tab1">
												Basic tabs example using
												<code>.nav-tabs</code>
												class. Also requires base
												<code>.nav</code>
												class.
											</div>

											<div class="tab-pane fade" id="basic-tab2">Food truck
												fixie locavore, accusamus mcsweeney's marfa nulla
												single-origin coffee squid laeggin.</div>

											<div class="tab-pane fade" id="basic-tab3">DIY synth
												PBR banksy irony. Leggings gentrify squid 8-bit cred
												pitchfork. Williamsburg whatever.</div>

											<div class="tab-pane fade" id="basic-tab4">Aliquip jean
												shorts ullamco ad vinyl cillum PBR. Homo nostrud organic,
												assumenda labore aesthet.</div>
										</div>
									</div>
									<div class="col-md-6">
										<!--Basic justified-->
										<ul class="nav nav-tabs nav-justified">
											<li class="nav-item"><a href="#basic-justified-tab1"
												class="nav-link active" data-toggle="tab">Active</a></li>
											<li class="nav-item"><a href="#basic-justified-tab2"
												class="nav-link" data-toggle="tab">Inactive</a></li>
											<li class="nav-item dropdown"><a href="#"
												class="nav-link dropdown-toggle" data-toggle="dropdown">Dropdown</a>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#basic-justified-tab3" class="dropdown-item"
														data-toggle="tab">Dropdown tab</a> <a
														href="#basic-justified-tab4" class="dropdown-item"
														data-toggle="tab">Another tab</a>
												</div></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="basic-justified-tab1">
												Easily make tabs equal widths of their parent with
												<code>.nav-justified</code>
												class.
											</div>

											<div class="tab-pane fade" id="basic-justified-tab2">
												Food truck fixie locavore, accusamus mcsweeney's marfa nulla
												single-origin coffee squid laeggin.</div>

											<div class="tab-pane fade" id="basic-justified-tab3">
												DIY synth PBR banksy irony. Leggings gentrify squid 8-bit
												cred pitchfork. Williamsburg whatever.</div>

											<div class="tab-pane fade" id="basic-justified-tab4">
												Aliquip jean shorts ullamco ad vinyl cillum PBR. Homo
												nostrud organic, assumenda labore aesthet.</div>
										</div>
									</div>
								</div>
							</fieldset>

							<!--Dropdown menus-->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Dropdowns </legend>
								<div class="row">
									<!--basic dropdown-->
									<div class="col-md-4">
										<div class="dropdown-menu"
											style="display: block; position: static; width: 100%; margin-top: 0; float: none; z-index: auto;">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item">Something else here</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item">One more separated line</a>
										</div>
									</div>

									<!--Disabled dropdown items-->
									<div class="col-md-4">
										<div class="dropdown-menu"
											style="display: block; position: static; width: 100%; margin-top: 0; float: none; z-index: auto;">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item disabled">Disabled item</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item">One more separated line</a>
										</div>
									</div>

									<!--Active menu item-->
									<div class="col-md-4">
										<div class="dropdown-menu"
											style="display: block; position: static; width: 100%; margin-top: 0; float: none; z-index: auto;">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item active">Active item</a> <a href="#"
												class="dropdown-item">Something else here</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item">One more separated line</a>
										</div>
									</div>

									<!--cllick to open mennu-->
									<div class="col-md-4" style="margin: 20px 0 0 0;">
										<a href="#" class="btn bg-indigo-400 dropdown-toggle"
											data-toggle="dropdown">Submenu on click</a>
										<div class="dropdown-menu">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item">Something else here</a>
											<div class="dropdown-divider"></div>
											<div class="dropdown-submenu">
												<a href="#" class="dropdown-item dropdown-toggle">More
													options</a>
												<div class="dropdown-menu">
													<a href="#" class="dropdown-item">Second level link</a>
													<div class="dropdown-submenu">
														<a href="#" class="dropdown-item dropdown-toggle">Second
															level link</a>
														<div class="dropdown-menu">
															<a href="#" class="dropdown-item">Third level link</a> <a
																href="#" class="dropdown-item">Third level link</a> <a
																href="#" class="dropdown-item">Third level link</a>
														</div>
													</div>
													<a href="#" class="dropdown-item">Second level link</a>
												</div>
											</div>
										</div>
									</div>

									<!--hover menu-->
									<div class="col-md-4" style="margin: 20px 0 0 0;">
										<a href="#" class="btn bg-teal-400 dropdown-toggle"
											data-toggle="dropdown">Submenu on hover</a>

										<div class="dropdown-menu">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item">Something else here</a>
											<div class="dropdown-divider"></div>
											<div class="dropdown-submenu">
												<a href="#" class="dropdown-item">More options</a>
												<div class="dropdown-menu">
													<a href="#" class="dropdown-item">Second level link</a>
													<div class="dropdown-submenu">
														<a href="#" class="dropdown-item">Second level link</a>
														<div class="dropdown-menu">
															<a href="#" class="dropdown-item">Third level link</a> <a
																href="#" class="dropdown-item">Third level link</a> <a
																href="#" class="dropdown-item">Third level link</a>
														</div>
													</div>
													<a href="#" class="dropdown-item">Second level link</a>
												</div>
											</div>
										</div>
									</div>

								</div>
							</fieldset>

							<!--accordion-Collapsible -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Dropdowns </legend>
								<div class="row">
									<!--Inline or block element-->
									<div class="col-md-4">
										<span class="font-weight-semibold cursor-pointer"
											data-toggle="collapse" data-target="#collapse-text">
											Toggle content </span>
										<div class="collapse" id="collapse-text">
											<div class="mt-3">Anim pariatur cliche reprehenderit,
												enim eiusmod high life accusamus terry richardson ad squid.
												3 wolf moon officia aute, non cupidatat skateboard dolor
												brunch.</div>
										</div>
									</div>

									<!--Text and other links-->
									<div class="col-md-4">
										<a href="#collapse-link" class="font-weight-semibold"
											data-toggle="collapse">Toggle content</a>
										<div class="collapse" id="collapse-link">
											<div class="mt-3">Anim pariatur cliche reprehenderit,
												enim eiusmod high life accusamus terry richardson ad squid.
												3 wolf moon officia aute, non cupidatat skateboard dolor
												brunch.</div>
										</div>
									</div>

									<!--Simgle or multiple icons-->
									<div class="col-md-4">
										<a href="#collapse-icon" class="text-default"
											data-toggle="collapse"><i class="icon-circle-down2"></i></a>
										<div class="collapse" id="collapse-icon">
											<div class="mt-3">Anim pariatur cliche reprehenderit,
												enim eiusmod high life accusamus terry richardson ad squid.
												3 wolf moon officia aute, non cupidatat skateboard dolor
												brunch.</div>
										</div>
									</div>
								</div>
							</fieldset>

							<!--Basic accordion-Group -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Basic accordion </legend>
								<div class="row">
									<div class="col-md-6">
										<div id="accordion-group">
											<div class="card mb-0 rounded-bottom-0">
												<div class="card-header">
													<h6 class="card-title">
														<a data-toggle="collapse" class="text-default"
															href="#accordion-item-group1">Accordion Item #1</a>
													</h6>
												</div>

												<div id="accordion-item-group1" class="collapse show"
													data-parent="#accordion-group">
													<div class="card-body">Anim pariatur cliche
														reprehenderit, enim eiusmod high life accusamus terry
														richardson ad squid. 3 wolf moon officia aute, non
														cupidatat skateboard dolor brunch.</div>
												</div>
											</div>

											<div class="card mb-0 rounded-0 border-y-0">
												<div class="card-header">
													<h6 class="card-title">
														<a class="collapsed text-default" data-toggle="collapse"
															href="#accordion-item-group2">Accordion Item #2</a>
													</h6>
												</div>

												<div id="accordion-item-group2" class="collapse"
													data-parent="#accordion-group">
													<div class="card-body">Тon cupidatat skateboard dolor
														brunch. Тesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda.</div>
												</div>
											</div>

											<div class="card rounded-top-0">
												<div class="card-header">
													<h6 class="card-title">
														<a class="collapsed text-default" data-toggle="collapse"
															href="#accordion-item-group3">Accordion Item #3</a>
													</h6>
												</div>

												<div id="accordion-item-group3" class="collapse"
													data-parent="#accordion-group">
													<div class="card-body">3 wolf moon officia aute, non
														cupidatat skateboard dolor brunch. Food truck quinoa
														nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
														aliqua put a bird on it.</div>
												</div>
											</div>
										</div>
										<!-- /accordion group -->
									</div>
									<div class="col-md-6">
										<div>
											<div class="card mb-0 rounded-bottom-0">
												<div class="card-header">
													<h6 class="card-title">
														<a data-toggle="collapse" class="text-default"
															href="#collapsible-item-group1">Collapsible Item #1</a>
													</h6>
												</div>

												<div id="collapsible-item-group1" class="collapse show">
													<div class="card-body">Anim pariatur cliche
														reprehenderit, enim eiusmod high life accusamus terry
														richardson ad squid. 3 wolf moon officia aute, non
														cupidatat skateboard dolor brunch.</div>
												</div>
											</div>

											<div class="card mb-0 rounded-0 border-y-0">
												<div class="card-header">
													<h6 class="card-title">
														<a class="collapsed text-default" data-toggle="collapse"
															href="#collapsible-item-group2">Collapsible Item #2</a>
													</h6>
												</div>

												<div id="collapsible-item-group2" class="collapse">
													<div class="card-body">Тon cupidatat skateboard dolor
														brunch. Тesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda.</div>
												</div>
											</div>

											<div class="card rounded-top-0">
												<div class="card-header">
													<h6 class="card-title">
														<a class="collapsed text-default" data-toggle="collapse"
															href="#collapsible-item-group3">Collapsible Item #3</a>
													</h6>
												</div>

												<div id="collapsible-item-group3" class="collapse">
													<div class="card-body">3 wolf moon officia aute, non
														cupidatat skateboard dolor brunch. Food truck quinoa
														nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
														aliqua put a bird on it.</div>
												</div>
											</div>
										</div>
										<!-- /collapsible group -->
									</div>
								</div>
							</fieldset>

							<!-- Tooltip -->
							<fieldset class="mb-3">
								<legend class="text-uppercase font-size-sm font-weight-bold">
									Tool Tips </legend>
								<div class="row">
									<div class="col-md-3">
										<button type="button" class="btn btn-primary"
											data-popup="tooltip" title="Top tooltip">
											Top Tooltip <i class="icon-play3 ml-2"></i>
										</button>
									</div>
									<div class="col-md-3">
										<button type="button" class="btn btn-primary"
											data-popup="tooltip" title="Right tooltip"
											data-placement="right">
											Right Tooltip <i class="icon-play3 ml-2"></i>
										</button>
									</div>
									<div class="col-md-3">
										<button type="button" class="btn btn-primary"
											data-popup="tooltip" title="Bottom tooltip"
											data-placement="bottom">
											Bottom Tooltip <i class="icon-play3 ml-2"></i>
										</button>
									</div>
									<div class="col-md-3">
										<button type="button" class="btn btn-primary"
											data-popup="tooltip" title="Left tooltip"
											data-placement="left" id="left">
											Left Tooltip <i class="icon-play3 ml-2"></i>
										</button>
									</div>
								</div>
							</fieldset>


							<!-- <div class="text-right">
								<button type="submit" class="btn btn-primary">Submit <i class="icon-paperplane ml-2"></i></button>
							</div> -->
						</form>
					</div>
				</div>

				<!-- /form inputs -->


			</div>


			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
			<!-- /footer -->
		</div>
	</div>
	<script type="text/javascript">
	
	$('.datepickerclass').daterangepicker({
		"autoUpdateInput" : true,
		singleDatePicker : true,
		selectMonths : true,
		selectYears : true,
		locale : {
			format : 'DD-MM-YYYY'
		}
	});
	
	</script>
</body>
</html>


