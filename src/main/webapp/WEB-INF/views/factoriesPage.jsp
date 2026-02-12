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
    <!-- Sidebar -->
    <div class="sidebar flex-shrink-0" id="sidebar">
      <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
          <span class="brand-icon d-flex align-items-center justify-content-center">
            <!-- <i class="fa-solid fa-bolt" style="font-size: 14px; color: var(--sidebar-text-active)"></i> -->
            <img src="/images/logo.png" alt="" style="width: 30px; height: 30px" />
          </span>
          <span>Arthum</span>
        </a>
      </div>

      <div class="sidebar-menu">
        <div class="menu-title">Main Menu</div>

        <ul class="nav flex-column">
          <!-- Dashboard -->
          <!-- <li class="nav-item">
            <a class="nav-link active" data-bs-toggle="collapse" href="#dashboardSubmenu" role="button"
              aria-expanded="true" aria-controls="dashboardSubmenu" title="Dashboard">
              <span class="brand-icon"><i class="fa-solid fa-table-cells-large"></i></span>
              <span>Dashboard</span>
              <span class="menu-arrow"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse show" id="dashboardSubmenu">
              <ul class="submenu">
                <li>
                  <a href="index.html" class="nav-link active">Admin Dashboard</a>
                </li>
                <li><a href="#" class="nav-link">Employee Dashboard</a></li>
                <li><a href="#" class="nav-link">Manager Dashboard</a></li>
                <li><a href="#" class="nav-link">Factory Dashboard</a></li>
              </ul>
            </div>
          </li> -->

          <!-- Users -->
          <li class="nav-item">
            <a href="index.html" class="nav-link active" title="Users">
              <span class="brand-icon"><i class="fa-solid fa-table-cells-large"></i></span>
              <span>Dashboard</span>
            </a>
          </li>

          <!-- Roles & Rights -->
          <li class="nav-item">
            <a href="roles-privileges.html" class="nav-link" title="Roles & Rights">
              <span class="brand-icon"><i class="fa-solid fa-shield-halved"></i></span>
              <span>Roles & Rights</span>
            </a>
          </li>
          <!-- Users -->
          <li class="nav-item">
            <a href="user-management.html" class="nav-link" title="Users">
              <span class="brand-icon"><i class="fa-solid fa-user-gear"></i></span>
              <span>Users</span>
            </a>
          </li>
          <!-- Workforce / Factory Setup -->
          <li class="nav-item">
            <a class="nav-link" href="factories.html" title="Workforce / Factory Setup">
              <span class="brand-icon"><i class="fa-solid fa-industry"></i></span>
              <span>Workforce / Factory Setup</span>
            </a>
          </li>

          <!-- Contractors -->
          <li class="nav-item">
            <a href="contractor.html" class="nav-link" title="Contractors">
              <span class="brand-icon"><i class="fa-solid fa-handshake"></i></span>
              <span>Contractors</span>
            </a>
          </li>

          <!-- Onboarding & Lifecycle -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#onboardingSubmenu" role="button" aria-expanded="false"
              aria-controls="onboardingSubmenu" title="Onboarding & Lifecycle">
              <span class="brand-icon"><i class="fa-solid fa-user-plus"></i></span>
              <span>Onboarding & Lifecycle</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="onboardingSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">Recruitment</a></li>
                <li><a href="#" class="nav-link">Onboarding</a></li>
                <li><a href="#" class="nav-link">Offboarding</a></li>
              </ul>
            </div>
          </li>

          <!-- Employees -->
          <li class="nav-item">
            <a href="employees.html" class="nav-link" title="Employees">
              <span class="brand-icon"><i class="fa-solid fa-users"></i></span>
              <span>Employees</span>
            </a>
          </li>


          <!-- Time & Attendance -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#attendanceSubmenu" role="button" aria-expanded="false"
              aria-controls="attendanceSubmenu" title="Time & Attendance">
              <span class="brand-icon"><i class="fa-solid fa-clock"></i></span>
              <span>Time & Attendance</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="attendanceSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">Clock In/Out</a></li>
                <li><a href="#" class="nav-link">Attendance Reports</a></li>
                <li><a href="#" class="nav-link">Leave Management</a></li>
                <li><a href="#" class="nav-link">Shift Management</a></li>
              </ul>
            </div>
          </li>

          <!-- Performance -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#performanceSubmenu" role="button" aria-expanded="false"
              aria-controls="performanceSubmenu" title="Performance">
              <span class="brand-icon"><i class="fa-solid fa-chart-line"></i></span>
              <span>Performance</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="performanceSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">Performance Reviews</a></li>
                <li><a href="#" class="nav-link">KPIs</a></li>
                <li><a href="#" class="nav-link">Goals & Objectives</a></li>
              </ul>
            </div>
          </li>

          <!-- Expenses -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#expensesSubmenu" role="button" aria-expanded="false"
              aria-controls="expensesSubmenu" title="Expenses">
              <span class="brand-icon"><i class="fa-solid fa-wallet"></i></span>
              <span>Expenses</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="expensesSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">Expense Claims</a></li>
                <li><a href="#" class="nav-link">Reimbursements</a></li>
                <li><a href="#" class="nav-link">Approvals</a></li>
              </ul>
            </div>
          </li>

          <!-- Analytics & Reports -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#analyticsSubmenu" role="button" aria-expanded="false"
              aria-controls="analyticsSubmenu" title="Analytics & Reports">
              <span class="brand-icon"><i class="fa-solid fa-chart-bar"></i></span>
              <span>Analytics & Reports</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="analyticsSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">HR Reports</a></li>
                <li><a href="#" class="nav-link">Attendance Reports</a></li>
                <li><a href="#" class="nav-link">Performance Reports</a></li>
                <li><a href="#" class="nav-link">Factory Reports</a></li>
              </ul>
            </div>
          </li>

          <!-- Compliance -->
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#complianceSubmenu" role="button" aria-expanded="false"
              aria-controls="complianceSubmenu" title="Compliance">
              <span class="brand-icon"><i class="fa-solid fa-file-shield"></i></span>
              <span>Compliance</span>
              <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
            </a>
            <div class="collapse" id="complianceSubmenu">
              <ul class="submenu">
                <li><a href="#" class="nav-link">Documents</a></li>
                <li><a href="#" class="nav-link">Certifications</a></li>
                <li><a href="#" class="nav-link">Audits</a></li>
                <li><a href="#" class="nav-link">Policies</a></li>
              </ul>
            </div>
          </li>

          <!-- Settings -->
          <li class="nav-item">
            <a href="#" class="nav-link" title="Settings">
              <span class="brand-icon"><i class="fa-solid fa-gear"></i></span>
              <span>Settings</span>
            </a>
          </li>
        </ul>
      </div>
    </div>

    <!-- Main Content Area -->
    <div class="flex-grow-1 bg-light">
      <!-- Top Header -->
      <div class="top-header">
        <div class="header-left">
          <i class="fa-solid fa-bars sidebar-toggle" id="sidebarToggle"></i>
          <div class="header-search">
            <input type="text" class="search-input" placeholder="Search factories...">
            <span class="shortcut-badge">CTRL + /</span>
          </div>
        </div>

        <div class="header-right">
          <a href="#" class="header-icon-btn">
            <i class="fa-solid fa-table-cells"></i>
          </a>
          <a href="#" class="header-icon-btn">
            <i class="fa-solid fa-gear"></i>
          </a>
          <a href="#" class="header-icon-btn" id="toggleFullscreen">
            <i class="fa-solid fa-expand"></i>
          </a>
          <div class="dropdown">
            <a href="#" class="header-icon-btn" id="notifDropdown" data-bs-toggle="dropdown">
              <i class="fa-solid fa-bell"></i>
              <span class="notification-badge"></span>
            </a>
          </div>
          <a href="#" class="header-icon-btn">
            <i class="fa-solid fa-envelope"></i>
          </a>
          <div class="dropdown">
            <div class="user-avatar" id="userDropdown" data-bs-toggle="dropdown">
              <img src="images/avatar.png" alt="User">
              <div class="online-status"></div>
            </div>
            <ul class="dropdown-menu dropdown-menu-end">
              <li>
                <div class="dropdown-header"><strong>John Doe</strong><br><small
                    class="text-muted">Administrator</small></div>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-user me-2"></i> My Profile</a></li>
              <li><a class="dropdown-item" href="#"><i class="fa-solid fa-gear me-2"></i> Settings</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item text-danger" href="#"><i class="fa-solid fa-right-from-bracket me-2"></i>
                  Logout</a></li>
            </ul>
          </div>
        </div>
      </div>

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
										placeholder="Enter state" readOnly>
									</select>
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
									</span> <input type="text" id="pincode" name="pincode" onkeyup="getPINDetails()"
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
        <div class="modal-footer border-top-0 d-flex justify-content-end gap-2" style="border-top: 1px solid #eee;">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="submit" form="addFactoryForm" class="btn btn-primary-custom"
            style="padding-left: 20px; padding-right: 20px;">Save Factory</button>
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

  <!-- Edit Factory Modal -->
  <div class="modal fade" id="editFactoryModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content rounded-4">
        <!-- Header -->
        <div class="modal-header">
          <h5 class="modal-title fw-semibold">Edit Factory Details</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fa fa-times"></i>
          </button>
        </div>

        <!-- Body -->
        <div class="modal-body">
          <form id="editFactoryForm">
            <!-- Basic Information -->
            <h6 class="fw-bold mb-3" style="color: #2b3a67; font-size: 14px;">Basic Information</h6>
            <div class="row g-3 mb-4">
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">Factory Name</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-industry text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-0 bg-light" id="editFactoryName" placeholder="Enter factory name">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">Attendance Type</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-clock text-muted"></i>
                  </span>
                  <select class="form-select border-0 bg-light" id="editAttendanceType">
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
                  <input type="text" class="form-control border-0 bg-light" id="editAddress" placeholder="Enter address">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">State</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-map text-muted"></i>
                  </span>
                  <select class="form-select border-0 bg-light" id="editState">
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
                  <input type="text" class="form-control border-0 bg-light" id="editDistrict" placeholder="Enter district">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">Pincode</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-envelopes-bulk text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-0 bg-light" id="editPincode" placeholder="Enter pincode">
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
                  <input type="text" class="form-control border-0 bg-light" id="editPhone" placeholder="Enter phone">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">ESIC Code</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-id-card text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-0 bg-light" id="editEsic" placeholder="Enter ESIC">
                </div>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small text-muted">GST</label>
                <div class="input-group">
                  <span class="input-group-text bg-light border-0">
                    <i class="fa-solid fa-receipt text-muted"></i>
                  </span>
                  <input type="text" class="form-control border-0 bg-light" id="editGst" placeholder="Enter GST">
                </div>
              </div>
            </div>
          </form>
        </div>
		<jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer -->
        <div class="modal-footer border-top-0 d-flex justify-content-end gap-2" style="border-top: 1px solid #eee;">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="submit" form="editFactoryForm" class="btn btn-primary-custom"
            style="padding-left: 20px; padding-right: 20px;">Update Factory</button>
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

      sidebarToggle.addEventListener('click', toggleSidebar);
      sidebarOverlay.addEventListener('click', toggleSidebar);

      // Rendering Functions
      function renderFactories() {
        const startIndex = (currentPage - 1) * itemsPerPage;
        const endIndex = startIndex + itemsPerPage;
        const pageData = filteredData.slice(startIndex, endIndex);

        const listContainer = document.getElementById('listContainer');
        listContainer.innerHTML = '';

        pageData.forEach(function(item) {

            var mapQuery = encodeURIComponent(item.address + ', ' + item.district + ', ' + item.state);

            var row =
            	  '<tr class="factory-item">' +
            	    '<td>' +
            	      '<div class="fw-bold">' + item.name + '</div>' +
            	      '<div class="text-muted small">ID: ' + item.id + '</div>' +
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
            	    '<td>' + item.pincode + '</td>' +

            	    '<td>' +
            	      '<a href="tel:' + item.phone + '" class="text-decoration-none">' +
            	        item.phone +
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
            	            '<a class="dropdown-item py-2" href="#" onclick="editFactory(\'' + item.id + '\')">' +
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
        })
              
        updatePagination();
      }


      window.editFactory = function (id) {
        const item = factoriesData.find(f => f.id === id);
        if (item) {
          document.getElementById('editFactoryName').value = item.name;
          document.getElementById('editAttendanceType').value = item.attendanceType;
          document.getElementById('editAddress').value = item.address;
          document.getElementById('editState').value = item.state;
          document.getElementById('editDistrict').value = item.district;
          document.getElementById('editPincode').value = item.pincode;
          document.getElementById('editPhone').value = item.phone;
          document.getElementById('editEsic').value = item.esicCode;
          document.getElementById('editGst').value = item.gst;
          
          const editModal = new bootstrap.Modal(document.getElementById('editFactoryModal'));
          editModal.show();
        }
      };

      function updatePagination() {
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

        paginationControls.innerHTML = controlsHtml;

        // Re-attach listeners
        paginationControls.querySelectorAll('.page-link-custom[data-page]').forEach(link => {
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
        pincode: pincode,
        phone: phone,
        esicCode: esiccode,
        state: state,
        factoryName: factoryName
    };

    xhr.send(JSON.stringify(data));
}
</script>

  
</body>

</html>