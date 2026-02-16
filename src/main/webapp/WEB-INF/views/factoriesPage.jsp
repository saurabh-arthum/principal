
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Factories - SmartHR</title>
<link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/style.css" rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body onload="loadFactoriesFromBackend();">
	<div class="sidebar-overlay" id="sidebarOverlay"></div>

	<div class="d-flex flex-column flex-lg-row">

		<%--sidebar--%>
		<jsp:include page="sidebar.jsp"></jsp:include>


		<!-- Main Content Area -->
		<div class="flex-grow-1 bg-light">
			<%--        topnav--%>
			<jsp:include page="topnav.jsp"></jsp:include>
			<!-- Top Header -->

			<div class="dashboard-content">
				<!-- Page Header -->
				<div
					class="d-flex flex-column flex-md-row justify-content-between align-items-md-center mb-4 gap-3">
					<div>
						<h3 class="fw-bold mb-0" style="font-size: 24px; color: #1a202c;">Factory
							Network</h3>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0" style="font-size: 11px;">
								<li class="breadcrumb-item"><a href="index.html"
									class="text-decoration-none text-muted">Dashboard</a></li>
								<li class="breadcrumb-item active">Factories</li>
							</ol>
						</nav>
					</div>

					<div
						class="d-flex align-items-center gap-3 justify-content-between justify-content-md-start">
						<button class="btn btn-sm border shadow-sm"
							style="background: #fff; color: #E4520D;" data-bs-toggle="modal"
							data-bs-target="#bulkUploadModal">
							<i class="fa-solid fa-upload me-1"></i> Bulk Upload
						</button>
						<button
							class="btn btn-orange btn-sm px-3 rounded-2 text-white border-0 bg-orange"
							style="background-color: #E4520D;" data-bs-toggle="modal"
							data-bs-target="#addFactoryModal">
							<i class="fa-solid fa-plus me-2"></i> Add New Factory
						</button>
					</div>
				</div>

				<!-- In-Page Filter Bar -->
				<div class="filter-bar">
					<div class="row g-3 align-items-end">
						<div class="col-12 col-md-4 col-lg-4">
							<label class="filter-label">Quick Search</label>
							<div class="input-group">
								<span class="input-group-text bg-transparent border-end-0"><i
									class="fa-solid fa-search text-muted"></i></span> <input type="text"
									class="form-control filter-input border-start-0"
									id="inPageSearch"
									placeholder="Search by name, ID, address, district or state...">
							</div>
						</div>
						<div class="col-6 col-md-3 col-lg-2">
							<label class="filter-label">Attendance Type</label> <select
								class="form-select filter-input" id="filterStatus">
								<option value="">SELECT</option>
								<option value="ATTENDANCE">ATTENDANCE</option>
								<option value="SHIFT">SHIFT</option>
								<option value="TIMING">TIMING</option>
							</select>
						</div>
						<div class="col-6 col-md-3 col-lg-2">
							<label class="filter-label">State</label> <select
								class="form-select filter-input" id="filterLocation" >
								<c:forEach items="${stateList}" var="state">
											<option value="${state}"
												${selectedState eq state ? 'selected' : ''}>
												${state}</option>
										</c:forEach>
							</select>
						</div>
						<div class="col-12 col-lg-2 text-md-end ms-auto">
							<button
								class="btn btn-link text-muted text-decoration-none small fw-bold"
								id="btnClearFilters">
								<i class="fa-solid fa-rotate-left me-1"></i> Clear Filters
							</button>
						</div>
					</div>
				</div>

				<!-- Stats Grid -->
				<div class="row g-3 mb-4">
					<div class="col-md-3">
						<div class="stat-card compact h-100">
							<div class="d-flex align-items-center gap-3">
								<div class="stat-icon bg-soft-blue"
									style="width: 45px; height: 45px;">
									<i class="fa-solid fa-industry"></i>
								</div>
								<div>
									<div class="stat-title text-muted">Total Factories</div>
									<div class="stat-value" style="font-size: 20px;">24</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stat-card compact h-100">
							<div class="d-flex align-items-center gap-3">
								<div class="stat-icon bg-soft-green"
									style="width: 45px; height: 45px;">
									<i class="fa-solid fa-bolt"></i>
								</div>
								<div>
									<div class="stat-title text-muted">Active Lines</div>
									<div class="stat-value" style="font-size: 20px;">182</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stat-card compact h-100">
							<div class="d-flex align-items-center gap-3">
								<div class="stat-icon bg-soft-orange"
									style="width: 45px; height: 45px;">
									<i class="fa-solid fa-chart-line"></i>
								</div>
								<div>
									<div class="stat-title text-muted">Avg. Efficiency</div>
									<div class="stat-value" style="font-size: 20px;">92.4%</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stat-card compact h-100">
							<div class="d-flex align-items-center gap-3">
								<div class="stat-icon bg-soft-red"
									style="width: 45px; height: 45px;">
									<i class="fa-solid fa-users"></i>
								</div>
								<div>
									<div class="stat-title text-muted">Total Workforce</div>
									<div class="stat-value" style="font-size: 20px;">1,240</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Table View -->
				<div id="factoriesListView" class="factories-list-view"
					style="display: block;">
					<div class="table-responsive">
						<table class="table table-hover align-middle table-list-factory">
							<thead>
								<tr>
									<th>Factory Name</th>
									<th>Address</th>
									<th>District</th>
									<th>State</th>
									<th>Pincode</th>
									<th>Phone</th>
									<th>ESIC Code</th>
									<th>GST</th>
									<th>Attendance Type</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody id="listContainer">
								<!-- Rendered via JS -->
							</tbody>
						</table>
					</div>
				</div>

				<!-- Pagination Footer -->
				<div class="pagination-container">
					<div class="text-muted small fw-bold" id="paginationSummary">
						Showing 1-3 of 24 factories</div>
					<div class="d-flex gap-2" id="paginationControls">
						<!-- Rendered via JS -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Add Factory Modal -->
	<div class="modal fade" id="addFactoryModal" tabindex="-1">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content rounded-4">
				<!-- Header -->
				<div class="modal-header">
					<h5 class="modal-title fw-semibold">Register New Factory</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-times"></i>
					</button>
				</div>

				<!-- Body -->
				<div class="modal-body">
					<form id="addFactoryForm"
						onsubmit="event.preventDefault(); addFactory();">
						<!-- Basic Information -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Basic
							Information</h6>
						<div class="row g-3 mb-4">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Name</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-industry text-muted"></i>
									</span> <input type="text" id="factoryname"
										class="form-control border-0 bg-light"
										placeholder="Enter factory name">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Attendance
									Type</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-clock text-muted"></i>
									</span> <select class="form-select border-0 bg-light"
										id="attendanceType">
										<option value="ATTENDANCE">ATTENDANCE</option>
										<option value="SHIFT">SHIFT</option>
										<option value="TIMING">TIMING</option>
									</select>
								</div>
							</div>
						</div>

						<!-- Location Details -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Location
							Details</h6>
						<div class="row g-3 mb-4">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Address</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-location-dot text-muted"></i>
									</span> <input type="text" id="address" name="address"
										class="form-control border-0 bg-light"
										placeholder="Enter address">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">State</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-map text-muted"></i>
									</span> <input type="text" id="state" name="state"
										class="form-control border-0 bg-light"
										placeholder="Enter state" readOnly> </select>
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">District</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-building text-muted"></i>
									</span> <input type="text" id="district" name="district"
										class="form-control border-0 bg-light"
										placeholder="Enter district" readOnly>
								</div>
							</div>

							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Pincode</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-envelopes-bulk text-muted"></i>
									</span> <input type="text" id="pincode" name="pincode"
										onkeyup="getPINDetails()"
										class="form-control border-0 bg-light"
										placeholder="Enter pincode">
								</div>
							</div>
						</div>

						<!-- Contact Details -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Contact
							Details</h6>
						<div class="row g-3">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Phone No.</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-phone text-muted"></i>
									</span> <input type="text" id="phone" name="phone"
										class="form-control border-0 bg-light"
										placeholder="Enter phone">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">ESIC
									Code</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-id-card text-muted"></i>
									</span> <input type="text" id="esicCode" name="esicCode"
										class="form-control border-0 bg-light"
										placeholder="Enter ESIC">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">GST</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-receipt text-muted"></i>
									</span> <input type="text" id="gst" name="gst"
										class="form-control border-0 bg-light" placeholder="Enter GST">
								</div>
							</div>
						</div>
					</form>
				</div>




				<!-- Footer -->
				<div
					class="modal-footer border-top-0 d-flex justify-content-end gap-2"
					style="border-top: 1px solid #eee;">
					<button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
					<button type="submit" form="addFactoryForm"
						class="btn btn-primary-custom"
						style="padding-left: 20px; padding-right: 20px;">Save
						Factory</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Bulk Upload Modal -->
	<div class="modal fade" id="bulkUploadModal" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title fw-bold">Bulk Upload Factories</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-times"></i>
					</button>
				</div>
				<div class="modal-body p-4">
					<div class="mb-4 text-center">
						<p class="text-muted small">
							Upload an Excel or CSV file to add multiple factories at once. <a
								href="#" class="text-decoration-none"
								style="color: #E4520D; font-weight: 500;"> Download Template
							</a>
						</p>
					</div>

					<div class="upload-zone" id="uploadZone">
						<input type="file" id="fileInput" hidden
							accept=".csv, .xlsx, .xls">
						<div class="upload-icon">
							<i class="fa-solid fa-cloud-arrow-up"></i>
						</div>
						<h6 class="fw-bold mb-1">Click to upload or drag and drop</h6>
						<p class="text-muted small mb-0">Excel or CSV files only (Max.
							10MB)</p>
					</div>

					<div class="file-preview-card" id="filePreview">
						<div class="file-icon">
							<i class="fa-solid fa-file-csv" id="previewIcon"></i>
						</div>
						<div class="flex-grow-1">
							<div class="fw-bold small mb-0" id="fileName">factories_data.csv</div>
							<div class="text-muted" style="font-size: 10px;" id="fileSize">245
								KB</div>
						</div>
						<button type="button" class="btn btn-sm btn-light p-1 px-2"
							id="removeFile">
							<i class="fa-solid fa-xmark"></i>
						</button>
					</div>

					<div class="progress-wrapper" id="uploadProgress">
						<div class="d-flex justify-content-between mb-2">
							<span class="small fw-bold">Uploading...</span> <span
								class="small text-muted" id="progressPercent">0%</span>
						</div>
						<div class="progress-custom">
							<div class="progress-bar-custom" id="progressBar"></div>
						</div>
					</div>
				</div>
				<div
					class="modal-footer border-top-0 d-flex justify-content-end gap-2"
					style="border-top: 1px solid #eee;">
					<button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary-custom"
						id="startUploadBtn" disabled>Start Upload</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Edit Factory Modal -->
	<div class="modal fade" id="editFactoryModal" tabindex="-1">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content rounded-4">
				<!-- Header -->
				<div class="modal-header">
					<h5 class="modal-title fw-semibold">Edit Factory Details</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<i class="fa fa-times"></i>
					</button>
				</div>

				<!-- Body -->
				<div class="modal-body">
					<form id="editFactoryForm">
						<!-- Basic Information -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Basic
							Information</h6>
						<div class="row g-3 mb-4">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Name</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-industry text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editFactoryName" placeholder="Enter factory name">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Attendance
									Type</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-clock text-muted"></i>
									</span> <select class="form-select border-0 bg-light"
										id="editAttendanceType">
										<option value="">Select Attendance Type</option>
										<option value="ATTENDANCE">ATTENDANCE</option>
										<option value="SHIFT">SHIFT</option>
										<option value="TIMING">TIMING</option>
									</select>
								</div>
							</div>
						</div>

						<!-- Location Details -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Location
							Details</h6>
						<div class="row g-3 mb-4">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Address</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-location-dot text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editAddress" placeholder="Enter address">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">State</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-map text-muted"></i>
									</span> <input type="text" id="editState" name="editState"
										class="form-control border-0 bg-light"
										placeholder="Enter state" readOnly> </select>
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">District</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-building text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editDistrict" placeholder="Enter district">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Pincode</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-envelopes-bulk text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editPincode" placeholder="Enter pincode"  onkeyup="getPINDetailsUpdate()">
								</div>
							</div>
						</div>

						<!-- Contact Details -->
						<h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Contact
							Details</h6>
						<div class="row g-3">
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">Factory
									Phone No.</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-phone text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editPhone" placeholder="Enter phone">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">ESIC
									Code</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-id-card text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editEsic" placeholder="Enter ESIC">
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-bold small text-muted">GST</label>
								<div class="input-group">
									<span class="input-group-text bg-light border-0"> <i
										class="fa-solid fa-receipt text-muted"></i>
									</span> <input type="text" class="form-control border-0 bg-light"
										id="editGst" placeholder="Enter GST">
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<div
					class="modal-footer border-top-0 d-flex justify-content-end gap-2"
					style="border-top: 1px solid #eee;">
					<button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
					<button type="submit" form="editFactoryForm"
						class="btn btn-primary-custom"
						style="padding-left: 20px; padding-right: 20px;">Update
						Factory</button>
				</div>
			</div>
		</div>
		
	</div>
