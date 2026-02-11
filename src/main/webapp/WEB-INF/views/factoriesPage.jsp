<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Factories - SmartHR</title>
    <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<div class="sidebar-overlay" id="sidebarOverlay"></div>

<div class="d-flex flex-column flex-lg-row">

    <!-- Sidebar -->

    <!-- Main Content Area -->
    <jsp:include page="sidebar.jsp"></jsp:include>
    <div class="flex-grow-1 bg-light">
        <!-- Top Header -->
        <%--        topnav--%>
        <jsp:include page="topnav.jsp"></jsp:include>
        <div class="dashboard-content">
            <!-- Page Header -->
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center mb-4 gap-3">
                <div>
                    <h3 class="fw-bold mb-0" style="font-size: 24px; color: #1a202c;">Factory Network</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0" style="font-size: 11px;">
                            <li class="breadcrumb-item"><a href="index.html" class="text-decoration-none text-muted">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Factories</li>
                        </ol>
                    </nav>
                </div>

                <div class="d-flex align-items-center gap-3 justify-content-between justify-content-md-start">
                    <button class="btn btn-sm border shadow-sm" style="background: #fff; color: #E4520D;" data-bs-toggle="modal"
                            data-bs-target="#bulkUploadModal">
                        <i class="fa-solid fa-upload me-1"></i> Bulk Upload
                    </button>
                    <button class="btn btn-orange btn-sm px-3 rounded-2 text-white border-0 bg-orange"
                            style="background-color: #E4520D;" data-bs-toggle="modal" data-bs-target="#addFactoryModal">
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
                        class="fa-solid fa-search text-muted"></i></span>
                            <input type="text" class="form-control filter-input border-start-0" id="inPageSearch"
                                   placeholder="Search by name, ID, address, district or state...">
                        </div>
                    </div>
                    <div class="col-6 col-md-3 col-lg-2">
                        <label class="filter-label">Attendance Type</label>
                        <select class="form-select filter-input" id="filterStatus">
                            <option value="all">All Types</option>
                            <option value="Biometric">Biometric</option>
                            <option value="RFID Card">RFID Card</option>
                            <option value="Face Recognition">Face Recognition</option>
                            <option value="Manual">Manual</option>
                        </select>
                    </div>
                    <div class="col-6 col-md-3 col-lg-2">
                        <label class="filter-label">State</label>
                        <select class="form-select filter-input" id="filterLocation">
                            <option value="all">All States</option>
                            <option value="Illinois">Illinois</option>
                            <option value="Massachusetts">Massachusetts</option>
                            <option value="Texas">Texas</option>
                            <option value="California">California</option>
                            <option value="Washington">Washington</option>
                            <option value="Colorado">Colorado</option>
                            <option value="Arizona">Arizona</option>
                            <option value="Missouri">Missouri</option>
                            <option value="Pennsylvania">Pennsylvania</option>
                            <option value="New York">New York</option>
                        </select>
                    </div>
                    <div class="col-12 col-lg-2 text-md-end ms-auto">
                        <button class="btn btn-link text-muted text-decoration-none small fw-bold" id="btnClearFilters">
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
                            <div class="stat-icon bg-soft-blue" style="width: 45px; height: 45px;"><i
                                    class="fa-solid fa-industry"></i></div>
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
                            <div class="stat-icon bg-soft-green" style="width: 45px; height: 45px;"><i class="fa-solid fa-bolt"></i>
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
                            <div class="stat-icon bg-soft-orange" style="width: 45px; height: 45px;"><i
                                    class="fa-solid fa-chart-line"></i></div>
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
                            <div class="stat-icon bg-soft-red" style="width: 45px; height: 45px;"><i class="fa-solid fa-users"></i>
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
            <div id="factoriesListView" class="factories-list-view" style="display: block;">
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
                    Showing 1-3 of 24 factories
                </div>
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
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fa fa-times"></i>
                </button>
            </div>

            <!-- Body -->
            <div class="modal-body">
                <form id="addFactoryForm">
                    <!-- Basic Information -->
                    <h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Basic Information</h6>
                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">Factory Name</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-industry text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter factory name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">Attendance Type</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-clock text-muted"></i>
                  </span>
                                <select class="form-select border-0 bg-light">
                                    <option value="">Select Attendance Type</option>
                                    <option>Biometric</option>
                                    <option>RFID Card</option>
                                    <option>Face Recognition</option>
                                    <option>Manual</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <!-- Location Details -->
                    <h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Location Details</h6>
                    <div class="row g-3 mb-4">
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">Factory Address</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-location-dot text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter address">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">State</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-map text-muted"></i>
                  </span>
                                <select class="form-select border-0 bg-light">
                                    <option value="">Select State</option>
                                    <option>Illinois</option>
                                    <option>Massachusetts</option>
                                    <option>Texas</option>
                                    <option>California</option>
                                    <option>Washington</option>
                                    <option>Colorado</option>
                                    <option>Arizona</option>
                                    <option>Missouri</option>
                                    <option>Pennsylvania</option>
                                    <option>New York</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">District</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-building text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter district">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">Pincode</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-envelopes-bulk text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter pincode">
                            </div>
                        </div>
                    </div>

                    <!-- Contact Details -->
                    <h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Contact Details</h6>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">Factory Phone No.</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-phone text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter phone">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">ESIC Code</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-id-card text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter ESIC">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-bold small text-muted">GST</label>
                            <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-receipt text-muted"></i>
                  </span>
                                <input type="text" class="form-control border-0 bg-light" placeholder="Enter GST">
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Footer -->
            <%--footer--%>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </div>
</div>

<!-- Bulk Upload Modal -->
<div class="modal fade" id="bulkUploadModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fw-bold">Bulk Upload Factories</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fa fa-times"></i>
                </button>
            </div>
            <div class="modal-body p-4">
                <div class="mb-4 text-center">
                    <p class="text-muted small">
                        Upload an Excel or CSV file to add multiple factories at once.
                        <a href="#" class="text-decoration-none" style="color: #E4520D; font-weight: 500;">
                            Download Template
                        </a>
                    </p>
                </div>

                <div class="upload-zone" id="uploadZone">
                    <input type="file" id="fileInput" hidden accept=".csv, .xlsx, .xls">
                    <div class="upload-icon">
                        <i class="fa-solid fa-cloud-arrow-up"></i>
                    </div>
                    <h6 class="fw-bold mb-1">Click to upload or drag and drop</h6>
                    <p class="text-muted small mb-0">Excel or CSV files only (Max. 10MB)</p>
                </div>

                <div class="file-preview-card" id="filePreview">
                    <div class="file-icon">
                        <i class="fa-solid fa-file-csv" id="previewIcon"></i>
                    </div>
                    <div class="flex-grow-1">
                        <div class="fw-bold small mb-0" id="fileName">factories_data.csv</div>
                        <div class="text-muted" style="font-size: 10px;" id="fileSize">245 KB</div>
                    </div>
                    <button type="button" class="btn btn-sm btn-light p-1 px-2" id="removeFile">
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>

                <div class="progress-wrapper" id="uploadProgress">
                    <div class="d-flex justify-content-between mb-2">
                        <span class="small fw-bold">Uploading...</span>
                        <span class="small text-muted" id="progressPercent">0%</span>
                    </div>
                    <div class="progress-custom">
                        <div class="progress-bar-custom" id="progressBar"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer border-top-0 d-flex justify-content-end gap-2" style="border-top: 1px solid #eee;">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary-custom" id="startUploadBtn" disabled>Start Upload</button>
            </div>
        </div>
    </div>
</div>