<jsp:include page="footer.jsp"></jsp:include>
				<!-- Footer -->
	<script src="/bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>
	<script>
/* let factoriesData = [];
	let filteredData = [];
	let currentPage = 1;
	const itemsPerPage = 6; */
    document.addEventListener('DOMContentLoaded', function () {
      // Data Store
 /*      const factoriesData = [];

      let filteredData = [...factoriesData];
      let currentPage = 1;
      const itemsPerPage = 6; */

      const sidebar = document.getElementById('sidebar');
      const sidebarToggle = document.getElementById('sidebarToggle');
      const sidebarOverlay = document.getElementById('sidebarOverlay');

      function toggleSidebar() {
        if (window.innerWidth >= 992) {
          sidebar.classList.toggle('mini');
        } else {
          sidebar.classList.toggle('active');
          sidebarOverlay.classList.toggle('active');
          document.body.classList.toggle('overflow-hidden');
        }
      }

      sidebarToggle.addEventListener('click', toggleSidebar);
      sidebarOverlay.addEventListener('click', toggleSidebar);

      // Rendering Functions


  window.editFactory = function(id) {

    var formdata = new FormData();
    formdata.append("factoryId", id);

    fetch("/api/factories/getbyId", {
        method: "POST",
        body: formdata
    })
    .then(res => res.json())
    .then(response => {
    console.log(response, "full response");
    
    // Extract the inner data object
    const factoryDetails = response.data; 

    if (factoryDetails) {

        document.getElementById("editFactoryName").value = factoryDetails.factoryName || "";
        document.getElementById("editAttendanceType").value = factoryDetails.attendanceType || "";
        document.getElementById("editAddress").value = factoryDetails.address || "";
        document.getElementById("editState").value = factoryDetails.state || "";
        document.getElementById("editDistrict").value = factoryDetails.district || "";
        document.getElementById("editPincode").value = factoryDetails.pin || "";
        document.getElementById("editPhone").value = factoryDetails.contactDetails || "";
        document.getElementById("editEsic").value = factoryDetails.esicCode || "";
        document.getElementById("editGst").value = factoryDetails.gst || "";

        document.getElementById("editFactoryForm").dataset.factoryId = id;
    }

        const modal = new bootstrap.Modal(document.getElementById("editFactoryModal"));
        modal.show();
    })
    .catch(() => alert("Failed to load factory details"));
};

document.getElementById("editFactoryForm").addEventListener("submit", function(e) {

    e.preventDefault();

    const formData = new FormData();

    formData.append("factoryId", this.dataset.factoryId);
    formData.append("factoryName", document.getElementById("editFactoryName").value);
    formData.append("attendanceType", document.getElementById("editAttendanceType").value);
    formData.append("address", document.getElementById("editAddress").value);
    formData.append("state", document.getElementById("editState").value);
    formData.append("district", document.getElementById("editDistrict").value);
    formData.append("pin", document.getElementById("editPincode").value);
    formData.append("contactDetails", document.getElementById("editPhone").value);
    formData.append("esicCode", document.getElementById("editEsic").value);
    formData.append("gst", document.getElementById("editGst").value);

    fetch("/api/factories/saveUpdate", {
        method: "POST",
        body: formData   // NO JSON, NO Content-Type header
    })
    .then(res => res.json())
    .then(response => {
        if (response.status === 201) {
            alert("Factory updated successfully");
            location.reload();
        } else {
            alert(response.message || "Update failed");
        }
    })
    .catch(() => alert("Update failed"));
});
   /*    function updatePagination() {
        const totalPages = Math.ceil(filteredData.length / itemsPerPage);
        const paginationSummary = document.getElementById('paginationSummary');
        const paginationControls = document.getElementById('paginationControls');

        const start = filteredData.length === 0 ? 0 : (currentPage - 1) * itemsPerPage + 1;
        const end = Math.min(currentPage * itemsPerPage, filteredData.length);
        paginationSummary.innerText = `Showing ${start}-${end} of ${filteredData.length} factories`;

        let controlsHtml = `
            <a href="#" class="page-link-custom ${currentPage ==1 ? 'disabled' : ''}" id="prevPage"><i class="fa-solid fa-chevron-left"></i></a>
          `;

        for (let i = 1; i <= totalPages; i++) {
          controlsHtml += `<a href="#" class="page-link-custom ${i == currentPage ? 'active' : ''}" data-page="${i}">${i}</a>`;
        }

        controlsHtml += `
            <a href="#" class="page-link-custom ${currentPage == totalPages || totalPages == 0 ? 'disabled' : ''}" id="nextPage"><i class="fa-solid fa-chevron-right"></i></a>
          `;

        paginationControls.innerHTML = controlsHtml; */

        // Re-attach listeners
       /*  paginationControls.querySelectorAll('.page-link-custom[data-page]').forEach(link => {
          link.addEventListener('click', (e) => {
            e.preventDefault();
            currentPage = parseInt(link.dataset.page);
         renderFactories();
            loadFactoriesFromBackend();
          });
        });

        const prevBtn = document.getElementById('prevPage');
        if (prevBtn) prevBtn.addEventListener('click', (e) => {
          e.preventDefault();
          if (currentPage > 1) {
            currentPage--;
           renderFactories();
            loadFactoriesFromBackend();
          }
        });

        const nextBtn = document.getElementById('nextPage');
        if (nextBtn) nextBtn.addEventListener('click', (e) => {
          e.preventDefault();
          if (currentPage < totalPages) {
            currentPage++;
            renderFactories();
            loadFactoriesFromBackend();
          }
        });
      } */

      function applyFilters() {
        const searchTerm = document.getElementById('inPageSearch').value.toLowerCase();
        
        const statusFilter = document.getElementById('filterStatus').value;
        
        const locationFilter = document.getElementById('filterLocation').value;
        

        if (!searchTerm && !statusFilter && !locationFilter) {
            loadFactoriesFromBackend();
            return;
        }

        searchFactoriesFromBackend(searchTerm,statusFilter,locationFilter);
    }

       // currentPage = 1;
       // renderFactories();
        //loadFactoriesFromBackend();
      //}

      // Event Listeners
      document.getElementById('inPageSearch').addEventListener('input', applyFilters);
      document.getElementById('filterStatus').addEventListener('change', applyFilters);
      document.getElementById('filterLocation').addEventListener('change', applyFilters);
      document.getElementById('btnClearFilters').addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById('inPageSearch').value = '';
        document.getElementById('filterStatus').value = 'all';
        document.getElementById('filterLocation').value = 'all';
        applyFilters();
      });

      // Bulk Upload Implementation
      const uploadZone = document.getElementById('uploadZone');
      const fileInput = document.getElementById('fileInput');
      const filePreview = document.getElementById('filePreview');
      const fileName = document.getElementById('fileName');
      const fileSize = document.getElementById('fileSize');
      const previewIcon = document.getElementById('previewIcon');
      const removeFile = document.getElementById('removeFile');
      const startUploadBtn = document.getElementById('startUploadBtn');
      const uploadProgress = document.getElementById('uploadProgress');
      const progressBar = document.getElementById('progressBar');
      const progressPercent = document.getElementById('progressPercent');

      // Trigger file input
      if (uploadZone) uploadZone.addEventListener('click', () => fileInput.click());

      // File selection
      if (fileInput) fileInput.addEventListener('change', handleFileSelection);

      // Drag and drop
      if (uploadZone) {
        uploadZone.addEventListener('dragover', (e) => {
          e.preventDefault();
          uploadZone.classList.add('drag-over');
        });

        uploadZone.addEventListener('dragleave', () => {
          uploadZone.classList.remove('drag-over');
        });

        uploadZone.addEventListener('drop', (e) => {
          e.preventDefault();
          uploadZone.classList.remove('drag-over');
          if (e.dataTransfer.files.length) {
            fileInput.files = e.dataTransfer.files;
            handleFileSelection();
          }
        });
      }

      function handleFileSelection() {
        const file = fileInput.files[0];
        if (!file) return;

        const extension = file.name.split('.').pop().toLowerCase();
        const validExtensions = ['csv', 'xlsx', 'xls'];

        if (!validExtensions.includes(extension)) {
          alert('Please upload only CSV or Excel files.');
          fileInput.value = '';
          return;
        }

        // Update preview
        fileName.innerText = file.name;
        fileSize.innerText = (file.size / 1024).toFixed(1) + ' KB';

        if (extension === 'csv') {
          previewIcon.className = 'fa-solid fa-file-csv';
        } else {
          previewIcon.className = 'fa-solid fa-file-excel';
        }

        uploadZone.style.display = 'none';
        filePreview.classList.add('active');
        startUploadBtn.disabled = false;
      }

      // Remove file
      if (removeFile) {
        removeFile.addEventListener('click', (e) => {
          e.stopPropagation();
          fileInput.value = '';
          uploadZone.style.display = 'block';
          filePreview.classList.remove('active');
          startUploadBtn.disabled = true;
          uploadProgress.classList.remove('active');
          progressBar.style.width = '0%';
        });
      }

      // Simulate upload
      if (startUploadBtn) {
        startUploadBtn.addEventListener('click', () => {
          startUploadBtn.disabled = true;
          removeFile.disabled = true;
          uploadProgress.classList.add('active');

          let progress = 0;
          const interval = setInterval(() => {
            progress += 5;
            progressBar.style.width = progress + '%';
            progressPercent.innerText = progress + '%';

            if (progress >= 100) {
              clearInterval(interval);
              setTimeout(() => {
                alert('Upload successful! Factories have been imported.');
                const bulkModal = bootstrap.Modal.getInstance(document.getElementById('bulkUploadModal'));
                if (bulkModal) bulkModal.hide();
                // Reset modal for next time
                fileInput.value = '';
                uploadZone.style.display = 'block';
                filePreview.classList.remove('active');
                uploadProgress.classList.remove('active');
                progressBar.style.width = '0%';
                removeFile.disabled = false;
              }, 500);
            }
          }, 100);
        });
      }

      // Initialize Rendering
      //renderFactories();
    });
  </script>


	<script>

function getPINDetails(){
    var pin = document.getElementById("pincode").value;
console.log("{{{}}}");
    if(pin.length === 6 && /^\d{6}$/.test(pin)) {

        var ajax = new XMLHttpRequest();
        ajax.addEventListener("load", completeHandler, false);
        ajax.addEventListener("error", errorHandler, false);

        ajax.open("GET", "https://api.postalpincode.in/pincode/" + pin);
        ajax.send();
    }
}


function errorHandler(event){
    alert("Error occurred while calling API.");
}



function completeHandler(event){
    var response = JSON.parse(event.target.responseText);

    if (response[0].Status === "Success" && response[0].PostOffice.length > 0) {

        var postOffice = response[0].PostOffice[0];

        document.getElementById("district").value = postOffice.District;
        document.getElementById("state").value = postOffice.State;

    } else {
        alert("Invalid Pincode!");
        document.getElementById("district").value = "";
        document.getElementById("state").value = "";
    }
}

function getPINDetailsUpdate(){
    var pin = document.getElementById("editPincode").value;
console.log("{{{}}}", pin);
    if(pin.length === 6 && /^\d{6}$/.test(pin)) {

        var ajax = new XMLHttpRequest();
        ajax.addEventListener("load", completeHandlerUpdate, false);
        ajax.addEventListener("error", errorHandlerUpdate, false);

        ajax.open("GET", "https://api.postalpincode.in/pincode/" + pin);
        ajax.send();
    }
}