<script src="/bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Data Store
        const factoriesData = [
            { id: 'FAC001', name: 'North Hub Manufacturing', address: '123 Industrial Ave', district: 'Cook County', state: 'Illinois', pincode: '60601', phone: '+1-312-555-0101', esicCode: 'ESIC001234', gst: '27AABCU9603R1ZM', attendanceType: 'Biometric' },
            { id: 'FAC002', name: 'East Tech Solutions', address: '456 Tech Park Rd', district: 'Suffolk County', state: 'Massachusetts', pincode: '02101', phone: '+1-617-555-0102', esicCode: 'ESIC001235', gst: '27AABCU9603R1ZN', attendanceType: 'RFID Card' },
            { id: 'FAC003', name: 'South Logistics Hub', address: '789 Commerce Blvd', district: 'Travis County', state: 'Texas', pincode: '73301', phone: '+1-512-555-0103', esicCode: 'ESIC001236', gst: '27AABCU9603R1ZO', attendanceType: 'Biometric' },
            { id: 'FAC004', name: 'West Assembly Plant', address: '321 Bay Street', district: 'San Francisco County', state: 'California', pincode: '94102', phone: '+1-415-555-0104', esicCode: 'ESIC001237', gst: '27AABCU9603R1ZP', attendanceType: 'Face Recognition' },
            { id: 'FAC005', name: 'Central Fiber Works', address: '654 Textile Lane', district: 'Cook County', state: 'Illinois', pincode: '60602', phone: '+1-312-555-0105', esicCode: 'ESIC001238', gst: '27AABCU9603R1ZQ', attendanceType: 'Manual' },
            { id: 'FAC006', name: 'Pacific Port Industries', address: '987 Harbor Way', district: 'King County', state: 'Washington', pincode: '98101', phone: '+1-206-555-0106', esicCode: 'ESIC001239', gst: '27AABCU9603R1ZR', attendanceType: 'Biometric' },
            { id: 'FAC007', name: 'Mountain Tech Center', address: '147 Alpine Dr', district: 'Denver County', state: 'Colorado', pincode: '80201', phone: '+1-303-555-0107', esicCode: 'ESIC001240', gst: '27AABCU9603R1ZS', attendanceType: 'RFID Card' },
            { id: 'FAC008', name: 'Desert Solar Facility', address: '258 Solar Blvd', district: 'Maricopa County', state: 'Arizona', pincode: '85001', phone: '+1-602-555-0108', esicCode: 'ESIC001241', gst: '27AABCU9603R1ZT', attendanceType: 'Biometric' },
            { id: 'FAC009', name: 'River Textiles Mill', address: '369 Riverside Dr', district: 'St. Louis County', state: 'Missouri', pincode: '63101', phone: '+1-314-555-0109', esicCode: 'ESIC001242', gst: '27AABCU9603R1ZU', attendanceType: 'Manual' },
            { id: 'FAC010', name: 'Iron Works Factory', address: '741 Steel Ave', district: 'Allegheny County', state: 'Pennsylvania', pincode: '15201', phone: '+1-412-555-0110', esicCode: 'ESIC001243', gst: '27AABCU9603R1ZV', attendanceType: 'Biometric' },
            { id: 'FAC011', name: 'Sky High Electronics', address: '852 Broadway', district: 'New York County', state: 'New York', pincode: '10001', phone: '+1-212-555-0111', esicCode: 'ESIC001244', gst: '27AABCU9603R1ZW', attendanceType: 'Face Recognition' },
            { id: 'FAC012', name: 'Gulf Marine Industries', address: '963 Port Rd', district: 'Harris County', state: 'Texas', pincode: '77001', phone: '+1-713-555-0112', esicCode: 'ESIC001245', gst: '27AABCU9603R1ZX', attendanceType: 'Biometric' }
        ];

        let filteredData = [...factoriesData];
        let currentPage = 1;
        const itemsPerPage = 6;

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

        if (sidebarToggle) {
            sidebarToggle.addEventListener('click', toggleSidebar);
        }

        if (sidebarOverlay) {
            sidebarOverlay.addEventListener('click', toggleSidebar);
        }


        function renderFactories() {
            const startIndex = (currentPage - 1) * itemsPerPage;
            const endIndex = startIndex + itemsPerPage;
            const pageData = filteredData.slice(startIndex, endIndex);

            const listContainer = document.getElementById('listContainer');
            listContainer.innerHTML = '';

            pageData.forEach(item => {
                // Render List Row
                const row = `
              <tr class="factory-item">
                <td>
                  <div class="fw-bold">${item.name}</div>
                  <div class="text-muted small">ID: ${item.id}</div>
                </td>
                <td>
                  <div class="d-flex align-items-center gap-2">
                    <span>${item.address}</span>
                    <a href="https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(item.address + ', ' + item.district + ', ' + item.state)}"
                       target="_blank"
                       class="btn btn-sm"
                       style="padding: 2px 8px; font-size: 10px; background: rgba(228, 82, 13, 0.1); color: #E4520D; border: none; border-radius: 6px;"
                       title="View on Map">
                      <i class="fa-solid fa-map-marker-alt"></i> Map
                    </a>
                  </div>
                </td>
                <td>${item.district}</td>
                <td>${item.state}</td>
                <td>${item.pincode}</td>
                <td><a href="tel:${item.phone}" class="text-decoration-none">${item.phone}</a></td>
                <td>${item.esicCode}</td>
                <td>${item.gst}</td>
                <td>
                  <span class="badge" style="background: rgba(228, 82, 13, 0.1); color: #E4520D; font-weight: 600;">
                    ${item.attendanceType}
                  </span>
                </td>
                <td>
                  <button class="btn btn-sm btn-light" title="More Options"><i class="fa-solid fa-ellipsis-vertical"></i></button>
                </td>
              </tr>
            `;
                listContainer.insertAdjacentHTML('beforeend', row);
            });

            updatePagination();
        }




        function updatePagination() {
            const totalPages = Math.ceil(filteredData.length / itemsPerPage);
            const paginationSummary = document.getElementById('paginationSummary');
            const paginationControls = document.getElementById('paginationControls');

            const start = filteredData.length === 0 ? 0 : (currentPage - 1) * itemsPerPage + 1;
            const end = Math.min(currentPage * itemsPerPage, filteredData.length);
            paginationSummary.innerText = `Showing ${start}-${end} of ${filteredData.length} factories`;

            let controlsHtml = '';


            const prevDisabled = currentPage === 1 ? 'disabled' : '';
            controlsHtml += `
        <a href="#" class="page-link-custom ${prevDisabled}" id="prevPage">
            <i class="fa-solid fa-chevron-left"></i>
        </a>
    `;


            for (let i = 1; i <= totalPages; i++) {
                const activeClass = i === currentPage ? 'active' : '';
                controlsHtml += `
            <a href="#" class="page-link-custom ${activeClass}" data-page="${i}">
                ${i}
            </a>
        `;
            }


            const nextDisabled = (currentPage === totalPages || totalPages === 0) ? 'disabled' : '';
            controlsHtml += `
        <a href="#" class="page-link-custom ${nextDisabled}" id="nextPage">
            <i class="fa-solid fa-chevron-right"></i>
        </a>
    `;

            paginationControls.innerHTML = controlsHtml;


            paginationControls.querySelectorAll('[data-page]').forEach(link => {
                link.addEventListener('click', (e) => {
                    e.preventDefault();
                    currentPage = parseInt(link.dataset.page);
                    renderFactories();
                });
            });

            const prevBtn = document.getElementById('prevPage');
            if (prevBtn) prevBtn.addEventListener('click', (e) => {
                e.preventDefault();
                if (currentPage > 1) {
                    currentPage--;
                    renderFactories();
                }
            });

            const nextBtn = document.getElementById('nextPage');
            if (nextBtn) nextBtn.addEventListener('click', (e) => {
                e.preventDefault();
                if (currentPage < totalPages) {
                    currentPage++;
                    renderFactories();
                }
            });
        }

        function applyFilters() {
            const searchTerm = document.getElementById('inPageSearch').value.toLowerCase();
            const statusFilter = document.getElementById('filterStatus').value;
            const locationFilter = document.getElementById('filterLocation').value;

            filteredData = factoriesData.filter(item => {
                const matchesSearch = item.name.toLowerCase().includes(searchTerm) ||
                    item.id.toLowerCase().includes(searchTerm) ||
                    item.address.toLowerCase().includes(searchTerm) ||
                    item.district.toLowerCase().includes(searchTerm) ||
                    item.state.toLowerCase().includes(searchTerm);
                const matchesStatus = statusFilter === 'all' || item.attendanceType === statusFilter;
                const matchesLocation = locationFilter === 'all' || item.state.toLowerCase() === locationFilter.toLowerCase();

                return matchesSearch && matchesStatus && matchesLocation;
            });

            currentPage = 1;
            renderFactories();
        }

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
        renderFactories();
    });
</script>
</body>

</html>