function completeHandlerUpdate(event){
    var response = JSON.parse(event.target.responseText);

    if (response[0].Status === "Success" && response[0].PostOffice.length > 0) {

        var postOffice = response[0].PostOffice[0];

        document.getElementById("editDistrict").value = postOffice.District;
        document.getElementById("editState").value = postOffice.State;

    } else {
        alert("Invalid Pincode!");
        document.getElementById("editDistrict").value = "";
        document.getElementById("editState").value = "";
    }
}
function errorHandlerUpdate(event){
    alert("Error occurred while calling API.");
}



function addFactory() {

    var attendanceType = document.getElementById("attendanceType").value.trim();
    var phone = document.getElementById("phone").value.trim();
    var pincode = document.getElementById("pincode").value.trim();
    var district = document.getElementById("district").value.trim();
    var gst = document.getElementById("gst").value.trim();
    var state = document.getElementById("state").value.trim();
    var address = document.getElementById("address").value.trim();
    var factoryName = document.getElementById("factoryname").value.trim();
    var esiccode = document.getElementById("esicCode").value.trim();


    if (!factoryName || !esiccode || !district || !pincode ||
        !phone || !gst || !attendanceType || !state || !address) {
        alert("Please fill all details!");
        return;
    }

    var phoneRegex = /^[0-9]{10}$/;
    if (!phoneRegex.test(phone)) {
        alert("Phone number must be exactly 10 digits");
        return;
    }

    var xhr = new XMLHttpRequest();
    console.log("PPP");
    xhr.open("POST", "/api/factories/create", true);
    xhr.setRequestHeader("Content-Type", "application/json");
    console.log("PPP..");

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {

            if (xhr.status === 200) {
                
                var res = JSON.parse(xhr.responseText);

                if (res.status === 201) {
                    alert("Factory added successfully!");
                    location.reload();
                } else {
                    alert(res.message || "Something went wrong!");
                }

            } else {
                alert("Server error! Status: " + xhr.status);
            }
        }
    };

    var data = {
        attendanceType: attendanceType,
        address: address,
        gst: gst,
        district: district,
        pin: pincode,
        contactDetails: phone,
        esicCode: esiccode,
        state: state,
        factoryName: factoryName
    };

    xhr.send(JSON.stringify(data));
}


function loadFactoriesFromBackend() {

    var xhr = new XMLHttpRequest();

    xhr.open("GET", "/api/factories/readonly/active", true);

    xhr.onload = function () {

        if (xhr.status === 200) {

            var response = JSON.parse(xhr.responseText);

            if (response.status === 200 && response.data) {

            	let responseDetails=response.data
                // map backend fields to UI expected fields
               /*  factoriesData = response.data.map(function(item) {
                    return {
                        id: item.factoryId,
                        name: item.factoryName,
                        address: item.address,
                        district: item.district,
                        state: item.state,
                        pincode: item.pin || "-",
                        phone: item.contactDetails || "-",
                        esicCode: item.esicCode,
                        gst: item.gst,
                        attendanceType: item.attendanceType
                    };
                });

                filteredData = [factoriesData];
                currentPage = 1; */
   		/* 	function renderFactories() {
 */
                	/*     const startIndex = (currentPage - 1) * itemsPerPage;
                	    const endIndex = startIndex + itemsPerPage; */
                	   // const pageData = filteredData.slice(startIndex, endIndex);

                	    const listContainer = document.getElementById('listContainer');
                	    listContainer.innerHTML = '';

                	    responseDetails.forEach(function(item) {

                	        var row =
                	        	  '<tr class="factory-item">' +
                          	    '<td>' +
                          	      '<div class="fw-bold">' + item.factoryName + '</div>' +
                          	    '</td>' +

                          	    '<td>' +
                          	      '<div class="d-flex align-items-center gap-2">' +
                          	        '<span>' + item.address + '</span>' +
                          	        '<a href="https://www.google.com/maps/search/?api=1&query=' +
                          	          encodeURIComponent(item.address + ', ' + item.district + ', ' + item.state) +
                          	          '" target="_blank" class="btn btn-sm" ' +
                          	          'style="padding: 2px 8px; font-size: 10px; background: rgba(228, 82, 13, 0.1); color: #E4520D; border: none; border-radius: 6px;" ' +
                          	          'title="View on Map">' +
                          	          '<i class="fa-solid fa-map-marker-alt"></i> Map' +
                          	        '</a>' +
                          	      '</div>' +
                          	    '</td>' +

                          	    '<td>' + item.district + '</td>' +
                          	    '<td>' + item.state + '</td>' +
                          	    '<td>' + item.pin + '</td>' +

                          	    '<td>' +
                          	      '<a href="tel:' + item.contactDetails + '" class="text-decoration-none">' +
                          	        item.contactDetails +
                          	      '</a>' +
                          	    '</td>' +

                          	    '<td>' + item.esicCode + '</td>' +
                          	    '<td>' + item.gst + '</td>' +

                          	    '<td>' +
                          	      '<span class="badge" style="background: rgba(228, 82, 13, 0.1); color: #E4520D; font-weight: 600;">' +
                          	        item.attendanceType +
                          	      '</span>' +
                          	    '</td>' +

                          	    '<td>' +
                          	      '<div class="dropdown">' +
                          	        '<button class="btn btn-sm btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">' +
                          	          '<i class="fa-solid fa-ellipsis-vertical"></i>' +
                          	        '</button>' +

                          	        '<ul class="dropdown-menu dropdown-menu-end shadow-sm border-0">' +

                          	          '<li>' +
                          	            '<a class="dropdown-item py-2" href="#" onclick="editFactory(\'' + item.factoryId + '\')">' +
                          	              '<i class="fa-solid fa-pen-to-square me-2 text-primary"></i> Edit Factory' +
                          	            '</a>' +
                          	          '</li>' +

                          	          '<li>' +
                          	            '<a class="dropdown-item py-2" href="contractor.html?factory=' + item.id + '">' +
                          	              '<i class="fa-solid fa-handshake me-2 text-success"></i> Check Contractors' +
                          	            '</a>' +
                          	          '</li>' +

                          	          '<li>' +
                          	            '<a class="dropdown-item py-2" href="employees.html?factory=' + item.id + '">' +
                          	              '<i class="fa-solid fa-users me-2 text-info"></i> Check Employees' +
                          	            '</a>' +
                          	          '</li>' +

                          	        '</ul>' +
                          	      '</div>' +
                          	    '</td>' +

                          	  '</tr>';
                	        listContainer.insertAdjacentHTML('beforeend', row);
                	    });

                	

                
          /*       renderFactories(filteredData); */

            } else {
                alert("No factory data found");
            }

        } else {
            alert("Failed to load factories. Status: " + xhr.status);
        }
    };

    xhr.onerror = function () {
        alert("Network error while fetching factories.");
    };

    xhr.send();
}


function searchFactoriesFromBackend(factoryName,attandencestatus,state) {

    var xhr = new XMLHttpRequest();

    xhr.open("POST", "/api/factories/search", true);
    xhr.setRequestHeader("Content-Type", "application/json");

    xhr.onload = function () {

        if (xhr.status === 200) {

            var response = JSON.parse(xhr.responseText);

            if (response.status === 200 && response.data) {
                renderFactoryTable(response.data);
            } else {
                alert("No factory found");
            }

        } else {
            alert("Search failed. Status: " + xhr.status);
        }
    };

    xhr.onerror = function () {
        alert("Network error during search.");
    };

    xhr.send(JSON.stringify({
        factoryName: factoryName,
        attendanceType: attandencestatus,
        state: state
    }));
}


function renderFactoryTable(responseDetails) {

    var listContainer = document.getElementById('listContainer');
    listContainer.innerHTML = '';

    if (!responseDetails || responseDetails.length === 0) {
        listContainer.innerHTML =
            '<tr><td colspan="10" class="text-center">No factories found</td></tr>';
        return;
    }

    for (var i = 0; i < responseDetails.length; i++) {

        var item = responseDetails[i];

        var row =
            '<tr>' +
                '<td><div class="fw-bold">' + (item.factoryName || '') + '</div></td>' +
                '<td>' + (item.address || '') + '</td>' +
                '<td>' + (item.district || '') + '</td>' +
                '<td>' + (item.state || '') + '</td>' +
                '<td>' + (item.pin || '') + '</td>' +
                '<td>' + (item.contactDetails || '') + '</td>' +
                '<td>' + (item.esicCode || '') + '</td>' +
                '<td>' + (item.gst || '') + '</td>' +
                '<td>' + (item.attendanceType || '') + '</td>' +
                '<td>' +
                    '<button class="btn btn-sm btn-primary" onclick="editFactory(\'' + item.factoryId + '\')">' +
                        'Edit' +
                    '</button>' +
                '</td>' +
            '</tr>';

        listContainer.insertAdjacentHTML('beforeend', row);
    }
}

</script>


</body>

</html>