<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Employees - SmartHR</title>
  <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/style.css" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
</head>

<body>
  <div class="sidebar-overlay" id="sidebarOverlay"></div>

  <div class="d-flex">
    <!-- Sidebar -->

	<jsp:include page="sidebar.jsp"></jsp:include>

    <!-- Main Content Area -->
    <div class="flex-grow-1 bg-light">
      <!-- Top Header -->
    <jsp:include page="topnav.jsp"></jsp:include>

      <!-- Employee Management Content -->
      <div class="dashboard-content">
     
          <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-3">
          <div>
            <h3 class="fw-bold mb-0" style="font-size: 20px">Contractors</h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb mb-0" style="font-size: 11px">
                <li class="breadcrumb-item">
                  <a href="index.html" class="text-decoration-none text-muted"><i class="fa-solid fa-house me-1"></i>
                    Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Contractors</li>
              </ol>
            </nav>
          </div>
          <div class="contractor-action-buttons">
            <button class="btn btn-sm btn-light shadow-sm" onclick="window.location.href='contractor-config.html'"
              title="Configure Contractor Form">
              <i class="fa-solid fa-sliders"></i>
              <span class="btn-text">Configure Form</span>
            </button>
            <button class="btn btn-sm shadow-sm contractor-btn-upload" title="Bulk Upload" data-bs-toggle="modal"
              data-bs-target="#bulkUploadModal">
              <i class="fa-solid fa-upload"></i>
              <span class="btn-text">Bulk Upload</span>
            </button>
            <!-- <button class="btn btn-orange btn-sm px-3 rounded-2 text-white border-0 bg-orange" title="Add Contractor"
              data-bs-toggle="modal" data-bs-target="#addContractorModal">
              <i class="fa-solid fa-user-plus"></i>
              <span class="btn-text">Add Contractor</span>
            </button> -->
            <!-- sending in other page -->
            <button class="btn btn-sm shadow-sm contractor-btn-upload"
              onclick="window.location.href='addcontractor.html'">
              <i class="fa-solid fa-upload"></i>
              <span class="btn-text">Add Contractor</span>
            </button>

          </div>
        </div>

        <!-- Stats Row -->
        <div class="row g-3 mb-4">
          <div class="col-md-3">
            <div class="stat-card compact">
              <div class="stat-icon bg-soft-blue mb-2" style="width: 35px; height: 35px">
                <i class="fa-solid fa-users"></i>
              </div>
              <div class="stat-title text-muted">Monthly Joinees</div>
              <div class="stat-value">12</div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="stat-card compact">
              <div class="stat-icon bg-soft-green mb-2" style="width: 35px; height: 35px">
                <i class="fa-solid fa-user-check"></i>
              </div>
              <div class="stat-title text-muted">Compliance Pending</div>
              <div class="stat-value">2</div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="stat-card compact">
              <div class="stat-icon bg-soft-orange mb-2" style="width: 35px; height: 35px">
                <i class="fa-solid fa-shield-halved"></i>
              </div>
              <div class="stat-title text-muted">Total Contractors</div>
              <div class="stat-value">245</div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="stat-card compact">
              <div class="stat-icon bg-soft-red mb-2" style="width: 35px; height: 35px">
                <i class="fa-solid fa-user-slash"></i>
              </div>
              <div class="stat-title text-muted">Contract Expiry</div>
              <div class="stat-value">2</div>
            </div>
          </div>
        </div>


        <!-- Main Tabbed Interface -->
        <div class="dashboard-card">
          <ul class="nav nav-tabs nav-tabs-premium border-0 mb-3" id="employeeTabs" role="tablist" style="font-size: 13px">
            <!-- <li class="nav-item" role="presentation">
              <button class="nav-link" id="list-tab" data-bs-toggle="tab" data-bs-target="#list" type="button"
                role="tab">
                <i class="fa-solid fa-list me-1"></i> Employee List
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="approval-tab" data-bs-toggle="tab" data-bs-target="#approval" type="button"
                role="tab">
                <i class="fa-solid fa-user-check me-1"></i> Approval Workflow
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="hiring-tab" data-bs-toggle="tab" data-bs-target="#hiring" type="button"
                role="tab">
                <i class="fa-solid fa-user-plus me-1"></i> Hiring/Rehiring
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="documents-tab" data-bs-toggle="tab" data-bs-target="#documents" type="button"
                role="tab">
                <i class="fa-solid fa-file-alt me-1"></i> Documents
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="analytics-tab" data-bs-toggle="tab" data-bs-target="#analytics" type="button"
                role="tab">
                <i class="fa-solid fa-chart-bar me-1"></i> Analytics
              </button>
            </li> -->
           
  <li class="nav-item" role="presentation">
              <button class="nav-link active" id="list-tab" data-bs-toggle="tab" data-bs-target="#list" type="button"
                role="tab">
                <i class="fa-solid fa-list me-1"></i><span>Contractor List</span>
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="approvals-tab" data-bs-toggle="tab" data-bs-target="#approvals" type="button"
                role="tab">
                <i class="fa-solid fa-check-circle me-1"></i><span>Pending Approvals</span>
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="documents-tab" data-bs-toggle="tab" data-bs-target="#documents" type="button"
                role="tab">
                <i class="fa-solid fa-check-circle me-1"></i><span>Documents</span>
              </button>
            </li>

            <li class="nav-item " role="presentation">
              <button class="nav-link " id="org-master-tab" data-bs-toggle="tab" data-bs-target="#org-master"
                type="button" role="tab">
                <i class="fa-solid fa-sitemap me-1"></i> Organization Master
              </button>
            </li>

             <li class="nav-item" role="presentation">
              <button class="nav-link" id="config-tab" data-bs-toggle="tab" data-bs-target="#config" type="button"
                role="tab">
                <i class="fa-solid fa-gear me-1"></i> Configuration
              </button>
            </li>
            
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="fixed-salary-tab" data-bs-toggle="tab" data-bs-target="#fixed-salary"
                type="button" role="tab">
                <i class="fa-solid fa-money-bill-wave me-1"></i> Fixed Salary
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="leave-setup-tab" data-bs-toggle="tab" data-bs-target="#leave-setup"
                type="button" role="tab">
                <i class="fa-solid fa-calendar-check me-1"></i> Leave Setup
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="salary-mgmt-tab" data-bs-toggle="tab" data-bs-target="#salary-mgmt"
                type="button" role="tab">
                <i class="fa-solid fa-wallet me-1"></i> Salary Management
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="expense-setup-tab" data-bs-toggle="tab" data-bs-target="#expense-setup"
                type="button" role="tab">
                <i class="fa-solid fa-file-invoice-dollar me-1"></i> Expense Setup
              </button>
            </li>
          <li class="nav-item" role="presentation">
  <button class="nav-link"
          id="income-setup-tab"
          data-bs-toggle="tab"
          data-bs-target="#income-setup"
          type="button"
          role="tab">
    <i class="fa-solid fa-file-invoice-dollar me-1"></i> Income Setup
  </button>
</li>

          </ul>

          <div class="tab-content" id="employeeTabContent">

                <!-- Tab 1: Contractor List -->
            <div class="tab-pane fade show active" id="list" role="tabpanel">
              <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                <h5 class="card-title-new mb-0">All Contractors</h5>
                <div class="filter-controls">
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Types</option>
                      <option>Primary Contractor</option>
                      <option>Sub Contractor</option>
                      <option>Vendor</option>
                      <option>Consultant</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All</option>
                      <option>Document Expiry Soon</option>
                      <option>Contract Expiry Soon</option>
                      <option>Monthly Joinee</option>
                    </select>
                  </div>
                  <div class="filter-search">
                    <input type="text" class="form-control form-control-sm" placeholder="Search contractors..."
                      style="font-size: 12px" />
                  </div>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th>S. No.</th>
                      <th>Contractor</th>
                      <th>Email</th>
                      <th>Type</th>
                      <th>Factory</th>
                      <th>GST #</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=1" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">ABC Contractors</div>
                            <div class="text-muted small">CON001</div>
                          </div>
                        </div>
                      </td>
                      <td>abc@contractors.com</td>
                      <td><span class="badge bg-primary">Primary Contractor</span></td>
                      <td>
                        <div class="d-flex flex-wrap gap-1">
                          <span class="badge bg-soft-blue">Factory A - Mumbai</span>
                          <span class="badge bg-soft-navy text-muted cursor-pointer" data-bs-toggle="popover"
                            data-bs-trigger="hover" data-bs-placement="top" data-bs-html="true"
                            data-bs-content="<div class='small text-start'>• Factory B - Pune<br>• Factory C - Delhi</div>">
                            +2 more
                          </span>
                        </div>
                      </td>
                      <td>
                        <div class="gst-badge">
                          <span>27AABCU9603R1ZM</span>
                          <i class="fa-regular fa-copy copy-btn" onclick="copyToClipboard('27AABCU9603R1ZM', this)"
                            title="Copy GST"></i>
                        </div>
                      </td>
                      <td><span class="badge bg-success">Approved</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" title="View Details" data-bs-toggle="modal"
                          data-bs-target="#viewContractorModal">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                        <!-- <button class="btn btn-sm btn-light" title="Edit" data-bs-toggle="modal"
                          data-bs-target="#editContractorModal">
                          <i class="fa-solid fa-edit"></i>
                        </button> -->
                        <button class="btn btn-sm btn-light" title="Manage Users"
                          onclick="window.location.href='contractor-usermanagement.html'">
                          <i class="fa-solid fa-users-gear"></i>
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=2" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">XYZ Services</div>
                            <div class="text-muted small">CON002</div>
                          </div>
                        </div>
                      </td>
                      <td>xyz@services.com</td>
                      <td><span class="badge" style="background: #9b59b6">Sub Contractor</span></td>
                      <td>
                        <div class="d-flex flex-wrap gap-1">
                          <span class="badge bg-soft-blue">Factory B - Pune</span>
                          <span class="badge bg-soft-navy text-muted cursor-pointer" data-bs-toggle="popover"
                            data-bs-trigger="hover" data-bs-placement="top" data-bs-html="true"
                            data-bs-content="<div class='small text-start'>• Factory C - Delhi</div>">
                            +1 more
                          </span>
                        </div>
                      </td>
                      <td>
                        <div class="gst-badge">
                          <span>27AABCX9603R1ZN</span>
                          <i class="fa-regular fa-copy copy-btn" onclick="copyToClipboard('27AABCX9603R1ZN', this)"
                            title="Copy GST"></i>
                        </div>
                      </td>
                      <td><span class="badge bg-warning">Pending</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" title="View Details" data-bs-toggle="modal"
                          data-bs-target="#viewContractorModal">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                        <!-- <button class="btn btn-sm btn-light" title="Edit" data-bs-toggle="modal"
                          data-bs-target="#editContractorModal">
                          <i class="fa-solid fa-edit"></i>
                        </button> -->
                        <button class="btn btn-sm btn-light" title="Manage Users"
                          onclick="window.location.href='contractor-usermanagement.html'">
                          <i class="fa-solid fa-users-gear"></i>
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=3" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">PQR Industries</div>
                            <div class="text-muted small">CON003</div>
                          </div>
                        </div>
                      </td>
                      <td>pqr@industries.com</td>
                      <td><span class="badge bg-info">Vendor</span></td>
                      <td>Factory C - Delhi</td>
                      <td>
                        <div class="gst-badge">
                          <span>07AABCP9603R1ZO</span>
                          <i class="fa-regular fa-copy copy-btn" onclick="copyToClipboard('07AABCP9603R1ZO', this)"
                            title="Copy GST"></i>
                        </div>
                      </td>
                      <td><span class="badge bg-success">Approved</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" title="View Details" data-bs-toggle="modal"
                          data-bs-target="#viewContractorModal">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                        <!-- <button class="btn btn-sm btn-light" title="Edit" data-bs-toggle="modal"
                          data-bs-target="#editContractorModal">
                          <i class="fa-solid fa-edit"></i>
                        </button> -->
                        <button class="btn btn-sm btn-light" title="Manage Users"
                          onclick="window.location.href='contractor-usermanagement.html'">
                          <i class="fa-solid fa-users-gear"></i>
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=4" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">LMN Solutions</div>
                            <div class="text-muted small">CON004</div>
                          </div>
                        </div>
                      </td>
                      <td>lmn@solutions.com</td>
                      <td><span class="badge bg-secondary">Consultant</span></td>
                      <td>Factory D - Bangalore</td>
                      <td>
                        <div class="gst-badge">
                          <span>29AABCL9603R1ZP</span>
                          <i class="fa-regular fa-copy copy-btn" onclick="copyToClipboard('29AABCL9603R1ZP', this)"
                            title="Copy GST"></i>
                        </div>
                      </td>
                      <td><span class="badge bg-danger">Rejected</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" title="View Details" data-bs-toggle="modal"
                          data-bs-target="#viewContractorModal">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                        <!-- <button class="btn btn-sm btn-light" title="Edit" data-bs-toggle="modal"
                          data-bs-target="#editContractorModal">
                          <i class="fa-solid fa-edit"></i>
                        </button> -->
                        <button class="btn btn-sm btn-light" title="Manage Users"
                          onclick="window.location.href='contractor-usermanagement.html'">
                          <i class="fa-solid fa-users-gear"></i>
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=5" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">RST Enterprises</div>
                            <div class="text-muted small">CON005</div>
                          </div>
                        </div>
                      </td>
                      <td>rst@enterprises.com</td>
                      <td><span class="badge" style="background: #9b59b6">Sub Contractor</span></td>
                      <td>
                        <div class="d-flex flex-wrap gap-1">
                          <span class="badge bg-soft-blue">Factory A - Mumbai</span>
                        </div>
                      </td>
                      <td>
                        <div class="gst-badge">
                          <span>27AABCR9603R1ZQ</span>
                          <i class="fa-regular fa-copy copy-btn" onclick="copyToClipboard('27AABCR9603R1ZQ', this)"
                            title="Copy GST"></i>
                        </div>
                      </td>
                      <td><span class="badge bg-warning">Pending</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" title="View Details" data-bs-toggle="modal"
                          data-bs-target="#viewContractorModal">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                        <!-- <button class="btn btn-sm btn-light" title="Edit" data-bs-toggle="modal"
                          data-bs-target="#editContractorModal">
                          <i class="fa-solid fa-edit"></i>
                        </button> -->
                        <button class="btn btn-sm btn-light" title="Manage Users"
                          onclick="window.location.href='contractor-usermanagement.html'">
                          <i class="fa-solid fa-users-gear"></i>
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- Pagination Footer -->
              <div class="pagination-container">
                <div class="text-muted small fw-bold font-size-12">
                  Showing 1-5 of 245 contractors
                </div>
                <div class="d-flex gap-2">
                  <a href="#" class="page-link-custom disabled"><i class="fa-solid fa-chevron-left"></i></a>
                  <a href="#" class="page-link-custom active">1</a>
                  <a href="#" class="page-link-custom">2</a>
                  <a href="#" class="page-link-custom">3</a>
                  <a href="#" class="page-link-custom"><i class="fa-solid fa-chevron-right"></i></a>
                </div>
              </div>
            </div>

            <!-- Tab 2: Approvals -->
            <div class="tab-pane fade" id="approvals" role="tabpanel">
              <h5 class="mb-3">Pending Approvals</h5>
              <div class="table-responsive">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th>Contractor</th>
                      <th>Type</th>
                      <th>Factory</th>
                      <th>Documents</th>
                      <th>Submitted On</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=2" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">XYZ Services</div>
                            <div class="text-muted small">CON002</div>
                          </div>
                        </div>
                      </td>
                      <td><span class="badge" style="background: #9b59b6">Sub Contractor</span></td>
                      <td>Factory B - Pune</td>
                      <td>
                        <button class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal"
                          data-bs-target="#documentsModal">
                          <i class="fa-solid fa-file"></i> 3 Docs
                        </button>
                      </td>
                      <td>2024-02-01</td>
                      <td><span class="badge bg-warning">Pending</span></td>
                      <td>
                        <button class="btn btn-sm btn-success" title="Approve" data-bs-toggle="modal"
                          data-bs-target="#approvalModal">
                          <i class="fa-solid fa-check"></i> Approve
                        </button>
                        <button class="btn btn-sm btn-danger" title="Reject">
                          <i class="fa-solid fa-times"></i> Reject
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=5" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">RST Enterprises</div>
                            <div class="text-muted small">CON005</div>
                          </div>
                        </div>
                      </td>
                      <td><span class="badge" style="background: #9b59b6">Sub Contractor</span></td>
                      <td>Factory A - Mumbai</td>
                      <td>
                        <button class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal"
                          data-bs-target="#documentsModal">
                          <i class="fa-solid fa-file"></i> 4 Docs
                        </button>
                      </td>
                      <td>2024-02-03</td>
                      <td><span class="badge bg-warning">Pending</span></td>
                      <td>
                        <button class="btn btn-sm btn-success" title="Approve" data-bs-toggle="modal"
                          data-bs-target="#approvalModal">
                          <i class="fa-solid fa-check"></i> Approve
                        </button>
                        <button class="btn btn-sm btn-danger" title="Reject">
                          <i class="fa-solid fa-times"></i> Reject
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Tab 3: Documents -->
            <div class="tab-pane fade" id="documents" role="tabpanel">
              <h5 class="mb-3">Document Management</h5>

                  <div class="container" style="overflow: scroll;">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th>
                        Contractor Name</th>
                      <!-- Financial Documents -->
                      <th>Current Year Turnover (BS & P&L)</th>
                      <th>Last Year Turnover (BS & P&L)</th>
                      <th>Bank Statements (6 months)</th>
                      <th>Second Bank Account</th>
                      <th>ITR (2 Years)</th>
                      <!-- Registration & Compliance -->
                      <th>GST Certificate</th>
                      <th>PAN Card</th>
                      <th>Address Proof</th>
                      <th>MOA & AOA</th>
                      <th>Directors List</th>
                      <th>LLP Agreement</th>
                      <!-- Tax & Statutory -->
                      <th>TDS (Form 26AS)</th>
                      <!-- Last 6 Months Filings -->
                      <th>GST Returns (3M)</th>
                      <th>ESIC Returns (3M)</th>
                      <th>
                        Actions</th>
                    </tr>
                  </thead>
                  <tbody id="contractorDocumentsTable">
                    <!-- Contractor 1: Ramesh Kumar -->
                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
    </div>
          
              <!-- <div class="alert alert-info">
                <i class="fa-solid fa-info-circle me-2"></i>
                Select a contractor from the list to view and manage their documents.
              </div> -->
            </div>

            <!-- Tab 1: Employee List -->
            <div class="tab-pane fade" id="list" role="tabpanel">
              <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                <h5 class="card-title-new mb-0">All Employees</h5>
                <div class="filter-controls">
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Departments</option>
                      <option>Operations</option>
                      <option>HR</option>
                      <option>IT</option>
                      <option>Finance</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Contractors</option>
                      <option>ABC Services</option>
                      <option>XYZ Solutions</option>
                      <option>Global Staffing</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Status</option>
                      <option>Active</option>
                      <option>Onboarding</option>
                      <option>Exited</option>
                    </select>
                  </div>
                  <div class="filter-search">
                    <input type="text" class="form-control form-control-sm" placeholder="Search employees..."
                      style="font-size: 12px" />
                  </div>
                </div>
              </div>

              <div class="table-responsive">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th><input type="checkbox" /></th>
                      <th>Employee</th>
                      <th>Contractor</th>
                      <th>Designation</th>
                      <th>Department</th>
                      <th>Factory</th>
                      <th>Journey Progress</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="employee-row" onclick="
                          window.location.href =
                            'employee-profile.html?id=EMP001'
                        ">
                      <td>
                        <input type="checkbox" onclick="event.stopPropagation()" />
                      </td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=5" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Michael Brown</div>
                            <div class="text-muted small">EMP001</div>
                          </div>
                        </div>
                      </td>
                      <td>ABC Services</td>
                      <td>Senior Manager</td>
                      <td>Operations</td>
                      <td>Factory A</td>
                      <td>
                        <div class="journey-progress">
                          <span class="progress-step complete" title="Hired"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Documents"><i
                              class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Assets"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Training"><i class="fa-solid fa-check"></i></span>
                          <span class="text-muted small">100%</span>
                        </div>
                      </td>
                      <td><span class="badge bg-success">Active</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" onclick="
                              event.stopPropagation();
                              window.location.href =
                                'employee-profile.html?id=EMP001';
                            ">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="employee-row" onclick="
                          window.location.href =
                            'employee-profile.html?id=EMP002'
                        ">
                      <td>
                        <input type="checkbox" onclick="event.stopPropagation()" />
                      </td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=6" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Sarah Johnson</div>
                            <div class="text-muted small">EMP002</div>
                          </div>
                        </div>
                      </td>
                      <td>XYZ Solutions</td>
                      <td>HR Executive</td>
                      <td>Human Resources</td>
                      <td>Factory B</td>
                      <td>
                        <div class="journey-progress">
                          <span class="progress-step complete" title="Hired"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Documents"><i
                              class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Assets"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step pending" title="Training">3</span>
                          <span class="text-muted small">75%</span>
                        </div>
                      </td>
                      <td>
                        <span class="badge bg-warning">Onboarding</span>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-light" onclick="
                              event.stopPropagation();
                              window.location.href =
                                'employee-profile.html?id=EMP002';
                            ">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="employee-row" onclick="
                          window.location.href =
                            'employee-profile.html?id=EMP003'
                        ">
                      <td>
                        <input type="checkbox" onclick="event.stopPropagation()" />
                      </td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=7" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Rajesh Kumar</div>
                            <div class="text-muted small">EMP003</div>
                          </div>
                        </div>
                      </td>
                      <td>Global Staffing</td>
                      <td>Production Supervisor</td>
                      <td>Operations</td>
                      <td>Factory C</td>
                      <td>
                        <div class="journey-progress">
                          <span class="progress-step complete" title="Hired"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Documents"><i
                              class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Assets"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Training"><i class="fa-solid fa-check"></i></span>
                          <span class="text-muted small">100%</span>
                        </div>
                      </td>
                      <td><span class="badge bg-success">Active</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" onclick="
                              event.stopPropagation();
                              window.location.href =
                                'employee-profile.html?id=EMP003';
                            ">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="employee-row" onclick="
                          window.location.href =
                            'employee-profile.html?id=EMP004'
                        ">
                      <td>
                        <input type="checkbox" onclick="event.stopPropagation()" />
                      </td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=8" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Priya Sharma</div>
                            <div class="text-muted small">EMP004</div>
                          </div>
                        </div>
                      </td>
                      <td>ABC Services</td>
                      <td>Quality Analyst</td>
                      <td>Quality Assurance</td>
                      <td>Factory A</td>
                      <td>
                        <div class="journey-progress">
                          <span class="progress-step complete" title="Hired"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step pending" title="Documents">2</span>
                          <span class="progress-step pending" title="Assets">3</span>
                          <span class="progress-step pending" title="Training">4</span>
                          <span class="text-muted small">25%</span>
                        </div>
                      </td>
                      <td>
                        <span class="badge bg-warning">Onboarding</span>
                      </td>
                      <td>
                        <button class="btn btn-sm btn-light" onclick="
                              event.stopPropagation();
                              window.location.href =
                                'employee-profile.html?id=EMP004';
                            ">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                      </td>
                    </tr>
                    <tr class="employee-row" onclick="
                          window.location.href =
                            'employee-profile.html?id=EMP005'
                        ">
                      <td>
                        <input type="checkbox" onclick="event.stopPropagation()" />
                      </td>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=9" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Amit Patel</div>
                            <div class="text-muted small">EMP005</div>
                          </div>
                        </div>
                      </td>
                      <td>XYZ Solutions</td>
                      <td>IT Support</td>
                      <td>Information Technology</td>
                      <td>Factory B</td>
                      <td>
                        <div class="journey-progress">
                          <span class="progress-step complete" title="Hired"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Documents"><i
                              class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Assets"><i class="fa-solid fa-check"></i></span>
                          <span class="progress-step complete" title="Training"><i class="fa-solid fa-check"></i></span>
                          <span class="text-muted small">100%</span>
                        </div>
                      </td>
                      <td><span class="badge bg-success">Active</span></td>
                      <td>
                        <button class="btn btn-sm btn-light" onclick="
                              event.stopPropagation();
                              window.location.href =
                                'employee-profile.html?id=EMP005';
                            ">
                          <i class="fa-solid fa-eye"></i>
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <!-- Pagination Footer -->
              <div class="pagination-container mt-3">
                <div class="text-muted small fw-bold font-size-12" id="paginationSummary">
                  Showing 1 to 5 of 890 entries
                </div>
                <div class="d-flex gap-2" id="paginationControls">
                  <a href="#" class="page-link-custom disabled"><i class="fa-solid fa-chevron-left"></i></a>
                  <a href="#" class="page-link-custom active">1</a>
                  <a href="#" class="page-link-custom">2</a>
                  <a href="#" class="page-link-custom">3</a>
                  <a href="#" class="page-link-custom"><i class="fa-solid fa-chevron-right"></i></a>
                </div>
              </div>

            </div>

            <!-- Tab 2: Approval Workflow -->
            <div class="tab-pane fade" id="approval" role="tabpanel">
              <div class="row g-3 mb-4">
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm p-3"
                    style="background-color: #fff4e5; border-left: 4px solid #ffa000 !important;">
                    <div class="text-muted small fw-bold text-uppercase">Pending Approvals</div>
                    <div class="h3 fw-bold mb-0">12</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm p-3"
                    style="background-color: #e8f5e9; border-left: 4px solid #4caf50 !important;">
                    <div class="text-muted small fw-bold text-uppercase">Approved Today</div>
                    <div class="h3 fw-bold mb-0">45</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm p-3"
                    style="background-color: #ffebee; border-left: 4px solid #f44336 !important;">
                    <div class="text-muted small fw-bold text-uppercase">Rejected</div>
                    <div class="h3 fw-bold mb-0">03</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm p-3"
                    style="background-color: #e3f2fd; border-left: 4px solid #2196f3 !important;">
                    <div class="text-muted small fw-bold text-uppercase">Sent Back</div>
                    <div class="h3 fw-bold mb-0">05</div>
                  </div>
                </div>
              </div>

              <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="filter-controls">
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Contractors</option>
                      <option>ABC Services</option>
                      <option>XYZ Solutions</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Departments</option>
                      <option>Operations</option>
                      <option>Logistics</option>
                    </select>
                  </div>
                </div>
                <div class="d-flex gap-2">
                  <button class="btn btn-sm btn-success px-3" id="bulkApproveBtn">
                    <i class="fa-solid fa-check-double me-1"></i> Approve Selected
                  </button>
                  <button class="btn btn-sm btn-outline-danger px-3" id="bulkRejectBtn">
                    <i class="fa-solid fa-times-circle me-1"></i> Reject Selected
                  </button>
                </div>
              </div>

              <div class="table-responsive">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th style="width: 40px"><input type="checkbox" id="selectAllApprovals" /></th>
                      <th>Employee Details</th>
                      <th>Contractor</th>
                      <th>Supervisor</th>
                      <th>Role & Dept</th>
                      <th>Submission Date</th>
                      <th>Status</th>
                      <th class="text-end">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="approval-row">
                      <td><input type="checkbox" class="approval-checkbox" /></td>
                      <td>
                        <div class="d-flex align-items-center">
                          <div
                            class="avatar-sm text-white rounded-circle me-2 d-flex align-items-center justify-content-center"
                            style="width: 32px; height: 32px; background-color: #E4520D;">AS</div>
                          <div>
                            <div class="fw-bold">Amit Sharma</div>
                            <div class="text-muted small">ID: TENT102</div>
                          </div>
                        </div>
                      </td>
                      <td>ABC Services</td>
                      <td>Rajesh Kumar</td>
                      <td>
                        <div>Production Line A</div>
                        <div class="text-muted small">Operations</div>
                      </td>
                      <td>Oct 24, 2023</td>
                      <td><span class="badge bg-soft-warning text-warning">Pending Approval</span></td>
                      <td class="text-end">
                        <button class="btn btn-sm btn-light me-1" onclick="viewApprovalDetails('TENT102')" title="Review Data & Docs">
                          <i class="fa-solid fa-eye me-1"></i> Review
                        </button>
                        <button class="btn btn-sm btn-success px-3 me-1 approve-single" title="Approve">Approve</button>
                        <button class="btn btn-sm btn-outline-danger me-1" data-bs-toggle="modal"
                          data-bs-target="#rejectModal">Reject</button>
                      </td>
                    </tr>
                    <tr class="approval-row">
                      <td><input type="checkbox" class="approval-checkbox" /></td>
                      <td>
                        <div class="d-flex align-items-center">
                          <div
                            class="avatar-sm text-white rounded-circle me-2 d-flex align-items-center justify-content-center"
                            style="width: 32px; height: 32px; background-color: #6f42c1;">RK</div>
                          <div>
                            <div class="fw-bold">Rohan Kapoor</div>
                            <div class="text-muted small">ID: TENT108</div>
                          </div>
                        </div>
                      </td>
                      <td>XYZ Solutions</td>
                      <td>Michael Brown</td>
                      <td>
                        <div>Warehouse Section B</div>
                        <div class="text-muted small">Logistics</div>
                      </td>
                      <td>Oct 25, 2023</td>
                      <td><span class="badge bg-soft-warning text-warning">Pending Approval</span></td>
                      <td class="text-end">
                        <button class="btn btn-sm btn-light me-1" onclick="viewApprovalDetails('TENT108')" title="Review Data & Docs">
                          <i class="fa-solid fa-eye me-1"></i> Review
                        </button>
                        <button class="btn btn-sm btn-success px-3 me-1 approve-single" title="Approve">Approve</button>
                        <button class="btn btn-sm btn-outline-danger me-1" data-bs-toggle="modal"
                          data-bs-target="#rejectModal">Reject</button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <!-- Tab 3: Hiring/Rehiring -->
            <div class="tab-pane fade" id="hiring" role="tabpanel">
              <!-- <div class="row g-3 mb-3">
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm">
                    <div class="card-body">
                      <h6 class="fw-bold mb-2">
                        <i class="fa-solid fa-user-plus text-primary me-2"></i>New Hires
                      </h6>
                      <h3 class="mb-0">15</h3>
                      <small class="text-muted">This month</small>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm">
                    <div class="card-body">
                      <h6 class="fw-bold mb-2">
                        <i class="fa-solid fa-rotate text-success me-2"></i>Rehired
                      </h6>
                      <h3 class="mb-0">3</h3>
                      <small class="text-muted">This month</small>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm">
                    <div class="card-body">
                      <h6 class="fw-bold mb-2">
                        <i class="fa-solid fa-paper-plane text-info me-2"></i>Offers Sent
                      </h6>
                      <h3 class="mb-0">8</h3>
                      <small class="text-muted">Pending Acceptance</small>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm">
                    <div class="card-body">
                      <h6 class="fw-bold mb-2">
                        <i class="fa-solid fa-clock text-warning me-2"></i>Onboarding
                      </h6>
                      <h3 class="mb-0">24</h3>
                      <small class="text-muted">In progress</small>
                    </div>
                  </div>
                </div>
              </div> -->
              <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                <h5 class="card-title-new mb-0">Active Hiring Pipeline</h5>
                <div class="filter-controls">
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Departments</option>
                      <option>IT</option>
                      <option>Human Resources</option>
                      <option>Operations</option>
                      <option>Finance</option>
                      <option>Engineering</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Stages</option>
                      <option>Initial Screening</option>
                      <option>Interview</option>
                      <option>Background Check</option>
                      <option>Offer Extended</option>
                      <option>Offer Accepted</option>
                      <option>Document Verification</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Status</option>
                      <option>In Progress</option>
                      <option>Ready to Join</option>
                      <option>Pending Docs</option>
                      <option>On Hold</option>
                    </select>
                  </div>
                  <div class="filter-search">
                    <input type="text" class="form-control form-control-sm" placeholder="Search candidates..."
                      style="font-size: 12px" />
                  </div>
                </div>
              </div>
              <div class="card border-0 shadow-sm mb-4">
                <div class="card-header bg-white py-3">
                  <!-- <div class="d-flex justify-content-between align-items-center"> -->
                  <!-- <h6 class="mb-0 fw-bold">Active Hiring Pipeline</h6> -->
                  <!-- <button class="btn btn-sm btn-outline-secondary">
                      <i class="fa-solid fa-filter me-1"></i> Filter
                    </button> -->
                  <!-- </div> -->
                </div>
                <div class="table-responsive">
                  <table class="table table-hover align-middle mb-0" style="font-size: 13px">
                    <thead class="table-light">
                      <tr>
                        <th>Candidate</th>
                        <th>Role Applied</th>
                        <th>Department</th>
                        <th>Stage</th>
                        <th>Status</th>
                        <th>Offer Date</th>
                        <th>Start Date</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <div
                              class="avatar-initials bg-soft-primary text-primary rounded-circle me-2 d-flex align-items-center justify-content-center"
                              style="
                                  width: 32px;
                                  height: 32px;
                                  font-weight: bold;
                                ">
                              JD
                            </div>
                            <div>
                              <div class="fw-bold">John Doe</div>
                              <div class="text-muted small">
                                john.doe@example.com
                              </div>
                            </div>
                          </div>
                        </td>
                        <td>Senior Developer</td>
                        <td>IT</td>
                        <td>
                          <div class="progress" style="height: 6px; width: 80px" title="Background Check">
                            <div class="progress-bar bg-info" style="width: 80%"></div>
                          </div>
                          <small class="text-muted" style="font-size: 10px">Background Check</small>
                        </td>
                        <td>
                          <span class="badge bg-soft-info text-info">In Progress</span>
                        </td>
                        <td>Jan 15, 2026</td>
                        <td>Feb 01, 2026</td>
                        <td>
                          <div class="dropdown">
                            <button class="btn btn-sm btn-light" data-bs-toggle="dropdown">
                              <i class="fa-solid fa-ellipsis-vertical"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" style="font-size: 12px">
                              <li><a class="dropdown-item" href="#"
                                  onclick="viewCandidateDetails('JD'); return false;"><i
                                    class="fa-solid fa-eye me-2"></i>View Details</a></li>
                              <li><a class="dropdown-item" href="#"
                                  onclick="updateCandidateStatus('JD'); return false;"><i
                                    class="fa-solid fa-edit me-2"></i>Update Status</a></li>
                              <li><a class="dropdown-item" href="#" onclick="sendOffer('JD'); return false;"><i
                                    class="fa-solid fa-paper-plane me-2"></i>Send Offer</a></li>
                              <li>
                                <hr class="dropdown-divider">
                              </li>
                              <li><a class="dropdown-item text-danger" href="#"
                                  onclick="rejectCandidate('JD'); return false;"><i
                                    class="fa-solid fa-times me-2"></i>Reject</a></li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <div
                              class="avatar-initials bg-soft-success text-success rounded-circle me-2 d-flex align-items-center justify-content-center"
                              style="
                                  width: 32px;
                                  height: 32px;
                                  font-weight: bold;
                                ">
                              AS
                            </div>
                            <div>
                              <div class="fw-bold">Alice Smith</div>
                              <div class="text-muted small">
                                alice.s@example.com
                              </div>
                            </div>
                          </div>
                        </td>
                        <td>HR Manager</td>
                        <td>Human Resources</td>
                        <td>
                          <div class="progress" style="height: 6px; width: 80px" title="Offer Accepted">
                            <div class="progress-bar bg-success" style="width: 100%"></div>
                          </div>
                          <small class="text-muted" style="font-size: 10px">Offer Accepted</small>
                        </td>
                        <td>
                          <span class="badge bg-soft-success text-success">Ready to Join</span>
                        </td>
                        <td>Jan 10, 2026</td>
                        <td>Jan 25, 2026</td>
                        <td>
                          <div class="dropdown">
                            <button class="btn btn-sm btn-light" data-bs-toggle="dropdown">
                              <i class="fa-solid fa-ellipsis-vertical"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" style="font-size: 12px">
                              <li><a class="dropdown-item" href="#"
                                  onclick="viewCandidateDetails('AS'); return false;"><i
                                    class="fa-solid fa-eye me-2"></i>View Details</a></li>
                              <li><a class="dropdown-item" href="#" onclick="startOnboarding('AS'); return false;"><i
                                    class="fa-solid fa-play me-2"></i>Start Onboarding</a></li>
                              <li><a class="dropdown-item" href="#" onclick="rescheduleJoining('AS'); return false;"><i
                                    class="fa-solid fa-calendar me-2"></i>Reschedule Joining</a></li>
                              <li>
                                <hr class="dropdown-divider">
                              </li>
                              <li><a class="dropdown-item text-danger" href="#"
                                  onclick="withdrawOffer('AS'); return false;"><i
                                    class="fa-solid fa-ban me-2"></i>Withdraw Offer</a></li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <div
                              class="avatar-initials bg-soft-warning text-warning rounded-circle me-2 d-flex align-items-center justify-content-center"
                              style="
                                  width: 32px;
                                  height: 32px;
                                  font-weight: bold;
                                ">
                              RK
                            </div>
                            <div>
                              <div class="fw-bold">Rahul Kumar</div>
                              <div class="text-muted small">
                                r.kumar@example.com
                              </div>
                            </div>
                          </div>
                        </td>
                        <td>Machine Operator</td>
                        <td>Operations</td>
                        <td>
                          <div class="progress" style="height: 6px; width: 80px" title="Document Verification">
                            <div class="progress-bar bg-warning" style="width: 60%"></div>
                          </div>
                          <small class="text-muted" style="font-size: 10px">Doc Verification</small>
                        </td>
                        <td>
                          <span class="badge bg-soft-warning text-warning">Pending Docs</span>
                        </td>
                        <td>Jan 20, 2026</td>
                        <td>Feb 05, 2026</td>
                        <td>
                          <div class="dropdown">
                            <button class="btn btn-sm btn-light" data-bs-toggle="dropdown">
                              <i class="fa-solid fa-ellipsis-vertical"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" style="font-size: 12px">
                              <li><a class="dropdown-item" href="#"
                                  onclick="viewCandidateDetails('RK'); return false;"><i
                                    class="fa-solid fa-eye me-2"></i>View Details</a>
                              </li>
                              <li><a class="dropdown-item" href="#" onclick="requestDocuments('RK'); return false;"><i
                                    class="fa-solid fa-file me-2"></i>Request
                                  Documents</a></li>
                              <li><a class="dropdown-item" href="#"
                                  onclick="updateCandidateStatus('RK'); return false;"><i
                                    class="fa-solid fa-edit me-2"></i>Update
                                  Status</a></li>
                              <li>
                                <hr class="dropdown-divider">
                              </li>
                              <li><a class="dropdown-item text-danger" href="#"
                                  onclick="rejectCandidate('RK'); return false;"><i
                                    class="fa-solid fa-times me-2"></i>Reject</a></li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="card-footer bg-white text-center">
                  <a href="#" class="text-decoration-none text-muted small">View all candidates</a>
                </div>
              </div>
            </div>

            <!-- Tab 4: Documents -->
            <div class="tab-pane fade" id="documents" role="tabpanel">
              <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                <h5 class="card-title-new mb-0">Document Management</h5>
                <div class="filter-controls">
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Document Types</option>
                      <option>ID Proof</option>
                      <option>Education</option>
                      <option>Contracts</option>
                      <option>Medical</option>
                      <option>Tax Forms</option>
                    </select>
                  </div>
                  <div class="filter-selects">
                    <select class="form-select form-select-sm" style="width: auto; font-size: 12px; min-width: 140px">
                      <option>All Status</option>
                      <option>Verified</option>
                      <option>Pending</option>
                      <option>Expiring Soon</option>
                      <option>Missing</option>
                    </select>
                  </div>
                  <div class="filter-search">
                    <input type="text" class="form-control form-control-sm" placeholder="Search documents..."
                      style="font-size: 12px" />
                  </div>
                </div>
              </div>
              <!-- <div class="row g-3 mb-4">
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm h-100"
                    style="background: linear-gradient(135deg, #28a745 0%, #34ce57 100%);">
                    <div class="card-body text-white">
                      <div class="d-flex justify-content-between align-items-start mb-3">
                        <div class="p-2 bg-white bg-opacity-25 rounded-circle"
                          style="width: 48px; height: 48px; display: flex; align-items: center; justify-content: center;">
                          <i class="fa-solid fa-check-circle" style="font-size: 24px;"></i>
                        </div>
                        <span class="badge bg-white bg-opacity-25 text-white">↑ 12%</span>
                      </div>
                      <h3 class="fw-bold mb-1">2,345</h3>
                      <p class="mb-0 opacity-75" style="font-size: 13px;">Verified Documents</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm h-100"
                    style="background: linear-gradient(135deg, #ffc107 0%, #ffda44 100%);">
                    <div class="card-body text-white">
                      <div class="d-flex justify-content-between align-items-start mb-3">
                        <div class="p-2 bg-white bg-opacity-25 rounded-circle"
                          style="width: 48px; height: 48px; display: flex; align-items: center; justify-content: center;">
                          <i class="fa-solid fa-clock" style="font-size: 24px;"></i>
                        </div>
                        <span class="badge bg-white bg-opacity-25 text-white">Pending</span>
                      </div>
                      <h3 class="fw-bold mb-1">156</h3>
                      <p class="mb-0 opacity-75" style="font-size: 13px;">Pending Review</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm h-100"
                    style="background: linear-gradient(135deg, #dc3545 0%, #f85c6a 100%);">
                    <div class="card-body text-white">
                      <div class="d-flex justify-content-between align-items-start mb-3">
                        <div class="p-2 bg-white bg-opacity-25 rounded-circle"
                          style="width: 48px; height: 48px; display: flex; align-items: center; justify-content: center;">
                          <i class="fa-solid fa-exclamation-triangle" style="font-size: 24px;"></i>
                        </div>
                        <span class="badge bg-white bg-opacity-25 text-white">Urgent</span>
                      </div>
                      <h3 class="fw-bold mb-1">23</h3>
                      <p class="mb-0 opacity-75" style="font-size: 13px;">Expiring Soon</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="card border-0 shadow-sm h-100"
                    style="background: linear-gradient(135deg, #6c757d 0%, #868e96 100%);">
                    <div class="card-body text-white">
                      <div class="d-flex justify-content-between align-items-start mb-3">
                        <div class="p-2 bg-white bg-opacity-25 rounded-circle"
                          style="width: 48px; height: 48px; display: flex; align-items: center; justify-content: center;">
                          <i class="fa-solid fa-file-circle-xmark" style="font-size: 24px;"></i>
                        </div>
                        <span class="badge bg-white bg-opacity-25 text-white">Action</span>
                      </div>
                      <h3 class="fw-bold mb-1">45</h3>
                      <p class="mb-0 opacity-75" style="font-size: 13px;">Missing Documents</p>
                    </div>
                  </div>
                </div>
              </div> -->

              <!-- 
              <div class="alert mb-4 border-0 shadow-sm"
                style="background: linear-gradient(135deg, #fff3cd 0%, #ffe69c 100%); border-left: 4px solid #ffc107 !important;">
                <div class="d-flex justify-content-between align-items-center">
                  <div class="d-flex align-items-center">
                    <div class="me-3 p-2 bg-white rounded-circle"
                      style="width: 40px; height: 40px; display: flex; align-items: center; justify-content: center;">
                      <i class="fa-solid fa-exclamation-triangle text-warning" style="font-size: 18px;"></i>
                    </div>
                    <div>
                      <strong class="d-block mb-1">Action Required</strong>
                      <span class="small">23 documents are expiring within the next 30 days</span>
                    </div>
                  </div>
                  <button class="btn btn-sm btn-warning shadow-sm px-3">
                    <i class="fa-solid fa-eye me-1"></i> View Expiring
                  </button>
                </div>
              </div> -->

              <div class="card border-0 shadow-sm mb-4">
                <!-- <div class="card-header bg-white py-3"> -->
                <!-- <div class="d-flex justify-content-between align-items-center">
                    <h6 class="mb-0 fw-bold">Document Status</h6>
                    <div class="d-flex gap-2">
                      <select class="form-select form-select-sm" style="width: 130px">
                        <option>All Documents</option>
                        <option>ID Proof</option>
                        <option>Education</option>
                        <option>Contracts</option>
                      </select>
                      <select class="form-select form-select-sm" style="width: 120px">
                        <option>All Status</option>
                        <option>Pending</option>
                        <option>Expired</option>
                        <option>Missing</option>
                      </select>
                    </div>
                  </div> -->
                <!-- </div> -->
                <div class="table-responsive document-table-horizontal">
                  <table class="table table-hover align-middle" style="font-size: 12px">
                    <thead class="table-light">
                      <tr>
                        <th>Employee Name</th>
                        <!-- Identity Documents -->
                        <th>Aadhar Card</th>
                        <th>PAN Card</th>
                        <th>Passport</th>
                        <th>Driving License</th>
                        <!-- Educational Documents -->
                        <th>10th Certificate</th>
                        <th>12th Certificate</th>
                        <th>Degree Certificate</th>
                        <!-- Employment Documents -->
                        <th>Offer Letter</th>
                        <th>Appointment Letter</th>
                        <th>NDA</th>
                        <!-- Bank & Salary -->
                        <th>Bank Details</th>
                        <th>PF Details</th>
                        <!-- Medical & Others -->
                        <th>Medical Certificate</th>
                        <!-- <th>Police Verification</th> -->
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody id="employeeDocumentsTable">
                      <!-- Employee 1: David Wilson -->
                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <img src="https://i.pravatar.cc/150?img=12" class="rounded-circle me-2"
                              style="width: 32px; height: 32px" />
                            <div>
                              <div class="fw-bold">David Wilson</div>
                              <div class="text-muted small">EMP001</div>
                            </div>
                          </div>
                        </td>
                        <!-- Identity Documents -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('aadhar.pdf')" title="Aadhar_Card.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pan.pdf')" title="PAN_Card.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Available</span>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('dl.pdf')" title="Driving_License.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Educational Documents -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('10th.pdf')" title="10th_Certificate.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('12th.pdf')" title="12th_Certificate.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('degree.pdf')"
                            title="Degree_Certificate.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Employment Documents -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('offer.pdf')" title="Offer_Letter.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('appointment.pdf')"
                            title="Appointment_Letter.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('nda.pdf')" title="NDA.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Bank & Salary -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('bank.pdf')" title="Bank_Details.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pf.pdf')" title="PF_Details.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Medical & Others -->
                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Available</span>
                        </td>
                        <!-- <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Available</span>
                        </td> -->
                        <td style="background: white">
                          <button class="btn btn-sm btn-light" onclick="downloadAllDocs('david')" title="Download All">
                            <i class="fa-solid fa-download"></i>
                          </button>
                        </td>
                      </tr>

                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                              style="width: 32px; height: 32px" />
                            <div>
                              <div class="fw-bold">Ramesh Kumar</div>
                              <div class="text-muted small">ID: CTR001</div>
                            </div>
                          </div>
                        </td>
                        <!-- Financial Documents -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                            title="Current_Year_Balance_Sheet.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                            title="Last_Year_Balance_Sheet.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>

                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Available</span>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Registration & Compliance -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                            title="GST_Certificate.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                            title="Address_Proof.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                            title="Directors_List.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Applicable</span>
                        </td>
                        <!-- Tax & Statutory -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Last 6 Months Filings -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                            title="GST_Returns_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                            title="ESIC_Returns_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                            title="PF_Challans_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td> -->
                        <td style=" background: white">
                          <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                            <i class="fa-solid fa-download"></i>
                          </button>
                        </td>
                      </tr>

                      <tr>
                        <td>
                          <div class="d-flex align-items-center">
                            <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                              style="width: 32px; height: 32px" />
                            <div>
                              <div class="fw-bold">Ramesh Kumar</div>
                              <div class="text-muted small">ID: CTR001</div>
                            </div>
                          </div>
                        </td>
                        <!-- Financial Documents -->

                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                            title="Last_Year_Balance_Sheet.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                            title="Bank_Statements_6M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Available</span>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Registration & Compliance -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                            title="GST_Certificate.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                            title="Address_Proof.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                            title="Directors_List.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <span class="badge bg-secondary">Not Applicable</span>
                        </td>
                        <!-- Tax & Statutory -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- Last 6 Months Filings -->
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                            title="GST_Returns_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                            title="ESIC_Returns_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td>
                        <!-- <td class="text-center doc-cell">
                          <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                            title="PF_Challans_3M.pdf">
                            <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                            <span>File</span>
                          </div>
                        </td> -->
                        <td style="background: white">
                          <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                            <i class="fa-solid fa-download"></i>
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="card-footer bg-white text-center">
                  <a href="#" class="text-decoration-none text-muted small">View all documents</a>
                </div>
              </div>
            </div>

            <!-- Tab 5: Analytics -->
            <div class="tab-pane fade " id="analytics" role="tabpanel">
              <div class="row g-3">
                <!-- Existing Cards: Department & Journey -->
                <div class="col-md-6">
                  <div class="card border-0 shadow-sm h-100">
                    <div class="card-body">
                      <h6 class="fw-bold mb-3">Department Distribution</h6>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">Operations</span>
                          <span class="small fw-bold">345 (39%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar" style="
                                width: 39%;
                                background-color: #e4520d;
                              "></div>
                        </div>
                      </div>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">Quality Assurance</span>
                          <span class="small fw-bold">198 (22%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-success" style="width: 22%"></div>
                        </div>
                      </div>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">HR</span>
                          <span class="small fw-bold">145 (16%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-info" style="width: 16%"></div>
                        </div>
                      </div>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">IT</span>
                          <span class="small fw-bold">102 (11%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-primary" style="width: 11%"></div>
                        </div>
                      </div>
                      <div>
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">Others</span>
                          <span class="small fw-bold">100 (12%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-secondary" style="width: 12%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="card border-0 shadow-sm h-100">
                    <div class="card-body">
                      <h6 class="fw-bold mb-3">Journey Stage Completion</h6>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">✅ Fully Onboarded</span>
                          <span class="small fw-bold">770 (87%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-success" style="width: 87%"></div>
                        </div>
                      </div>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">🔄 Documents Pending</span>
                          <span class="small fw-bold">65 (7%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-warning" style="width: 7%"></div>
                        </div>
                      </div>
                      <div class="mb-2">
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">⏳ Training Incomplete</span>
                          <span class="small fw-bold">45 (5%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar" style="
                                width: 5%;
                                background-color: #e4520d;
                              "></div>
                        </div>
                      </div>
                      <div>
                        <div class="d-flex justify-content-between mb-1">
                          <span class="small">❌ Exit Process</span>
                          <span class="small fw-bold">10 (1%)</span>
                        </div>
                        <div class="progress" style="height: 8px">
                          <div class="progress-bar bg-danger" style="width: 1%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- New Row: Retention & Compliance -->
              <div class="row g-3 mt-1">
                <div class="col-md-4">
                  <div class="card border-0 shadow-sm h-100">
                    <div class="card-body">
                      <h6 class="fw-bold mb-3">Retention Rate (YTD)</h6>
                      <div class="d-flex align-items-center mb-3">
                        <div class="display-6 fw-bold text-dark me-3">
                          94.2%
                        </div>
                        <span class="badge bg-soft-success text-success"><i class="fa-solid fa-arrow-up me-1"></i>
                          1.5%</span>
                      </div>
                      <p class="text-muted small mb-0">
                        High retention in Engineering, lower in Sales. Focus
                        on Q1 engagement needed.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card border-0 shadow-sm h-100">
                    <div class="card-body">
                      <h6 class="fw-bold mb-3">Training Compliance</h6>
                      <div class="d-flex align-items-center mb-3">
                        <div class="position-relative" style="width: 60px; height: 60px">
                          <svg viewBox="0 0 36 36" class="circular-chart orange">
                            <path class="circle-bg"
                              d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831"
                              fill="none" stroke="#eee" stroke-width="3" />
                            <path class="circle" stroke-dasharray="78, 100"
                              d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831"
                              fill="none" stroke="#E4520D" stroke-width="3" />
                          </svg>
                          <div class="position-absolute top-50 start-50 translate-middle fw-bold small">
                            78%
                          </div>
                        </div>
                        <div class="ms-3">
                          <div class="fw-bold">Safety Training</div>
                          <div class="text-muted small">
                            89 employees pending
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card border-0 shadow-sm h-100">
                    <div class="card-body">
                      <h6 class="fw-bold mb-3">Diversity Index</h6>
                      <div class="d-flex justify-content-between align-items-center mb-2">
                        <span class="small text-muted">Gender Ratio</span>
                        <span class="small fw-bold">60:40</span>
                      </div>
                      <div class="progress mb-3" style="height: 6px">
                        <div class="progress-bar bg-primary" style="width: 60%"></div>
                        <div class="progress-bar bg-info" style="width: 40%"></div>
                      </div>
                      <div class="d-flex justify-content-between align-items-center">
                        <span class="small text-muted">Leadership Diversity</span>
                        <span class="small fw-bold">35%</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>


              <!-- Tab 7: Organization Master -->
            <div class="tab-pane fade" id="org-master" role="tabpanel">
              <ul class="nav nav-pills mb-3 bg-light p-1 rounded-pill" id="orgMasterSubTabs" role="tablist"
                style="width: fit-content; font-size: 12px;">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active rounded-pill px-3 py-1" id="sub-dept-tab" data-bs-toggle="pill"
                    data-bs-target="#sub-departments" type="button" role="tab">Departments</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link rounded-pill px-3 py-1" id="sub-designation-tab" data-bs-toggle="pill"
                    data-bs-target="#sub-designations" type="button" role="tab">Designations</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link rounded-pill px-3 py-1" id="sub-category-tab" data-bs-toggle="pill"
                    data-bs-target="#sub-categories" type="button" role="tab">Categories</button>
                </li>
              </ul>

              <div class="tab-content" id="orgMasterSubTabContent">
                <!-- Sub-Tab: Departments -->
                <div class="tab-pane fade show active " id="sub-departments" role="tabpanel">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h6 class="fw-bold mb-0">Department List</h6>
                    <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                      data-bs-target="#addDeptModal">
                      <i class="fa-solid fa-plus me-1"></i> Add Department
                    </button>
                  </div>
                  <div class="table-responsive">
                    <table class="table table-hover align-middle" style="font-size: 12px;">
                      <thead class="table-light">
                        <tr>
                          <th>Department Name</th>
                          <th>Dept Code</th>
                          <th>Parent Dept</th>
                          <th>Status</th>
                          <th class="text-end">Actions</th>
                        </tr>
                      </thead>
                      <tbody id="deptTableContent">
                        <!-- Rendered by JS -->
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- Sub-Tab: Designations -->
                <div class="tab-pane fade" id="sub-designations" role="tabpanel">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h6 class="fw-bold mb-0">Designation List</h6>
                    <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                      data-bs-target="#addDesignationModal">
                      <i class="fa-solid fa-plus me-1"></i> Add Designation
                    </button>
                  </div>
                  <div class="table-responsive">
                    <table class="table table-hover align-middle" style="font-size: 12px;">
                      <thead class="table-light">
                        <tr>
                          <th>Designation Name</th>
                          <th>Department</th>
                          <th>Reports To</th>
                          <th>Level</th>
                          <th>Status</th>
                          <th class="text-end">Actions</th>
                        </tr>
                      </thead>
                      <tbody id="designationTableContent">
                        <!-- Rendered by JS -->
                      </tbody>
                    </table>
                  </div>
                </div>

                <!-- Sub-Tab: Categories -->
                <div class="tab-pane fade" id="sub-categories" role="tabpanel">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h6 class="fw-bold mb-0">Employee Categories</h6>
                    <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                      data-bs-target="#addCategoryModal">
                      <i class="fa-solid fa-plus me-1"></i> Add Category
                    </button>
                  </div>
                  <div class="row g-3" id="categoryGridContent">
                    <!-- Rendered by JS -->
                  </div>
                </div>
              </div>
            </div>

            <!-- Tab 6: Configuration -->
            <div class="tab-pane fade " id="config" role="tabpanel">
              <div class="row g-4">
                <div class="col-md-6">
                  <div class="card border-0 shadow-sm p-4 h-100">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <h6 class="fw-bold mb-0">Custom Fields</h6>
                      <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                        data-bs-target="#addConfigFieldModal">
                        <i class="fa-solid fa-plus me-1"></i> Add
                      </button>
                    </div>
                    <div class="config-list bg-light p-3 rounded" id="configFieldsList" style="min-height: 200px">
                      <!-- Rendered by JS -->
                      <div class="empty-state text-center py-5 opacity-50">
                        <i class="fa-solid fa-list-check fa-3x mb-2 text-orange"></i>
                        <p class="small mb-0">No custom fields configured yet</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="card border-0 shadow-sm p-4 h-100">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <h6 class="fw-bold mb-0">Document Requirements</h6>
                      <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                        data-bs-target="#addConfigDocModal">
                        <i class="fa-solid fa-plus me-1"></i> Add
                      </button>
                    </div>
                    <div class="config-list bg-light p-3 rounded" id="configDocsList" style="min-height: 200px">
                      <!-- Rendered by JS -->
                      <div class="empty-state text-center py-5 opacity-50">
                        <i class="fa-solid fa-file-contract fa-3x mb-2 text-orange"></i>
                        <p class="small mb-0">No document requirements yet</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          
            <!-- Tab 8: Fixed Salary -->
            <div class="tab-pane fade" id="fixed-salary" role="tabpanel">
              <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                  <h6 class="fw-bold mb-1">Fixed Salary Structures</h6>
                  <p class="text-muted small mb-0">Manage and configure salary calculation formulas and components.</p>
                </div>
                <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal"
                  data-bs-target="#fixedSalaryHeadersModal">
                  <i class="fa-solid fa-calculator me-1"></i> Set Structure
                </button>
              </div>
              <div class="row g-3" id="salaryStructureList">
                <!-- Rendered by JS -->
              </div>
            </div>

            <!-- Tab 9: Leave Setup -->
            <div class="tab-pane fade" id="leave-setup" role="tabpanel">
              <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                  <h6 class="fw-bold mb-1">Leave Rules Setup</h6>
                  <p class="text-muted small mb-0">Define and manage leave policies and entitlement rules.</p>
                </div>
                <button class="btn btn-sm btn-orange text-white" data-bs-toggle="modal" data-bs-target="#addLeaveRuleModal">
                  <i class="fa-solid fa-calendar-plus me-1"></i> Add Leave Rule
                </button>
              </div>

              <div class="row g-3" id="leaveRulesGrid">
                <!-- Active Rules Cards -->
                <div class="col-md-4">
                  <div class="card border shadow-sm p-3 h-100">
                    <div class="d-flex justify-content-between align-items-start mb-2">
                      <span class="badge bg-soft-success text-success" style="font-size: 10px">Active</span>
                      <div class="dropdown">
                        <button class="btn btn-link p-0 text-muted" data-bs-toggle="dropdown">
                          <i class="fa-solid fa-ellipsis-vertical"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end shadow-sm border-0 small">
                          <li><a class="dropdown-item" href="#"><i class="fa-solid fa-pen me-2"></i>Edit</a></li>
                          <li><a class="dropdown-item text-danger" href="#"><i class="fa-solid fa-trash me-2"></i>Delete</a></li>
                        </ul>
                      </div>
                    </div>
                    <h6 class="fw-bold mb-1" style="font-size: 14px;">Sick Leave</h6>
                    <div class="d-flex flex-column gap-1 mb-3 mt-2">
                       <span class="text-muted small"><i class="fa-solid fa-refresh me-1"></i> Cycle: Monthly</span>
                       <span class="text-muted small"><i class="fa-solid fa-plus-circle me-1"></i> Credit: 1.0 Day</span>
                       <span class="text-muted small"><i class="fa-solid fa-user-clock me-1"></i> Eligibility: 0 Days</span>
                    </div>
                    <button class="btn btn-sm btn-orange text-white w-100 mt-auto" style="font-size: 11px;">View Policy Details</button>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="card border shadow-sm p-3 h-100">
                    <div class="d-flex justify-content-between align-items-start mb-2">
                      <span class="badge bg-soft-success text-success" style="font-size: 10px">Active</span>
                      <div class="dropdown">
                        <button class="btn btn-link p-0 text-muted" data-bs-toggle="dropdown">
                          <i class="fa-solid fa-ellipsis-vertical"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end shadow-sm border-0 small">
                          <li><a class="dropdown-item" href="#"><i class="fa-solid fa-pen me-2"></i>Edit</a></li>
                          <li><a class="dropdown-item text-danger" href="#"><i class="fa-solid fa-trash me-2"></i>Delete</a></li>
                        </ul>
                      </div>
                    </div>
                    <h6 class="fw-bold mb-1" style="font-size: 14px;">Casual Leave</h6>
                    <div class="d-flex flex-column gap-1 mb-3 mt-2">
                       <span class="text-muted small"><i class="fa-solid fa-refresh me-1"></i> Cycle: Quarterly</span>
                       <span class="text-muted small"><i class="fa-solid fa-plus-circle me-1"></i> Credit: 2.5 Days</span>
                       <span class="text-muted small"><i class="fa-solid fa-user-clock me-1"></i> Eligibility: 30 Days</span>
                    </div>
                    <button class="btn btn-sm btn-orange text-white w-100 mt-auto" style="font-size: 11px;">View Policy Details</button>
                  </div>
                </div>
              </div>
            </div>

            <!-- Tab 6: ADD SALARY STRUCTURE -->
            <div class="tab-pane fade" id="salary-mgmt" role="tabpanel">
              <!-- Inner Tabs Navigation (Enhanced Toggle Style) -->
              <div class="mb-4">
                <div class="salary-tab-pill-group shadow-sm" role="tablist">
                  <button class="btn salary-tab-btn active" id="inner-structure-tab" data-bs-toggle="tab" data-bs-target="#inner-structure" type="button" role="tab" aria-controls="inner-structure" aria-selected="true">Salary Structure</button>
                  <button class="btn salary-tab-btn inactive" id="inner-calculator-tab" data-bs-toggle="tab" data-bs-target="#inner-calculator" type="button" role="tab" aria-controls="inner-calculator" aria-selected="false">Salary Calculator</button>
                  <button class="btn salary-tab-btn inactive" id="inner-logo-tab" data-bs-toggle="tab" data-bs-target="#inner-logo" type="button" role="tab" aria-controls="inner-logo" aria-selected="false">Upload Logo</button>
                  <button class="btn salary-tab-btn inactive" id="inner-salary-tab" data-bs-toggle="tab" data-bs-target="#inner-salary-template" type="button" role="tab" aria-controls="inner-salary-template" aria-selected="false">Salary Template</button>
                  <button class="btn salary-tab-btn inactive" id="inner-esic-tab" data-bs-toggle="tab" data-bs-target="#inner-esic-template" type="button" role="tab" aria-controls="inner-esic-template" aria-selected="false">ESIC Template</button>
                  <button class="btn salary-tab-btn inactive" id="inner-pf-tab" data-bs-toggle="tab" data-bs-target="#inner-pf-template" type="button" role="tab" aria-controls="inner-pf-template" aria-selected="false">PF Template</button>
                </div>
              </div>

              <div class="tab-content" id="salaryInnerTabContent">
                <!-- Inner Tab 1: Salary Structure -->
                <div class="tab-pane fade show active" id="inner-structure" role="tabpanel">
                  <div class="row mb-4 animate__animated animate__fadeIn">
                    <div class="col-md-12">
                      <div class="d-flex justify-content-between align-items-center mb-4">
                        <div>
                          <h5 class="fw-bold mb-1">Salary Structure Management</h5>
                          <p class="text-muted small mb-0">Define and manage complex formula structures for payroll processing.</p>
                        </div>
                        <div class="d-flex gap-2">
                           <button class="btn btn-sm btn-orange text-white px-3 fw-bold shadow-sm" onclick="openFormulaSetup('M', 'salaryhead')">
                             <i class="fa-solid fa-plus me-1"></i> Add Main Salary Structure
                           </button>
                           <button class="btn btn-sm btn-orange text-white px-3 fw-bold shadow-sm" onclick="openFormulaSetup('S', 'ot sheet')">
                             <i class="fa-solid fa-clock me-1"></i> Add OT Salary Structure
                           </button>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Card-based Structure Grid -->
                  <div class="row g-4 animate__animated animate__fadeInUp">
                    <!-- Card 1: Main Salary -->
                    <div class="col-md-4">
                      <div class="card border-0 shadow-sm h-100 structure-card">
                        <div class="card-header bg-white border-0 pt-4 px-4 pb-0 d-flex justify-content-between align-items-start">
                          <div>
                            <span class="badge bg-soft-primary text-primary px-3 py-1 rounded-pill mb-2">Main Formula</span>
                            <h6 class="fw-bold text-dark mb-0 ls-1">salaryhead</h6>
                          </div>
                          <div class="stat-icon bg-soft-primary text-primary mb-0" style="width: 35px; height: 35px; border-radius: 10px;">
                            <i class="fa-solid fa-calculator small"></i>
                          </div>
                        </div>
                        <div class="card-body px-4 py-4">
                          <div class="d-flex flex-column gap-3">
                            <div class="d-flex justify-content-between border-bottom pb-2">
                              <span class="text-muted small">Based On</span>
                              <span class="fw-bold small">factory</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom pb-2">
                              <span class="text-muted small">Structure Name</span>
                              <span class="fw-bold small">testprakash2</span>
                            </div>
                            <div class="d-flex justify-content-between">
                              <span class="text-muted small">Type</span>
                              <span class="badge bg-light text-dark border small px-2">NON_NAPS</span>
                            </div>
                          </div>
                        </div>
                        <div class="card-footer bg-white border-0 p-4 pt-0">
                          <button class="btn btn-orange text-white w-100 fw-bold py-2 shadow-sm rounded-pill mb-2" onclick="openFormulaSetup('M', 'salaryhead')">
                            <i class="fa-solid fa-gear me-1 small"></i> Set Main Structure
                          </button>
                          <button class="btn btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="selectStructureForCalculator('factory', 'salaryhead')">
                            <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                          </button>
                        </div>
                      </div>
                    </div>

                    <!-- Card 2: OT Sheet -->
                    <div class="col-md-4">
                      <div class="card border-0 shadow-sm h-100 structure-card">
                        <div class="card-header bg-white border-0 pt-4 px-4 pb-0 d-flex justify-content-between align-items-start">
                          <div>
                            <span class="badge bg-soft-info text-info px-3 py-1 rounded-pill mb-2">Sub Formula</span>
                            <h6 class="fw-bold text-dark mb-0 ls-1">ot sheet</h6>
                          </div>
                          <div class="stat-icon bg-soft-info text-info mb-0" style="width: 35px; height: 35px; border-radius: 10px;">
                            <i class="fa-solid fa-clock small"></i>
                          </div>
                        </div>
                        <div class="card-body px-4 py-4">
                          <div class="d-flex flex-column gap-3">
                            <div class="d-flex justify-content-between border-bottom pb-2">
                              <span class="text-muted small">Based On</span>
                              <span class="fw-bold small">factory</span>
                            </div>
                            <div class="d-flex justify-content-between border-bottom pb-2">
                              <span class="text-muted small">Structure Name</span>
                              <span class="fw-bold small">testprakash2</span>
                            </div>
                            <div class="d-flex justify-content-between">
                              <span class="text-muted small">Type</span>
                              <span class="badge bg-light text-dark border small px-2">NON_NAPS</span>
                            </div>
                          </div>
                        </div>
                        <div class="card-footer bg-white border-0 p-4 pt-0">
                          <button class="btn btn-outline-info w-100 fw-bold py-2 rounded-pill mb-2" onclick="openFormulaSetup('S', 'ot sheet')">
                            <i class="fa-solid fa-gear me-1 small"></i> Set OT Structure
                          </button>
                          <button class="btn btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="selectStructureForCalculator('factory', 'ot sheet')">
                            <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                          </button>
                        </div>
                      </div>
                    </div>

                    <!-- Add More Card (Mockup for empty state/adding more) -->
                    <div class="col-md-4">
                      <div class="card border-dashed h-100 d-flex align-items-center justify-content-center p-5 bg-transparent" style="border: 2px dashed #cbd5e0; border-radius: 12px; cursor: pointer; transition: all 0.3s;" onclick="openFormulaSetup('S', '')">
                        <div class="text-center">
                          <div class="stat-icon bg-light text-muted mx-auto mb-3" style="width: 50px; height: 50px; border-radius: 50%;">
                            <i class="fa-solid fa-plus"></i>
                          </div>
                          <h6 class="fw-bold text-muted mb-1">Add New Structure</h6>
                          <p class="text-muted small mb-0">Click to configure additional formulas</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Inner Tab 2: Salary Calculator -->
                <div class="tab-pane fade" id="inner-calculator" role="tabpanel">
                  <div class="row mb-4 animate__animated animate__fadeIn">
                    <div class="col-md-12">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <div>
                          <h5 class="fw-bold mb-1">Salary Calculation Formula Setup</h5>
                          <div class="d-flex align-items-center gap-2">
                             <span class="badge bg-soft-orange text-orange px-3 rounded-pill" id="activeFactoryDisplay">factory</span>
                             <i class="fa-solid fa-chevron-right text-muted small" style="font-size: 8px;"></i>
                             <span class="badge bg-soft-primary text-primary px-3 rounded-pill" id="activeStructureDisplay">salaryhead</span>
                          </div>
                        </div>
                        <button class="btn btn-sm btn-outline-secondary rounded-pill px-3 shadow-sm" onclick="resetAllFormulas()">
                          <i class="fa-solid fa-rotate-left me-1"></i> Reset All Formulas
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="dashboard-card border-0 shadow-sm rounded-4 overflow-hidden animate__animated animate__fadeInUp">
                    <div class="table-responsive">
                      <table class="table table-hover align-middle mb-0" style="font-size: 13px;">
                        <thead class="bg-light text-muted text-uppercase" style="font-size: 11px; letter-spacing: 0.5px;">
                          <tr>
                            <th class="ps-4 py-3">Component</th>
                            <th class="py-3">Current Definition</th>
                            <th class="py-3 text-center">Action</th>
                          </tr>
                        </thead>
                        <tbody id="componentSetupTbody">
                          <!-- Dynamically populated by JavaScript -->
                        </tbody>
                      </table>
                    </div>
                  </div>

                  <div class="mt-4 text-center">
                     <button class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold py-2" onclick="showCalculatorModal()">
                       <i class="fa-solid fa-calculator me-2"></i> Open Global Calculator
                     </button>
                  </div>
                </div>

                <!-- Inner Tab 3: Upload Logo -->
                <div class="tab-pane fade" id="inner-logo" role="tabpanel">
                  <div class="card border-0 shadow-sm p-4">
                    <div class="text-center py-5">
                      <div class="mb-3">
                        <i class="fa-solid fa-image fa-3x text-muted opacity-50"></i>
                      </div>
                      <h5 class="fw-bold">Upload Company Logo</h5>
                      <p class="text-muted small mb-4">Upload your company logo to be displayed on salary slips and reports.</p>
                      <button class="btn btn-orange text-white px-4 rounded-pill fw-bold">
                        <i class="fa-solid fa-upload me-2"></i>Select Logo
                      </button>
                    </div>
                  </div>
                </div>

                <!-- Inner Tab 4: Salary Template -->
                <div class="tab-pane fade" id="inner-salary-template" role="tabpanel">
                  <div class="card border-0 shadow-sm p-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div>
                        <h5 class="fw-bold mb-1">Salary Slip Templates</h5>
                        <p class="text-muted small mb-0">Choose and customize the template for employee salary slips.</p>
                      </div>
                      <button class="btn btn-sm btn-orange text-white px-3 fw-bold shadow-sm">
                        <i class="fa-solid fa-plus me-1"></i> Add New Template
                      </button>
                    </div>
                    <div class="row g-3">
                      <div class="col-md-4">
                        <div class="border rounded p-3 text-center bg-light">
                          <div class="mb-2"><i class="fa-solid fa-file-invoice fa-2x text-orange"></i></div>
                          <h6 class="fw-bold mb-1">Standard Template</h6>
                          <p class="text-muted small mb-2">Default professional layout</p>
                          <span class="badge bg-success small">ACTIVE</span>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="border rounded p-3 text-center opacity-75">
                          <div class="mb-2"><i class="fa-solid fa-file-invoice fa-2x text-muted"></i></div>
                          <h6 class="fw-bold mb-1">Modern Template</h6>
                          <p class="text-muted small mb-2">Sleek and minimal design</p>
                          <button class="btn btn-sm btn-outline-orange py-1">Preview</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Inner Tab 5: ESIC Template -->
                <div class="tab-pane fade" id="inner-esic-template" role="tabpanel">
                  <div class="p-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div>
                        <h5 class="fw-bold mb-1">ESIC Settlement Template</h5>
                        <p class="text-muted small mb-0">Configure column mapping for official ESIC portal uploads.</p>
                      </div>
                      <div class="d-flex gap-2">
                        <button class="btn btn-sm btn-outline-dark fw-bold px-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#esicReasonCodesModal">
                          <i class="fa-solid fa-circle-info me-1"></i> View Reason Codes
                        </button>
                        <button class="btn btn-sm btn-orange text-white fw-bold px-3 rounded-pill shadow-sm">
                          <i class="fa-solid fa-file-excel me-1"></i> Download Sample
                        </button>
                      </div>
                    </div>

                    <div class="row g-4">
                      <!-- Left Column: Primary Mappings (1-5) -->
                      <div class="col-lg-6">
                        <div class="card border-0 shadow-sm glass-card h-100">
                          <div class="card-header bg-transparent border-0 pt-4 px-4">
                            <h6 class="fw-bold mb-0"><i class="fa-solid fa-list-check text-orange me-2"></i>Primary Data Mapping</h6>
                          </div>
                          <div class="card-body p-4">
                            <div class="mapping-grid">
                              <!-- Col 1 -->
                              <div class="mapping-item mb-4 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 1: IP Number</span>
                                  <span class="badge bg-light text-dark border small">Required</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">IP Number (10 Digits)</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="IP Number" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 2 -->
                              <div class="mapping-item mb-4 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 2: IP Name</span>
                                  <span class="badge bg-light text-dark border small">Required</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Full Name (Alphabets Only)</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="IP Name" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 3 -->
                              <div class="mapping-item mb-4 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 3: Paid Days</span>
                                  <span class="badge bg-light text-dark border small">Required</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Paid Days in Month</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="Paid Days" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 4 -->
                              <div class="mapping-item mb-4 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 4: Total Wages</span>
                                  <span class="badge bg-light text-dark border small">Required</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Gross Monthly Wages</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="Total Wages" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 5 -->
                              <div class="mapping-item">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 5: Reason Code</span>
                                  <span class="small text-orange" data-bs-toggle="tooltip" title="0: Without Reason, 1: On Leave, 2: Left Service, etc."><i class="fa-solid fa-circle-question"></i></span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Zero Working Days Reason</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="Reason Code" readonly disabled></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- Right Column: Optional/Advanced Mappings (6-12) -->
                      <div class="col-lg-6">
                        <div class="card border-0 shadow-sm glass-card h-100">
                          <div class="card-header bg-transparent border-0 pt-4 px-4">
                            <h6 class="fw-bold mb-0"><i class="fa-solid fa-sliders text-orange me-2"></i>Advanced Column Setup</h6>
                          </div>
                          <div class="card-body p-4">
                            <div class="row g-3">
                              <!-- Dynamic Rows 6-12 -->
                              <div class="col-12">
                                <div class="table-responsive">
                                  <table class="table table-borderless table-sm align-middle" style="font-size: 12px;">
                                    <thead>
                                      <tr class="text-muted">
                                        <th style="width: 10%;">#</th>
                                        <th style="width: 45%;">Data Field</th>
                                        <th style="width: 45%;">Excel Header</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td class="fw-bold">6</td>
                                        <td>
                                          <select class="form-select form-select-sm border-0 bg-light">
                                            <option>Last Working Day</option>
                                            <option>None</option>
                                          </select>
                                        </td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. LWD"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">7</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 7"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">8</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 8"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">9</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 9"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">10</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 10"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">11</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 11"></td>
                                      </tr>
                                      <tr>
                                        <td class="fw-bold">12</td>
                                        <td><select class="form-select form-select-sm border-0 bg-light"><option>Select Field</option></select></td>
                                        <td><input type="text" class="form-control form-control-sm border-0 bg-light" placeholder="e.g. Header 12"></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                            
                            <div class="mt-4 pt-3 border-top text-end">
                              <button class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold">Update Mapping</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="tab-pane fade" id="inner-pf-template" role="tabpanel">
                  <div class="p-4">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                      <div>
                        <h5 class="fw-bold mb-1">PF Settlement Template</h5>
                        <p class="text-muted small mb-0">Configure column mapping for official EPF portal ECR uploads.</p>
                      </div>
                      <div class="d-flex gap-2">
                        <button class="btn btn-sm btn-outline-dark fw-bold px-3 rounded-pill shadow-sm">
                          <i class="fa-solid fa-file-excel me-1"></i> Download Sample
                        </button>
                        <button class="btn btn-sm btn-orange text-white fw-bold px-3 rounded-pill shadow-sm">
                          <i class="fa-solid fa-cloud-arrow-up me-1"></i> Update Mapping
                        </button>
                      </div>
                    </div>

                    <div class="row g-4">
                      <!-- Left Column: Primary Mappings (1-8) -->
                      <div class="col-lg-6">
                        <div class="card border-0 shadow-sm glass-card h-100">
                          <div class="card-header bg-transparent border-0 pt-4 px-4">
                             <h6 class="fw-bold mb-0"><i class="fa-solid fa-shield-halved text-orange me-2"></i>Primary Data Mapping (Part 1)</h6>
                          </div>
                          <div class="card-body p-4">
                            <div class="mapping-grid">
                              <!-- Col 1 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 1: UAN</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">12-Digit Universal Account Number</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="UAN" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 2 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 2: Member Name</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Member Name (As per PF)</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="MEMBER NAME" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 3 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 3: Gross Wages</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Employee Gross Wages</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="GROSS WAGES" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 4 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 4: EPF Wages</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Wages for EPF Contribution</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EPF WAGES" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 5 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 5: EPS Wages</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Wages for EPS (Pension)</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EPS WAGES" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 6 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 6: EDLI Wages</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Standard EDLI Wages</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EDLI WAGES" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 7 -->
                              <div class="mapping-item mb-3 pb-3 border-bottom">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 7: EPF Contri Remitted</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">EPF Contribution Amount</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EPF CONTRI REMITTED" readonly disabled></div>
                                </div>
                              </div>
                              <!-- Col 8 -->
                              <div class="mapping-item">
                                <div class="d-flex justify-content-between mb-2">
                                  <span class="small fw-bold text-dark">Column 8: EPS Contri Remitted</span>
                                  <span class="badge bg-light text-muted border small">Fixed</span>
                                </div>
                                <div class="row g-2">
                                  <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Pension Fund Amount remitted</div></div>
                                  <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EPS CONTRI REMITTED" readonly disabled></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- Right Column: Primary (9-11) + Advanced (12-16) -->
                      <div class="col-lg-6">
                        <div class="card border-0 shadow-sm glass-card h-100">
                          <div class="card-header bg-transparent border-0 pt-4 px-4">
                            <h6 class="fw-bold mb-0"><i class="fa-solid fa-sliders text-orange me-2"></i>Mandatory & Optional Setup</h6>
                          </div>
                          <div class="card-body p-4">
                            <!-- Columns 9-11 (Locked) -->
                            <div class="mapping-grid mb-4">
                               <!-- Col 9 -->
                               <div class="mapping-item mb-3 pb-3 border-bottom">
                                 <div class="d-flex justify-content-between mb-2">
                                   <span class="small fw-bold text-dark">Column 9: EPF EPS Diff Remitted</span>
                                   <span class="badge bg-light text-muted border small">Fixed</span>
                                 </div>
                                 <div class="row g-2">
                                   <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Difference Amount</div></div>
                                   <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="EPF EPS DIFF REMITTED" readonly disabled></div>
                                 </div>
                               </div>
                               <!-- Col 10 -->
                               <div class="mapping-item mb-3 pb-3 border-bottom">
                                 <div class="d-flex justify-content-between mb-2">
                                   <span class="small fw-bold text-dark">Column 10: NCP Days</span>
                                   <span class="badge bg-light text-muted border small">Fixed</span>
                                 </div>
                                 <div class="row g-2">
                                   <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Non-Contributory Period Days</div></div>
                                   <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="NCP DAYS" readonly disabled></div>
                                 </div>
                               </div>
                               <!-- Col 11 -->
                               <div class="mapping-item mb-4">
                                 <div class="d-flex justify-content-between mb-2">
                                   <span class="small fw-bold text-dark">Column 11: Refund of Advances</span>
                                   <span class="badge bg-light text-muted border small">Fixed</span>
                                 </div>
                                 <div class="row g-2">
                                   <div class="col-6"><div class="p-2 bg-light rounded-3 small text-muted border-dashed-custom">Refund Amount (If any)</div></div>
                                   <div class="col-6"><input type="text" class="form-control form-control-sm border-0 bg-light px-3 fw-bold" value="REFUND OF ADVANCES" readonly disabled></div>
                                 </div>
                               </div>
                            </div>
                            
                            <!-- Dynamic Columns 12-16 -->
                            <div class="mt-2 text-muted small fw-bold text-uppercase mb-3"><i class="fa-solid fa-plus-circle me-1"></i> Optional Add-on Mappings</div>
                            <div class="table-responsive">
                              <table class="table table-borderless table-sm align-middle mb-0" style="font-size: 12px;">
                                <thead>
                                  <tr class="text-muted border-bottom border-light">
                                    <th style="width: 10%;">#</th>
                                    <th style="width: 45%;">Data Field</th>
                                    <th>Header Title</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <!-- Rows 12-16 -->
                                  <tr>
                                    <td>12</td>
                                    <td>
                                      <select class="form-select form-select-sm border-0 bg-light px-3">
                                        <option value="">Select Field</option>
                                        <option value="arrear">Arrear Wages</option>
                                        <option value="pf_arrear">PF Arrear</option>
                                        <option value="other">Other</option>
                                      </select>
                                    </td>
                                    <td><input type="text" class="form-control form-control-sm border-0 bg-light px-3" placeholder="Ex: Arrears"></td>
                                  </tr>
                                  <tr>
                                    <td>13</td>
                                    <td>
                                      <select class="form-select form-select-sm border-0 bg-light px-3">
                                        <option value="">Select Field</option>
                                        <option value="arrear">Arrear Wages</option>
                                        <option value="pf_arrear">PF Arrear</option>
                                      </select>
                                    </td>
                                    <td><input type="text" class="form-control form-control-sm border-0 bg-light px-3" placeholder="Header"></td>
                                  </tr>
                                  <tr>
                                    <td>14</td>
                                    <td><select class="form-select form-select-sm border-0 bg-light px-3"><option value="">Select</option></select></td>
                                    <td><input type="text" class="form-control form-control-sm border-0 bg-light px-3" placeholder="Header"></td>
                                  </tr>
                                  <tr>
                                    <td>15</td>
                                    <td><select class="form-select form-select-sm border-0 bg-light px-3"><option value="">Select</option></select></td>
                                    <td><input type="text" class="form-control form-control-sm border-0 bg-light px-3" placeholder="Header"></td>
                                  </tr>
                                  <tr>
                                    <td>16</td>
                                    <td><select class="form-select form-select-sm border-0 bg-light px-3"><option value="">Select</option></select></td>
                                    <td><input type="text" class="form-control form-control-sm border-0 bg-light px-3" placeholder="Header"></td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            
                            <div class="mt-4 text-end">
                              <button class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold">Update PF Template</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
       
          </div>  
            <!-- Tab 7: Expense Setup -->
            <div class="tab-pane fade" id="expense-setup" role="tabpanel">
              <!-- Section 1: Tabs (Enhanced Toggle Style) -->
              <div class="mb-4">
            <div class="nav expense-tab-pill-group shadow-sm" role="tablist">

  <button class="btn expense-tab-btn active"
          data-bs-toggle="tab"
          data-bs-target="#expense-setup-content"
          type="button"
          role="tab">
    EXPENSE SETUP
  </button>

  <button class="btn expense-tab-btn"
          data-bs-toggle="tab"
          data-bs-target="#expense-formula-content"
          type="button"
          role="tab">
    EXPENSE SETUP FORMULA
  </button>

</div>



              </div>


              <!-- Tab Content Container -->
              <div class="tab-content">
                <!-- Tab 1: Expense Setup Content -->
                <div class="tab-pane fade show active" id="expense-setup-content" role="tabpanel">
                  <div class="mb-3">
                    <h6 class="fw-bold mb-0" style="font-size: 13px; color: #2b3a67;">Expense Structure Details</h6>
                    <p class="text-muted small mb-0">Manage expense structures for your organization</p>
                  </div>

                  <!-- Card Grid -->
                  <div class="row g-3">
                    <!-- Card 1: OT Sheet Structure -->
                    <div class="col-md-6">
                      <div class="card expense-structure-card border-0 shadow-sm h-100 rounded-4 overflow-hidden">
                        <div class="card-body p-4">
                          <!-- Header -->
                          <div class="d-flex justify-content-between align-items-start mb-3">
                            <div class="d-flex align-items-center">
                              <div class="stat-icon bg-soft-orange text-orange me-3" style="width: 45px; height: 45px; border-radius: 12px;">
                                <i class="fa-solid fa-file-invoice"></i>
                              </div>
                              <div>
                                <h6 class="fw-bold mb-1" style="color: #2b3a67;">ot sheet</h6>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="badge bg-soft-orange text-orange small px-2 py-1">factory</span>
                                  <span class="badge bg-light text-dark small px-2 py-1">testprakash2</span>
                                </div>
                              </div>
                            </div>
                            <span class="badge rounded-pill bg-soft-orange text-orange px-3 py-1" style="font-size: 10px;">S</span>
                          </div>

                          <!-- Info Grid -->
                          <div class="mb-3">
                            <div class="row g-2">
                              <div class="col-6">
                                <div class="small text-muted mb-1">Type</div>
                                <div class="fw-semibold small" style="color: #2b3a67;">NON_NAPS</div>
                              </div>
                              <div class="col-6">
                                <div class="small text-muted mb-1">Components</div>
                                <div class="fw-medium small" style="color: #4a5073;">
                                  <i class="fa-solid fa-shield-halved text-orange small me-1"></i>
                                  <i class="fa-solid fa-heart-pulse text-primary small"></i>
                                </div>
                              </div>
                            </div>
                          </div>

                          <!-- Components List -->
                          <div class="mb-3 p-2 bg-light rounded-3">
                            <div class="small fw-semibold mb-1" style="color: #7c8db5; font-size: 10px; text-transform: uppercase; letter-spacing: 0.5px;">Active Components</div>
                            <div class="d-flex flex-wrap gap-1">
                              <span class="badge bg-white text-orange border border-orange small">Provident Fund</span>
                              <span class="badge bg-white text-primary border border-primary small">ESIC</span>
                            </div>
                          </div>

                          <!-- Actions -->
                          <div class="d-flex flex-column gap-2">
                            <div class="d-flex gap-2">
                              <a href="#" class="btn btn-sm btn-outline-secondary rounded-pill px-3 flex-grow-1" style="font-size: 11px;">
                                <i class="fa-solid fa-rotate-left me-1"></i> Reset
                              </a>
                              <button class="btn btn-sm btn-orange text-white rounded-pill px-3 flex-grow-1" data-bs-toggle="modal" data-bs-target="#setStructureModal" style="font-size: 11px;">
                                <i class="fa-solid fa-pen me-1"></i> Edit
                              </button>
                            </div>
                            <button class="btn btn-sm btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="openExpenseFormula('factory', 'ot sheet')">
                              <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- Card 2: Salaryhead Structure -->
                    <div class="col-md-6">
                      <div class="card expense-structure-card border-0 shadow-sm h-100 rounded-4 overflow-hidden">
                        <div class="card-body p-4">
                          <!-- Header -->
                          <div class="d-flex justify-content-between align-items-start mb-3">
                            <div class="d-flex align-items-center">
                              <div class="stat-icon bg-soft-primary text-primary me-3" style="width: 45px; height: 45px; border-radius: 12px;">
                                <i class="fa-solid fa-money-bill-wave"></i>
                              </div>
                              <div>
                                <h6 class="fw-bold mb-1" style="color: #2b3a67;">salaryhead</h6>
                                <div class="d-flex align-items-center gap-2">
                                  <span class="badge bg-soft-orange text-orange small px-2 py-1">factory</span>
                                  <span class="badge bg-light text-dark small px-2 py-1">testprakash2</span>
                                </div>
                              </div>
                            </div>
                            <span class="badge rounded-pill bg-secondary-subtle text-secondary px-3 py-1" style="font-size: 10px;">M</span>
                          </div>

                          <!-- Info Grid -->
                          <div class="mb-3">
                            <div class="row g-2">
                              <div class="col-6">
                                <div class="small text-muted mb-1">Type</div>
                                <div class="fw-semibold small" style="color: #2b3a67;">NON_NAPS</div>
                              </div>
                              <div class="col-6">
                                <div class="small text-muted mb-1">Status</div>
                                <span class="badge bg-danger-subtle text-danger small">NOT SET</span>
                              </div>
                            </div>
                          </div>

                          <!-- Status Notice -->
                          <div class="mb-3 p-3 bg-light rounded-3 border border-warning-subtle">
                            <div class="d-flex align-items-center">
                              <i class="fa-solid fa-circle-exclamation text-warning me-2"></i>
                              <div class="small text-muted">No expense components configured yet</div>
                            </div>
                          </div>

                          <!-- Actions -->
                          <div class="d-flex flex-column gap-2">
                            <button class="btn btn-sm btn-primary rounded-pill px-4 w-100" data-bs-toggle="modal" data-bs-target="#setStructureModal" style="font-size: 11px;">
                              <i class="fa-solid fa-plus-circle me-1"></i> Set Structure
                            </button>
                            <button class="btn btn-sm btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="openExpenseFormula('factory', 'salaryhead')">
                              <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Tab 2: Expense Formula Content -->
                <div class="tab-pane fade  " id="expense-formula-content" role="tabpanel">
                  <div class="row mb-4 animate__animated animate__fadeIn">
                    <div class="col-md-12">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <div>
                          <h5 class="fw-bold mb-1">Expense Formula Setup</h5>
                          <div class="d-flex align-items-center gap-2">
                             <span class="badge bg-soft-orange text-orange px-3 rounded-pill" id="expenseActiveFactoryDisplay">factory</span>
                             <i class="fa-solid fa-chevron-right text-muted small" style="font-size: 8px;"></i>
                             <span class="badge bg-soft-primary text-primary px-3 rounded-pill" id="expenseActiveStructureDisplay">testprakash2</span>
                          </div>
                        </div>
                        <button class="btn btn-sm btn-outline-secondary rounded-pill px-3 shadow-sm">
                          <i class="fa-solid fa-rotate-left me-1"></i> Reset All Formulas
                        </button>
                      </div>
                    </div>
                  </div>

                  <div class="dashboard-card border-0 shadow-sm rounded-4 overflow-hidden animate__animated animate__fadeInUp">
                    <div class="table-responsive">
                      <table class="table table-hover align-middle mb-0" style="font-size: 13px;">
                        <thead class="bg-light text-muted text-uppercase" style="font-size: 11px; letter-spacing: 0.5px;">
                          <tr>
                            <th class="ps-4 py-3">Component</th>
                            <th class="py-3">Current Definition</th>
                            <th class="py-3 text-center">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          <!-- PF Row -->
                          <tr>
                            <td class="ps-4">
                              <div class="d-flex align-items-center">
                                <div class="stat-icon bg-soft-orange text-orange me-3" style="width: 35px; height: 35px; border-radius: 8px;">
                                  <i class="fa-solid fa-shield-halved"></i>
                                </div>
                                <div class="fw-bold text-dark">Provident Fund (PF)</div>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <span class="text-muted small me-2" style="font-family: monospace;">BASIC * 0.12</span>
                                <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openExpenseCalculator('PF')">
                                  <i class="fa-solid fa-plus-circle me-1"></i> Edit
                                </a>
                              </div>
                            </td>
                            <td class="text-center">
                              <button class="btn btn-sm btn-outline-primary rounded-pill px-3 py-1" onclick="addToCalculatorAction('PF')" style="font-size: 11px;">
                                <i class="fa-solid fa-plus me-1"></i> Add to Calculator
                              </button>
                            </td>
                          </tr>

                          <!-- ESIC Row -->
                          <tr>
                            <td class="ps-4">
                              <div class="d-flex align-items-center">
                                <div class="stat-icon bg-soft-primary text-primary me-3" style="width: 35px; height: 35px; border-radius: 8px;">
                                  <i class="fa-solid fa-heart-pulse"></i>
                                </div>
                                <div class="fw-bold text-dark">ESIC</div>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <span class="text-muted small me-2" style="font-family: monospace;">GROSS * 0.0325</span>
                                <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openExpenseCalculator('ESIC')">
                                  <i class="fa-solid fa-plus-circle me-1"></i> Edit
                                </a>
                              </div>
                            </td>
                            <td class="text-center">
                              <button class="btn btn-sm btn-outline-primary rounded-pill px-3 py-1" onclick="addToCalculatorAction('ESIC')" style="font-size: 11px;">
                                <i class="fa-solid fa-plus me-1"></i> Add to Calculator
                              </button>
                            </td>
                          </tr>

                          <!-- LWF Row -->
                          <tr>
                            <td class="ps-4">
                              <div class="d-flex align-items-center">
                                <div class="stat-icon bg-soft-success text-success me-3" style="width: 35px; height: 35px; border-radius: 8px;">
                                  <i class="fa-solid fa-scale-balanced"></i>
                                </div>
                                <div class="fw-bold text-dark">LWF</div>
                              </div>
                            </td>
                            <td>
                              <div class="d-flex align-items-center">
                                <span class="text-muted small me-2" style="font-family: monospace;">No formula set</span>
                                <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openExpenseCalculator('LWF')">
                                  <i class="fa-solid fa-plus-circle me-1"></i> Add
                                </a>
                              </div>
                            </td>
                            <td class="text-center">
                              <button class="btn btn-sm btn-outline-primary rounded-pill px-3 py-1" onclick="addToCalculatorAction('LWF')" disabled style="font-size: 11px;">
                                <i class="fa-solid fa-plus me-1"></i> Add to Calculator
                              </button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>

                  <div class="mt-4 text-center">
                     <button class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold py-2" onclick="openExpenseCalculator()">
                       <i class="fa-solid fa-calculator me-2"></i> Open Global Calculator
                     </button>
                  </div>
                </div>
              </div>

            </div>

             <!-- Tab 7: Income Setup -->
            <div class="tab-pane fade" id="income-setup" role="tabpanel">

  <!-- Section 1: Tabs -->
  <div class="mb-4">
    <div class="nav income-tab-pill-group shadow-sm" role="tablist">

      <button class="btn income-tab-btn active"
              data-bs-toggle="tab"
              data-bs-target="#income-setup-content"
              type="button"
              role="tab">
        INCOME SETUP
      </button>

      <button class="btn income-tab-btn"
              data-bs-toggle="tab"
              data-bs-target="#income-formula-content"
              type="button"
              role="tab">
        INCOME SETUP FORMULA
      </button>

    </div>
  </div>

  <!-- Tab Content -->
  <div class="tab-content">

    <!-- Tab 1: Income Setup Content -->
    <div class="tab-pane fade show active" id="income-setup-content" role="tabpanel">
      <div class="mb-3">
        <h6 class="fw-bold mb-0" style="font-size:13px;color:#2b3a67;">
          Income Structure Details
        </h6>
        <p class="text-muted small mb-0">
          Manage income structures for your organization
        </p>
      </div>

      <div class="row g-3">

        <!-- Card 1: OT Income Structure -->
        <div class="col-md-6">
          <div class="card income-structure-card border-0 shadow-sm h-100 rounded-4 overflow-hidden">
            <div class="card-body p-4">
              <!-- Header -->
              <div class="d-flex justify-content-between align-items-start mb-3">
                <div class="d-flex align-items-center">
                  <div class="stat-icon bg-soft-orange text-orange me-3" style="width: 45px; height: 45px; border-radius: 12px;">
                    <i class="fa-solid fa-file-invoice-dollar"></i>
                  </div>
                  <div>
                    <h6 class="fw-bold mb-1" style="color: #2b3a67;">ot income</h6>
                    <div class="d-flex align-items-center gap-2">
                      <span class="badge bg-soft-orange text-orange small px-2 py-1">factory</span>
                      <span class="badge bg-light text-dark small px-2 py-1">testprakash2</span>
                    </div>
                  </div>
                </div>
                <span class="badge rounded-pill bg-soft-orange text-orange px-3 py-1" style="font-size: 10px;">S</span>
              </div>

              <!-- Info Grid -->
              <div class="mb-3">
                <div class="row g-2">
                  <div class="col-6">
                    <div class="small text-muted mb-1">Type</div>
                    <div class="fw-semibold small" style="color: #2b3a67;">EARNINGS</div>
                  </div>
                  <div class="col-6">
                    <div class="small text-muted mb-1">Components</div>
                    <div class="fw-medium small" style="color: #4a5073;">
                      <i class="fa-solid fa-money-bill-trend-up text-orange small me-1"></i>
                      <i class="fa-solid fa-house-chimney text-primary small"></i>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Components List -->
              <div class="mb-3 p-2 bg-light rounded-3">
                <div class="small fw-semibold mb-1" style="color: #7c8db5; font-size: 10px; text-transform: uppercase; letter-spacing: 0.5px;">Active Components</div>
                <div class="d-flex flex-wrap gap-1">
                  <span class="badge bg-white text-orange border border-orange small">BASIC</span>
                  <span class="badge bg-white text-primary border border-primary small">HRA</span>
                </div>
              </div>

              <!-- Actions -->
              <div class="d-flex flex-column gap-2">
                <div class="d-flex gap-2">
                  <button class="btn btn-sm btn-outline-secondary rounded-pill px-3 flex-grow-1" style="font-size: 11px;" onclick="resetIncomeStructure('factory', 'ot income')">
                    <i class="fa-solid fa-rotate-left me-1"></i> Reset
                  </button>
                  <button class="btn btn-sm btn-orange text-white rounded-pill px-3 flex-grow-1" data-bs-toggle="modal" data-bs-target="#setStructureModal" style="font-size: 11px;">
                    <i class="fa-solid fa-pen me-1"></i> Edit
                  </button>
                </div>
                <button class="btn btn-sm btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="openIncomeFormula('factory', 'ot income')">
                  <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                </button>
              </div>
            </div>
          </div>
        </div>

        <!-- Card 2: Salary Income Structure -->
        <div class="col-md-6">
          <div class="card income-structure-card border-0 shadow-sm h-100 rounded-4 overflow-hidden">
            <div class="card-body p-4">
              <!-- Header -->
              <div class="d-flex justify-content-between align-items-start mb-3">
                <div class="d-flex align-items-center">
                  <div class="stat-icon bg-soft-primary text-primary me-3" style="width: 45px; height: 45px; border-radius: 12px;">
                    <i class="fa-solid fa-money-bill-wave"></i>
                  </div>
                  <div>
                    <h6 class="fw-bold mb-1" style="color: #2b3a67;">salary income</h6>
                    <div class="d-flex align-items-center gap-2">
                      <span class="badge bg-soft-orange text-orange small px-2 py-1">factory</span>
                      <span class="badge bg-light text-dark small px-2 py-1">testprakash2</span>
                    </div>
                  </div>
                </div>
                <span class="badge rounded-pill bg-secondary-subtle text-secondary px-3 py-1" style="font-size: 10px;">M</span>
              </div>

              <!-- Info Grid -->
              <div class="mb-3">
                <div class="row g-2">
                  <div class="col-6">
                    <div class="small text-muted mb-1">Type</div>
                    <div class="fw-semibold small" style="color: #2b3a67;">EARNINGS</div>
                  </div>
                  <div class="col-6">
                    <div class="small text-muted mb-1">Status</div>
                    <span class="badge bg-danger-subtle text-danger small">NOT SET</span>
                  </div>
                </div>
              </div>

              <!-- Status Notice -->
              <div class="mb-3 p-3 bg-light rounded-3 border border-warning-subtle">
                <div class="d-flex align-items-center">
                  <i class="fa-solid fa-circle-exclamation text-warning me-2"></i>
                  <div class="small text-muted">No income components configured yet</div>
                </div>
              </div>

              <!-- Actions -->
              <div class="d-flex flex-column gap-2">
                <button class="btn btn-sm btn-primary rounded-pill px-4 w-100" style="font-size: 11px;" data-bs-toggle="modal" data-bs-target="#setStructureModal">
                  <i class="fa-solid fa-plus-circle me-1"></i> Set Structure
                </button>
                <button class="btn btn-sm btn-outline-secondary w-100 fw-bold py-2 rounded-pill small" style="font-size: 11px;" onclick="openIncomeFormula('factory', 'salary income')">
                  <i class="fa-solid fa-calculator me-1"></i> Set with Calculator
                </button>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

    <!-- Tab 2: Income Formula -->
    <div class="tab-pane fade" id="income-formula-content" role="tabpanel">

      <div class="row mb-4 animate__animated animate__fadeIn">
        <div class="col-md-12">
          <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
              <h5 class="fw-bold mb-1">Income Formula Setup</h5>
              <div class="d-flex align-items-center gap-2">
                 <span class="badge bg-soft-orange text-orange px-3 rounded-pill" id="incomeActiveFactoryDisplay">factory</span>
                 <i class="fa-solid fa-chevron-right text-muted small" style="font-size: 8px;"></i>
                 <span class="badge bg-soft-primary text-primary px-3 rounded-pill" id="incomeActiveStructureDisplay">testprakash2</span>
              </div>
            </div>
            <button class="btn btn-sm btn-outline-secondary rounded-pill px-3 shadow-sm">
              <i class="fa-solid fa-rotate-left me-1"></i> Reset All Formulas
            </button>
          </div>
        </div>
      </div>

      <div class="dashboard-card border-0 shadow-sm rounded-4">
        <table class="table table-hover align-middle mb-0">
          <thead class="bg-light text-uppercase small">
            <tr>
              <th>Component</th>
              <th>Current Definition</th>
              <th class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>

            <tr>
              <td>BASIC</td>
              <td>
                <div class="d-flex align-items-center">
                  <span class="text-muted small me-2" style="font-family: monospace;">GROSS * 0.40</span>
                  <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openIncomeCalculator('BASIC')">
                    <i class="fa-solid fa-plus-circle me-1"></i> Edit
                  </a>
                </div>
              </td>
              <td class="text-center">
                <button class="btn btn-sm btn-outline-primary rounded-pill px-3 py-1" onclick="addToCalculatorAction('BASIC')" style="font-size: 11px;">
                  <i class="fa-solid fa-plus me-1"></i> Add to Calculator
                </button>
              </td>
            </tr>

            <tr>
              <td>HRA</td>
              <td>
                <div class="d-flex align-items-center">
                  <span class="text-muted small me-2" style="font-family: monospace;">BASIC * 0.50</span>
                  <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openIncomeCalculator('HRA')">
                    <i class="fa-solid fa-plus-circle me-1"></i> Edit
                  </a>
                </div>
              </td>
              <td class="text-center">
                <button class="btn btn-sm btn-outline-primary rounded-pill px-3 py-1" onclick="addToCalculatorAction('HRA')" style="font-size: 11px;">
                  <i class="fa-solid fa-plus me-1"></i> Add to Calculator
                </button>
              </td>
            </tr>

          </tbody>
        </table>
      </div>

      <div class="mt-4 text-center">
        <button class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold py-2"
                onclick="openIncomeCalculator()">
          <i class="fa-solid fa-calculator me-2"></i>
          Open Global Calculator
        </button>
      </div>

    </div>
  </div>
</div>



  <style>
    /* Premium Hover Animation for Structure Cards */
    .structure-card {
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    }
    .structure-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.08) !important;
    }
    .border-dashed:hover {
      background-color: #f8fafc !important;
      border-color: #E4520D !important;
      color: #E4520D !important;
    }
    .border-dashed:hover h6, .border-dashed:hover i {
      color: #E4520D !important;
    }

    /* Salary Tab Toggle Styles */
    .salary-tab-pill-group {
      background: #f1f3f5;
      padding: 4px;
      border-radius: 12px;
      display: inline-flex;
      flex-wrap: wrap;
      gap: 2px;
    }

    .salary-tab-btn {
      padding: 8px 24px;
      border-radius: 10px;
      font-weight: 600;
      font-size: 11px;
      transition: all 0.3s;
      border: none;
      letter-spacing: 0.5px;
      text-transform: uppercase;
    }

    .salary-tab-btn.active {
      background-color: #343a40 !important;
      color: #fff !important;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    .salary-tab-btn.inactive {
      background-color: transparent;
      color: #6c757d;
    }

    /* Glassmorphism & Custom ESIC Styles */
    .glass-card {
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border: 1px solid rgba(255, 255, 255, 0.3) !important;
      border-radius: 16px !important;
    }

    .border-dashed-custom {
      border: 1px dashed #cbd5e1;
      transition: all 0.3s;
    }

    .mapping-item:hover .border-dashed-custom {
      border-color: #E4520D;
      background-color: #fff !important;
    }

    /* Expense Tab Toggle Styles */
    .expense-tab-pill-group {
      background: #f1f3f5;
      padding: 4px;
      border-radius: 12px;
      display: inline-flex;
      flex-wrap: wrap;
      gap: 2px;
    }

    .expense-tab-btn {
      padding: 8px 24px;
      border-radius: 10px;
      font-weight: 600;
      font-size: 11px;
      transition: all 0.3s;
      border: none;
      letter-spacing: 0.5px;
      text-transform: uppercase;
    }

    .expense-tab-btn.active {
      background-color: #343a40 !important;
      color: #fff !important;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    .expense-tab-btn.inactive {
      background-color: transparent;
      color: #6c757d;
    }

    .expense-setup-card {
      border: none;
      border-radius: 16px;
      background: #fff;
      overflow: hidden;
    }

    .expense-setup-table thead th {
      background-color: #f8f9fa;
      font-size: 10px;
      text-transform: uppercase;
      color: #7c8db5;
      font-weight: 700;
      border-bottom: 2px solid #edf2f9;
      padding: 15px 12px;
      letter-spacing: 1px;
    }

    .expense-setup-table tbody td {
      font-size: 13px;
      padding: 16px 12px;
      color: #2b3a67;
      border-bottom: 1px solid #f1f4f8;
    }

    .status-badge-notset {
      background-color: #fff5f5;
      color: #e03131;
      padding: 4px 12px;
      border-radius: 6px;
      font-size: 10px;
      font-weight: 700;
      border: 1px solid #ffa8a8;
      text-transform: uppercase;
    }

    .btn-action-outline {
      border: 1px solid #339af0;
      color: #339af0;
      font-size: 11px;
      font-weight: 600;
      padding: 4px 12px;
      border-radius: 6px;
      transition: all 0.2s;
      text-decoration: none;
      background: #fff;
    }

    .btn-action-outline:hover {
      background: #339af0;
      color: #fff;
    }

    .form-control:focus, .form-select:focus {
      box-shadow: 0 0 0 3px rgba(228, 82, 13, 0.1) !important;
      border-color: #E4520D !important;
    }

    /* Expense Structure Card Styles */
    .expense-structure-card {
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      border: 1px solid rgba(0, 0, 0, 0.05) !important;
    }

    .expense-structure-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1) !important;
    }

    .expense-structure-card .stat-icon {
      display: flex;
      align-items: center;
      justify-content: center;
      transition: all 0.3s ease;
    }

    .expense-structure-card:hover .stat-icon {
      transform: scale(1.1);
    }
    
    /* Income Tab Toggle Styles */
    .income-tab-pill-group {
      background: #f1f3f5;
      padding: 4px;
      border-radius: 12px;
      display: inline-flex;
      flex-wrap: wrap;
      gap: 2px;
    }

    .income-tab-btn {
      padding: 8px 24px;
      border-radius: 10px;
      font-weight: 600;
      font-size: 11px;
      transition: all 0.3s;
      border: none;
      letter-spacing: 0.5px;
      text-transform: uppercase;
    }

    .income-tab-btn.active {
      background-color: #343a40 !important;
      color: #fff !important;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    }

    .income-tab-btn.inactive {
      background-color: transparent;
      color: #6c757d;
    }

    .income-structure-card {
      transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      border: 1px solid rgba(0, 0, 0, 0.05) !important;
    }

    .income-structure-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1) !important;
    }

    .income-structure-card .stat-icon {
      display: flex;
      align-items: center;
      justify-content: center;
      transition: all 0.3s ease;
      width: 45px;
      height: 45px;
      border-radius: 12px;
    }

    .income-structure-card:hover .stat-icon {
      transform: scale(1.1);
    }
  </style>
        </div>
      </div>
    </div>
     <!-- FooterNEW -->
     <jsp:include page="footer.jsp"></jsp:include>
  </div>

<jsp:include page="contractor-modals.jsp"></jsp:include>
  
  <style>
    /* Premium UI styles for the modal */
    .custom-check .form-check-input {
      width: 1.1em;
      height: 1.1em;
      margin-top: 0.2em;
      border-radius: 4px;
      cursor: pointer;
    }
    .custom-check .form-check-input:checked {
      background-color: #E4520D;
      border-color: #E4520D;
    }
    .bg-soft-info-light {
      background-color: rgba(0, 188, 212, 0.05);
    }
  </style>

  <script src="/bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>


  <!-- Bulk Upload Modal -->
  <div class="modal fade" id="bulkUploadModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Bulk Upload Contractor</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-4 text-center">
            <p class="text-muted small">
              Upload an Excel or CSV file to add multiple employees at once.
              <a href="#" class="text-decoration-none" style="color: #e4520d; font-weight: 500">
                Download Template
              </a>
            </p>
          </div>

          <div class="upload-zone" id="uploadZone">
            <input type="file" id="fileInput" hidden accept=".csv, .xlsx, .xls" />
            <div class="upload-icon">
              <i class="fa-solid fa-cloud-arrow-up"></i>
            </div>
            <h6 class="fw-bold mb-1">Click to upload or drag and drop</h6>
            <p class="text-muted small mb-0">
              Excel or CSV files only (Max. 10MB)
            </p>
          </div>

          <div class="file-preview-card" id="filePreview">
            <div class="file-icon">
              <i class="fa-solid fa-file-csv" id="previewIcon"></i>
            </div>
            <div class="flex-grow-1">
              <div class="fw-bold small mb-0" id="fileName">
                employees_data.csv
              </div>
              <div class="text-muted" style="font-size: 10px" id="fileSize">
                245 KB
              </div>
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
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">
            Cancel
          </button>
          <button type="button" class="btn btn-primary-custom" id="startUploadBtn" disabled>
            Start Upload
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Candidate Details Modal -->
  <div class="modal fade" id="candidateDetailsModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Candidate Details</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="row">
            <div class="col-md-3 text-center mb-4">
              <div
                class="avatar-initials bg-soft-primary text-primary rounded-circle mx-auto d-flex align-items-center justify-content-center mb-3"
                style="width: 80px; height: 80px; font-size: 32px; font-weight: bold" id="candidateAvatar">JD</div>
              <h6 class="fw-bold mb-1" id="candidateName">John Doe</h6>
              <p class="text-muted small mb-2" id="candidateEmail">john.doe@example.com</p>
              <span class="badge bg-soft-info text-info" id="candidateStatusBadge">In Progress</span>
            </div>
            <div class="col-md-9">
              <h6 class="fw-bold mb-3">Application Details</h6>
              <div class="row g-3 mb-4">
                <div class="col-md-6">
                  <label class="text-muted small">Role Applied</label>
                  <p class="fw-bold mb-0" id="candidateRole">Senior Developer</p>
                </div>
                <div class="col-md-6">
                  <label class="text-muted small">Department</label>
                  <p class="fw-bold mb-0" id="candidateDept">IT</p>
                </div>
                <div class="col-md-6">
                  <label class="text-muted small">Offer Date</label>
                  <p class="fw-bold mb-0" id="candidateOfferDate">Jan 15, 2026</p>
                </div>
                <div class="col-md-6">
                  <label class="text-muted small">Expected Start Date</label>
                  <p class="fw-bold mb-0" id="candidateStartDate">Feb 01, 2026</p>
                </div>
              </div>
              <h6 class="fw-bold mb-3">Hiring Progress</h6>
              <div class="mb-3">
                <div class="d-flex justify-content-between mb-2">
                  <span class="small">Stage Progress</span>
                  <span class="small fw-bold" id="progressPercent">80%</span>
                </div>
                <div class="progress" style="height: 8px">
                  <div class="progress-bar bg-info" id="progressBar" style="width: 80%"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-orange" onclick="updateCandidateStatus()">Update Status</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Update Status Modal -->
  <div class="modal fade" id="updateStatusModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Update Candidate Status</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Candidate</label>
            <input type="text" class="form-control" id="statusCandidateName" value="John Doe" readonly>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Current Stage</label>
            <select class="form-select" id="candidateStage">
              <option value="screening">Initial Screening</option>
              <option value="interview">Interview</option>
              <option value="background" selected>Background Check</option>
              <option value="offer">Offer Extended</option>
              <option value="accepted">Offer Accepted</option>
              <option value="onboarding">Onboarding</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Status</label>
            <select class="form-select" id="candidateStatusSelect">
              <option value="in-progress" selected>In Progress</option>
              <option value="ready-to-join">Ready to Join</option>
              <option value="pending-docs">Pending Documents</option>
              <option value="on-hold">On Hold</option>
              <option value="rejected">Rejected</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Notes</label>
            <textarea class="form-control" rows="3" placeholder="Add notes..."></textarea>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange" onclick="saveStatusUpdate()">Save Changes</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Send Offer Modal -->
  <div class="modal fade" id="sendOfferModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Send Offer Letter</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Candidate Name</label>
              <input type="text" class="form-control" id="offerCandidateName" readonly>
            </div>
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Email</label>
              <input type="email" class="form-control" id="offerCandidateEmail" readonly>
            </div>
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Position</label>
              <input type="text" class="form-control" id="offerPosition">
            </div>
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Department</label>
              <input type="text" class="form-control" id="offerDepartment">
            </div>
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Salary Package</label>
              <input type="text" class="form-control" placeholder="e.g., $80,000/year">
            </div>
            <div class="col-md-6 mb-3">
              <label class="form-label fw-bold">Joining Date</label>
              <input type="date" class="form-control">
            </div>
            <div class="col-12 mb-3">
              <label class="form-label fw-bold">Offer Template</label>
              <select class="form-select">
                <option>Full-Time Employment Offer</option>
                <option>Part-Time Employment Offer</option>
                <option>Contract Employment Offer</option>
                <option>Internship Offer</option>
              </select>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange" onclick="sendOfferLetter()">
            <i class="fa-solid fa-paper-plane me-1"></i> Send Offer
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Hire Employee Modal -->
  <div class="modal fade" id="hireEmployeeModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-semibold"><i class="fa-solid fa-user-plus me-2"></i>Hire New Employee</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <form id="hireEmployeeForm">
            <div class="row g-3">
              <div class="col-md-6">
                <label class="form-label">First Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="firstName" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Last Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="lastName" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Email <span class="text-danger">*</span></label>
                <input type="email" class="form-control" name="email" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Mobile <span class="text-danger">*</span></label>
                <input type="tel" class="form-control" name="mobile" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Designation <span class="text-danger">*</span></label>
                <input type="text" class="form-control" name="designation" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Department <span class="text-danger">*</span></label>
                <select class="form-select" name="department" required>
                  <option value="">Select Department</option>
                  <option>Operations</option>
                  <option>Human Resources</option>
                  <option>IT</option>
                  <option>Finance</option>
                  <option>Quality Assurance</option>
                </select>
              </div>
              <div class="col-md-6">
                <label class="form-label">Factory <span class="text-danger">*</span></label>
                <select class="form-select" name="factory" required>
                  <option value="">Select Factory</option>
                  <option>Factory A</option>
                  <option>Factory B</option>
                  <option>Factory C</option>
                </select>
              </div>
              <div class="col-md-6">
                <label class="form-label">Joining Date <span class="text-danger">*</span></label>
                <input type="date" class="form-control" name="joiningDate" required>
              </div>
              <div class="col-md-6">
                <label class="form-label">Employment Type <span class="text-danger">*</span></label>
                <select class="form-select" name="employmentType" required>
                  <option value="">Select Type</option>
                  <option>Permanent</option>
                  <option>Contract</option>
                  <option>Temporary</option>
                </select>
              </div>
              <div class="col-md-6">
                <label class="form-label">Reporting Manager</label>
                <select class="form-select" name="reportingManager">
                  <option value="">Select Manager</option>
                  <option>Rajesh Kumar</option>
                  <option>Priya Sharma</option>
                  <option>Amit Patel</option>
                </select>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange bg-orange text-white" id="hireSubmitBtn">Hire Employee</button>
        </div>
      </div>
    </div>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', function () {
      const sidebar = document.getElementById('sidebar');
      const sidebarToggle = document.getElementById('sidebarToggle');
      const sidebarOverlay = document.getElementById('sidebarOverlay');

      // Sidebar Toggle
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

      // Fullscreen Toggle
      const fullscreenBtn = document.getElementById('toggleFullscreen');
      fullscreenBtn.addEventListener('click', function (e) {
        e.preventDefault();
        if (!document.fullscreenElement) {
          document.documentElement.requestFullscreen();
        } else {
          document.exitFullscreen();
        }
      });

      // Keyboard Shortcut for Search
      document.addEventListener('keydown', function (e) {
        if ((e.ctrlKey || e.metaKey) && e.key === '/') {
          e.preventDefault();
          document.querySelector('.search-input').focus();
        }
      });

      // === SEARCH & FILTER FUNCTIONALITY ===
      const filterSearch = document.querySelector('.filter-search');
      const departmentFilter = document.querySelectorAll('.filter-selects select')[0];
      const statusFilter = document.querySelectorAll('.filter-selects select')[1];
      const employeeRows = document.querySelectorAll('.employee-row');

      function filterEmployees() {
        const searchTerm = filterSearch.value.toLowerCase();
        const selectedDept = departmentFilter.value;
        const selectedStatus = statusFilter.value;
        let visibleCount = 0;

        employeeRows.forEach(row => {
          const employeeName = row.querySelector('.fw-bold').textContent.toLowerCase();
          const employeeId = row.querySelector('.text-muted.small').textContent.toLowerCase();
          const department = row.querySelectorAll('td')[3].textContent;
          const status = row.querySelector('.badge').textContent;

          const matchesSearch = employeeName.includes(searchTerm) || employeeId.includes(searchTerm);
          const matchesDept = selectedDept === 'All Departments' || department === selectedDept;
          const matchesStatus = selectedStatus === 'All Status' || status === selectedStatus;

          if (matchesSearch && matchesDept && matchesStatus) {
            row.style.display = '';
            visibleCount++;
          } else {
            row.style.display = 'none';
          }
        });

        // Update pagination text
        document.querySelector('.text-muted.small').textContent =
          `Showing ${visibleCount > 0 ? 1 : 0} to ${visibleCount} of ${visibleCount} entries`;
      }

      filterSearch.addEventListener('input', filterEmployees);
      departmentFilter.addEventListener('change', filterEmployees);
      statusFilter.addEventListener('change', filterEmployees);

      // === CHECKBOX SELECTION ===
      const selectAllCheckbox = document.querySelector('thead input[type="checkbox"]');
      const rowCheckboxes = document.querySelectorAll('tbody input[type="checkbox"]');

      selectAllCheckbox.addEventListener('change', function () {
        rowCheckboxes.forEach(checkbox => {
          checkbox.checked = this.checked;
        });
      });

      rowCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
          const allChecked = Array.from(rowCheckboxes).every(cb => cb.checked);
          selectAllCheckbox.checked = allChecked;
        });
      });

      // === COLUMN SORTING ===
      const tableHeaders = document.querySelectorAll('thead th');
      let currentSort = { column: -1, ascending: true };

      tableHeaders.forEach((header, index) => {
        if (index === 0 || index === 7) return; // Skip checkbox and actions columns

        header.style.cursor = 'pointer';
        header.addEventListener('click', function () {
          const tbody = document.querySelector('tbody');
          const rows = Array.from(employeeRows);

          const ascending = currentSort.column === index ? !currentSort.ascending : true;
          currentSort = { column: index, ascending };

          rows.sort((a, b) => {
            const aValue = a.querySelectorAll('td')[index].textContent.trim();
            const bValue = b.querySelectorAll('td')[index].textContent.trim();

            if (ascending) {
              return aValue.localeCompare(bValue);
            } else {
              return bValue.localeCompare(aValue);
            }
          });

          rows.forEach(row => tbody.appendChild(row));
        });
      });

      // === MODALS ===
      const bulkUploadModal = new bootstrap.Modal(document.getElementById('bulkUploadModal'));
      const hireEmployeeModal = new bootstrap.Modal(document.getElementById('hireEmployeeModal'));

      // Bulk Upload Button
      // document.querySelector('.emp-btn-upload').addEventListener('click', function () {
      //   bulkUploadModal.show();
      // });

      // Hire Employee Button
      document.querySelector('.btn-orange').addEventListener('click', function () {
        hireEmployeeModal.show();
      });

      // === BULK UPLOAD MODAL LOGIC ===
      const uploadZone = document.getElementById('uploadZone');
      const fileInput = document.getElementById('fileInput');
      const filePreview = document.getElementById('filePreview');
      const uploadProgress = document.getElementById('uploadProgress');
      const startUploadBtn = document.getElementById('startUploadBtn');
      const removeFileBtn = document.getElementById('removeFile');
      const fileNameDisplay = document.getElementById('fileName');
      const fileSizeDisplay = document.getElementById('fileSize');
      const progressBar = document.getElementById('progressBar');
      const progressPercent = document.getElementById('progressPercent');
      const previewIcon = document.getElementById('previewIcon');

      let selectedFile = null;

      // Click upload zone to select file
      uploadZone.addEventListener('click', () => fileInput.click());

      // Handle file selection
      fileInput.addEventListener('change', function (e) {
        const file = e.target.files[0];
        if (file) {
          handleFileSelect(file);
        }
      });

      // Drag and drop support
      uploadZone.addEventListener('dragover', (e) => {
        e.preventDefault();
        uploadZone.style.borderColor = '#e4520d';
        uploadZone.style.backgroundColor = '#fff5f2';
      });

      uploadZone.addEventListener('dragleave', () => {
        uploadZone.style.borderColor = '#ddd';
        uploadZone.style.backgroundColor = '';
      });

      uploadZone.addEventListener('drop', (e) => {
        e.preventDefault();
        uploadZone.style.borderColor = '#ddd';
        uploadZone.style.backgroundColor = '';
        const file = e.dataTransfer.files[0];
        if (file) {
          handleFileSelect(file);
        }
      });

      function handleFileSelect(file) {
        selectedFile = file;
        const fileExt = file.name.split('.').pop().toLowerCase();

        // Update file icon
        if (fileExt === 'csv') {
          previewIcon.className = 'fa-solid fa-file-csv';
        } else if (fileExt === 'xlsx' || fileExt === 'xls') {
          previewIcon.className = 'fa-solid fa-file-excel';
        }

        // Update file info
        fileNameDisplay.textContent = file.name;
        fileSizeDisplay.textContent = formatFileSize(file.size);

        // Show preview, hide upload zone
        uploadZone.style.display = 'none';
        filePreview.style.display = 'flex';
        startUploadBtn.disabled = false;
      }

      function formatFileSize(bytes) {
        if (bytes < 1024) return bytes + ' B';
        if (bytes < 1024 * 1024) return (bytes / 1024).toFixed(1) + ' KB';
        return (bytes / (1024 * 1024)).toFixed(1) + ' MB';
      }

      // Remove file button
      removeFileBtn.addEventListener('click', () => {
        selectedFile = null;
        fileInput.value = '';
        uploadZone.style.display = 'block';
        filePreview.style.display = 'none';
        startUploadBtn.disabled = true;
      });

      // Start upload button
      startUploadBtn.addEventListener('click', function () {
        if (!selectedFile) return;

        // Hide preview, show progress
        filePreview.style.display = 'none';
        uploadProgress.style.display = 'block';
        startUploadBtn.disabled = true;

        // Simulate upload progress
        let progress = 0;
        const interval = setInterval(() => {
          progress += 10;
          progressBar.style.width = progress + '%';
          progressPercent.textContent = progress + '%';

          if (progress >= 100) {
            clearInterval(interval);
            setTimeout(() => {
              alert('Employees uploaded successfully!');
              bulkUploadModal.hide();
              resetBulkUploadModal();
            }, 500);
          }
        }, 200);
      });

      function resetBulkUploadModal() {
        selectedFile = null;
        fileInput.value = '';
        uploadZone.style.display = 'block';
        filePreview.style.display = 'none';
        uploadProgress.style.display = 'none';
        progressBar.style.width = '0%';
        progressPercent.textContent = '0%';
        startUploadBtn.disabled = true;
      }

      // Reset on modal close
      document.getElementById('bulkUploadModal').addEventListener('hidden.bs.modal', resetBulkUploadModal);


      // Hire Employee Submit
      document.getElementById('hireSubmitBtn').addEventListener('click', function () {
        const form = document.getElementById('hireEmployeeForm');
        if (!form.checkValidity()) {
          form.reportValidity();
          return;
        }

        const formData = new FormData(form);
        const employeeData = Object.fromEntries(formData);

        console.log('New Employee Data:', employeeData);
        alert('Employee hired successfully!');
        hireEmployeeModal.hide();
        form.reset();
      });

      // === PAGINATION ===
      const paginationLinks = document.querySelectorAll('.page-link-custom');
      paginationLinks.forEach(link => {
        link.addEventListener('click', function (e) {
          e.preventDefault();
          if (!this.classList.contains('disabled')) {
            document.querySelectorAll('.page-link-custom').forEach(l => l.classList.remove('active'));
            this.classList.add('active');
          }
        });
      });

      // === DOCUMENT TAB ACTIONS ===
      const documentButtons = document.querySelectorAll('#documents button');
      documentButtons.forEach(btn => {
        btn.addEventListener('click', function (e) {
          e.stopPropagation();
          const action = this.textContent.trim();
          if (action === 'Renew') {
            alert('Renew functionality would open a renewal form');
          } else if (action === 'Verify' || this.querySelector('.fa-check')) {
            alert('Document verified successfully!');
            this.classList.remove('btn-success');
            this.classList.add('btn-secondary');
            this.innerHTML = '<i class="fa-solid fa-check-double"></i> Verified';
          } else if (action === 'Request') {
            alert('Document request sent to employee');
          }
        });
      });
      // === APPROVAL WORKFLOW LOGIC ===
      const selectAllApprovals = document.getElementById("selectAllApprovals");
      const bulkApproveBtn = document.getElementById("bulkApproveBtn");
      const bulkRejectBtn = document.getElementById("bulkRejectBtn");

      if (selectAllApprovals) {
        selectAllApprovals.addEventListener("change", function () {
          document.querySelectorAll(".approval-checkbox").forEach((cb) => {
            cb.checked = selectAllApprovals.checked;
          });
        });
      }

      // Individual Approve Buttons
      document.querySelectorAll(".approve-single").forEach((btn) => {
        btn.addEventListener("click", function (e) {
          e.stopPropagation();
          const row = this.closest("tr");
          const name = row.querySelector(".fw-bold").textContent;
          if (confirm(`Are you sure you want to approve ${name}?`)) {
            row.remove();
            alert(`${name}'s request has been approved.`);
            updatePendingCount(-1);
          }
        });
      });

      // Bulk Approve
      if (bulkApproveBtn) {
        bulkApproveBtn.addEventListener("click", function () {
          const selectedRows = document.querySelectorAll(
            ".approval-checkbox:checked"
          );
          if (selectedRows.length === 0) {
            alert("Please select at least one request to approve.");
            return;
          }

          if (
            confirm(`Are you sure you want to approve ${selectedRows.length} selected requests?`)
          ) {
            selectedRows.forEach((cb) => {
              cb.closest("tr").remove();
            });
            alert(`${selectedRows.length} requests have been approved.`);
            updatePendingCount(-selectedRows.length);
            if (selectAllApprovals) selectAllApprovals.checked = false;
          }
        });
      }

      // Bulk Reject
      if (bulkRejectBtn) {
        bulkRejectBtn.addEventListener("click", function () {
          const selectedRows = document.querySelectorAll(
            ".approval-checkbox:checked"
          );
          if (selectedRows.length === 0) {
            alert("Please select at least one request to reject.");
            return;
          }

          if (
            confirm(`Are you sure you want to reject ${selectedRows.length} selected requests?`)
          ) {
            selectedRows.forEach((cb) => {
              cb.closest("tr").remove();
            });
            alert(`${selectedRows.length} requests have been rejected.`);
            updatePendingCount(-selectedRows.length);
            if (selectAllApprovals) selectAllApprovals.checked = false;
          }
        });
      }

      function updatePendingCount(change) {
        const pendingCard = document.querySelector("#approval .h3.fw-bold");
        if (pendingCard) {
          let currentCount = parseInt(pendingCard.textContent);
          pendingCard.textContent = Math.max(0, currentCount + change);
        }
      }

      // === APPROVAL DETAILS MODAL LOGIC ===
      const approvalDetailsData = {
        'TENT102': {
          name: 'Amit Sharma',
          id: 'TENT102',
          contractor: 'ABC Services',
          supervisor: 'Rajesh Kumar',
          dept: 'Operations',
          role: 'Production Line A',
          avatar: 'AS',
          avatarBg: '#E4520D'
        },
        'TENT108': {
          name: 'Rohan Kapoor',
          id: 'TENT108',
          contractor: 'XYZ Solutions',
          supervisor: 'Michael Brown',
          dept: 'Logistics',
          role: 'Warehouse Section B',
          avatar: 'RK',
          avatarBg: '#6f42c1'
        }
      };

      let currentApprovalId = null;

      window.viewApprovalDetails = function(id) {
        const data = approvalDetailsData[id];
        if (!data) return;

        currentApprovalId = id;
        document.getElementById('appvAvatar').textContent = data.avatar;
        document.getElementById('appvAvatar').style.backgroundColor = data.avatarBg;
        document.getElementById('appvName').textContent = data.name;
        document.getElementById('appvId').textContent = 'ID: ' + data.id;
        document.getElementById('appvContractor').textContent = data.contractor;
        document.getElementById('appvSupervisor').textContent = data.supervisor;
        document.getElementById('appvDept').textContent = data.dept;
        document.getElementById('appvRole').textContent = data.role;

        const modal = new bootstrap.Modal(document.getElementById('approvalDetailsModal'));
        modal.show();
      };

      window.confirmAction = function(action) {
        const data = approvalDetailsData[currentApprovalId];
        if (!data) return;

        if (confirm(`Are you sure you want to ${action} ${data.name}'s request?`)) {
          // Find and remove row
          const rows = document.querySelectorAll('.approval-row');
          rows.forEach(row => {
            if (row.querySelector('.text-muted.small').textContent.includes(currentApprovalId)) {
              row.remove();
            }
          });

          updatePendingCount(-1);
          alert(`${data.name}'s request has been ${action}d successfully.`);
          
          const modal = bootstrap.Modal.getInstance(document.getElementById('approvalDetailsModal'));
          modal.hide();
        }
      };
      // === CONFIGURATION TAB LOGIC ===
      let customFields = [
        { id: 1, label: 'Passport Number', type: 'text', required: true },
        { id: 2, label: 'Years of Experience', type: 'number', required: false }
      ];
      let customDocs = [
        { id: 1, label: 'Experience Certificate', mandatory: true },
        { id: 2, label: 'Police Clearance Certificate', mandatory: false }
      ];

      function renderConfigLists() {
        const fieldsList = document.getElementById('configFieldsList');
        const docsList = document.getElementById('configDocsList');

        // Render Fields
        if (customFields.length === 0) {
          fieldsList.innerHTML = `<div class="empty-state text-center py-5 opacity-50"><i class="fa-solid fa-list-check fa-3x mb-2 text-orange"></i><p class="small mb-0">No custom fields configured yet</p></div>`;
        } else {
          fieldsList.innerHTML = customFields.map(f => `
            <div class="d-flex justify-content-between align-items-center bg-white p-2 rounded mb-2 border-start border-4 border-orange shadow-sm">
              <div class="small">
                <div class="fw-bold">${f.label} ${f.required ? '<span class="text-danger">*</span>' : ''}</div>
                <div class="text-muted" style="font-size: 10px">${f.type.toUpperCase()} ${f.placeholder ? '• Placeholder: ' + f.placeholder : ''}</div>
              </div>
              <button class="btn btn-link text-danger p-0" onclick="deleteConfigField(${f.id})"><i class="fa-solid fa-trash-can"></i></button>
            </div>
          `).join('');
        }

        // Render Docs
        if (customDocs.length === 0) {
          docsList.innerHTML = `<div class="empty-state text-center py-5 opacity-50"><i class="fa-solid fa-file-contract fa-3x mb-2 text-orange"></i><p class="small mb-0">No document requirements yet</p></div>`;
        } else {
          docsList.innerHTML = customDocs.map(d => `
            <div class="d-flex justify-content-between align-items-center bg-white p-2 rounded mb-2 border-start border-4 border-orange shadow-sm">
              <div class="small">
                <div class="fw-bold">${d.label} ${d.mandatory ? '<span class="text-danger">*</span>' : ''}</div>
                <div class="text-muted" style="font-size: 10px">PDF, JPG, PNG</div>
              </div>
              <button class="btn btn-link text-danger p-0" onclick="deleteConfigDoc(${d.id})"><i class="fa-solid fa-trash-can"></i></button>
            </div>
          `).join('');
        }
      }

      // Add Field
      document.getElementById('saveConfigFieldBtn').addEventListener('click', () => {
        const label = document.getElementById('configFieldLabel').value;
        const type = document.getElementById('configFieldType').value;
        const placeholder = document.getElementById('configFieldPlaceholder').value;
        const required = document.getElementById('configFieldRequired').checked;

        if (!label) return alert('Please enter a field label');

        customFields.push({ id: Date.now(), label, type, placeholder, required });
        renderConfigLists();
        bootstrap.Modal.getInstance(document.getElementById('addConfigFieldModal')).hide();
        document.getElementById('configFieldLabel').value = '';
        document.getElementById('configFieldPlaceholder').value = '';
      });

      // Add Doc
      document.getElementById('saveConfigDocBtn').addEventListener('click', () => {
        const label = document.getElementById('configDocLabel').value;
        const mandatory = document.getElementById('configDocRequired').checked;

        if (!label) return alert('Please enter a document name');

        customDocs.push({ id: Date.now(), label, mandatory });
        renderConfigLists();
        bootstrap.Modal.getInstance(document.getElementById('addConfigDocModal')).hide();
        document.getElementById('configDocLabel').value = '';
      });

      window.deleteConfigField = (id) => {
        customFields = customFields.filter(f => f.id !== id);
        renderConfigLists();
      };

      window.deleteConfigDoc = (id) => {
        customDocs = customDocs.filter(d => d.id !== id);
        renderConfigLists();
      };

      // === ORGANIZATION MASTER LOGIC ===
      let departments = [
        { id: 1, name: 'Operations', code: 'OPS', parentId: null, status: 'Active' },
        { id: 2, name: 'Human Resources', code: 'HR', parentId: null, status: 'Active' },
        { id: 3, name: 'IT', code: 'IT', parentId: null, status: 'Active' },
        { id: 4, name: 'Production', code: 'PROD', parentId: 1, status: 'Active' }
      ];
      let designations = [
        { id: 1, name: 'Senior Manager', dept: 'Operations', reportsToId: null, level: 'Level 4', status: 'Active' },
        { id: 2, name: 'Production Supervisor', dept: 'Operations', reportsToId: 1, level: 'Level 2', status: 'Active' }
      ];
      let categories = [
        { id: 1, name: 'Permanent', type: 'System Default', desc: 'Standard full-time employees directly on payroll.', employees: 780 },
        { id: 2, name: 'Contractor', type: 'External', desc: 'External workforce supplied via third-party vendors.', employees: 1240 }
      ];

      function updateParentSelects() {
        const deptSelect = document.getElementById('newDeptParent');
        const desigSelect = document.getElementById('newDesignationParent');

        deptSelect.innerHTML = '<option value="">None (Top Level)</option>' +
          departments.map(d => `<option value="${d.id}">${d.name}</option>`).join('');

        desigSelect.innerHTML = '<option value="">None (Top Level)</option>' +
          designations.map(d => `<option value="${d.id}">${d.name}</option>`).join('');
      }

      function renderOrgMaster() {
        // Render Departments
        const deptTable = document.getElementById('deptTableContent');
        deptTable.innerHTML = departments.map(d => {
          const parent = departments.find(p => p.id == d.parentId);
          return `
            <tr>
              <td class="fw-medium" style="padding-left: ${d.parentId ? '25px' : '8px'}">
                ${d.parentId ? '<i class="fa-solid fa-turn-up fa-rotate-90 me-2 opacity-50"></i>' : ''}${d.name}
              </td>
              <td class="text-muted">${d.code}</td>
              <td class="small text-muted">${parent ? parent.name : '-'}</td>
              <td><span class="badge bg-soft-success text-success">${d.status}</span></td>
              <td class="text-end">
                <button class="btn btn-sm btn-link text-danger p-0" onclick="deleteDept(${d.id})"><i class="fa-solid fa-trash-can"></i></button>
              </td>
            </tr>
          `;
        }).join('');

        // Render Designations
        const desigTable = document.getElementById('designationTableContent');
        desigTable.innerHTML = designations.map(d => {
          const boss = designations.find(b => b.id == d.reportsToId);
          return `
            <tr>
              <td class="fw-medium" style="padding-left: ${d.reportsToId ? '25px' : '8px'}">
                ${d.reportsToId ? '<i class="fa-solid fa-turn-up fa-rotate-90 me-2 opacity-50"></i>' : ''}${d.name}
              </td>
              <td class="small">${d.dept}</td>
              <td class="small text-muted">${boss ? boss.name : '-'}</td>
              <td class="small">${d.level}</td>
              <td><span class="badge bg-soft-success text-success">${d.status}</span></td>
              <td class="text-end">
                <button class="btn btn-sm btn-link text-danger p-0" onclick="deleteDesignation(${d.id})"><i class="fa-solid fa-trash-can"></i></button>
              </td>
            </tr>
          `;
        }).join('');

        // Render Categories
        const catGrid = document.getElementById('categoryGridContent');
        catGrid.innerHTML = categories.map(c => `
          <div class="col-md-6 col-lg-4">
            <div class="card border shadow-sm p-3 h-100">
              <div class="d-flex justify-content-between mb-2">
                <span class="badge bg-light text-muted" style="font-size: 10px">${c.type}</span>
                <button class="btn btn-link text-danger p-0" onclick="deleteCategory(${c.id})"><i class="fa-solid fa-trash-can" style="font-size: 12px"></i></button>
              </div>
              <h6 class="fw-bold mb-1" style="font-size: 14px">${c.name}</h6>
              <p class="text-muted mb-3" style="font-size: 11px">${c.desc}</p>
              <div class="d-flex justify-content-between align-items-center pt-2 border-top">
                <span class="small text-muted">${c.employees} Employees</span>
                <span class="badge bg-soft-success text-success" style="font-size: 10px">Active</span>
              </div>
            </div>
          </div>
        `).join('');

        updateParentSelects();
      }

      // Save handlers
      document.getElementById('saveDeptBtn').addEventListener('click', () => {
        const name = document.getElementById('newDeptName').value;
        const code = document.getElementById('newDeptCode').value;
        const parentId = document.getElementById('newDeptParent').value;
        if (!name) return alert('Name is required');
        departments.push({ id: Date.now(), name, code, parentId: parentId ? parseInt(parentId) : null, status: 'Active' });
        renderOrgMaster();
        bootstrap.Modal.getInstance(document.getElementById('addDeptModal')).hide();
        document.getElementById('newDeptName').value = '';
        document.getElementById('newDeptCode').value = '';
      });

      document.getElementById('saveDesignationBtn').addEventListener('click', () => {
        const name = document.getElementById('newDesignationName').value;
        const dept = document.getElementById('newDesignationDept').value;
        const level = document.getElementById('newDesignationLevel').value;
        const reportsToId = document.getElementById('newDesignationParent').value;
        if (!name) return alert('Name is required');
        designations.push({ id: Date.now(), name, dept, level, reportsToId: reportsToId ? parseInt(reportsToId) : null, status: 'Active' });
        renderOrgMaster();
        bootstrap.Modal.getInstance(document.getElementById('addDesignationModal')).hide();
        document.getElementById('newDesignationName').value = '';
      });

      document.getElementById('saveCategoryBtn').addEventListener('click', () => {
        const name = document.getElementById('newCategoryName').value;
        const type = document.getElementById('newCategoryType').value;
        if (!name) return alert('Name is required');
        categories.push({ id: Date.now(), name, type, desc: 'Custom employee category', employees: 0 });
        renderOrgMaster();
        bootstrap.Modal.getInstance(document.getElementById('addCategoryModal')).hide();
        document.getElementById('newCategoryName').value = '';
      });

      // Delete handlers
      window.deleteDept = (id) => { if (confirm('Delete this department?')) { departments = departments.filter(d => d.id !== id); renderOrgMaster(); } };
      window.deleteDesignation = (id) => { if (confirm('Delete this designation?')) { designations = designations.filter(d => d.id !== id); renderOrgMaster(); } };
      window.deleteCategory = (id) => { if (confirm('Delete this category?')) { categories = categories.filter(c => c.id !== id); renderOrgMaster(); } };

      // Initial render
      renderConfigLists();
      renderOrgMaster();

      // === FIXED SALARY LOGIC ===
      let salaryStructures = [
        {
          id: 1,
          name: 'Standard Operations',
          isCompliant: true,
          components: [
            { name: 'Basic', type: 'Mandatory' },
            { name: 'HRA', type: 'Mandatory' },
            { name: 'DA', type: 'Mandatory' }
          ]
        }
      ];

      const salaryLabelsContainer = document.getElementById('salaryLabelsContainer');
      const addMoreSalaryLabelBtn = document.getElementById('addMoreSalaryLabel');
      const complianceCheck = document.getElementById('salaryComplianceCheck');
      const salaryStructureList = document.getElementById('salaryStructureList');

      function createLabelRow(name = '', type = 'Mandatory', isLocked = false) {
        const row = document.createElement('div');
        row.className = 'row align-items-center g-2 mb-2 label-row';
        row.innerHTML = `
          <div class="col-7">
            <input type="text" class="form-control form-control-sm label-name" placeholder="Component Name" value="${name}" ${isLocked ? 'readonly' : ''}>
          </div>
          <div class="col-4">
            <select class="form-select form-select-sm label-type" ${isLocked ? 'disabled' : ''}>
              <option value="Mandatory" ${type == 'Mandatory' ? 'selected' : ''}>Mandatory</option>
              <option value="Optional" ${type == 'Optional' ? 'selected' : ''}>Optional</option>
            </select>
          </div>
          <div class="col-1">
            ${isLocked ? '' : '<button class="btn btn-sm text-danger p-0 delete-row"><i class="fa-solid fa-xmark"></i></button>'}
          </div>
        `;
        return row;
      }

      function renderSalaryStructures() {
        salaryStructureList.innerHTML = '';
        if (salaryStructures.length === 0) {
          salaryStructureList.innerHTML = `
            <div class="col-12" id="salaryEmptyState">
               <div class="text-center py-5 opacity-50">
                  <i class="fa-solid fa-money-check-dollar fa-3x mb-3 text-orange"></i>
                  <p class="small mb-0">No salary structures defined yet.</p>
               </div>
            </div>
          `;
          return;
        }

        salaryStructures.forEach(function (s) {

            var card = document.createElement('div');
            card.className = 'col-md-4';

            var badgeClass = s.isCompliant 
                ? 'bg-soft-success text-success' 
                : 'bg-soft-secondary text-secondary';

            var badgeText = s.isCompliant 
                ? 'Compliant' 
                : 'Custom';

            // Build components badges manually (ES5 way)
            var componentsHtml = '';
            var maxDisplay = 3;
            var displayCount = s.components.length > maxDisplay ? maxDisplay : s.components.length;

            for (var i = 0; i < displayCount; i++) {
                componentsHtml += '<span class="badge bg-light text-muted" style="font-size: 10px">' 
                    + s.components[i].name + 
                    '</span>';
            }

            if (s.components.length > maxDisplay) {
                componentsHtml += '<span class="badge bg-light text-muted" style="font-size: 10px">+' 
                    + (s.components.length - maxDisplay) + 
                    ' more</span>';
            }

            card.innerHTML =
                '<div class="card border shadow-sm p-3 h-100">' +
                    '<div class="d-flex justify-content-between align-items-start mb-2">' +
                        '<span class="badge ' + badgeClass + '" style="font-size: 10px">' + badgeText + '</span>' +
                        '<div class="dropdown">' +
                            '<button class="btn btn-link p-0 text-muted" data-bs-toggle="dropdown">' +
                                '<i class="fa-solid fa-ellipsis-vertical"></i>' +
                            '</button>' +
                            '<ul class="dropdown-menu dropdown-menu-end shadow-sm border-0 small">' +
                                '<li><a class="dropdown-item" href="javascript:void(0)" onclick="editSalaryStructure(' + s.id + ')">' +
                                    '<i class="fa-solid fa-pen me-2"></i>Edit</a></li>' +
                                '<li><a class="dropdown-item text-danger" href="javascript:void(0)" onclick="deleteSalaryStructure(' + s.id + ')">' +
                                    '<i class="fa-solid fa-trash me-2"></i>Delete</a></li>' +
                            '</ul>' +
                        '</div>' +
                    '</div>' +
                    '<h6 class="fw-bold mb-1" style="font-size: 14px;">' + s.name + '</h6>' +
                    '<p class="text-muted small mb-3">Formula: User defined</p>' +
                    '<div class="d-flex flex-wrap gap-1 mb-3">' +
                        componentsHtml +
                    '</div>' +
                    '<button class="btn btn-sm btn-orange text-white w-100 mt-auto" style="font-size: 11px;" onclick="viewSalaryStructure(' + s.id + ')">' +
                        'View Full Structure</button>' +
                '</div>';

            salaryStructureList.appendChild(card);
        });
      }

      window.editSalaryStructure = (id) => {
        const s = salaryStructures.find(struct => struct.id === id);
        if (!s) return;

        document.getElementById('editingSalaryId').value = s.id;
        document.getElementById('salaryModalTitle').textContent = 'Edit Salary Structure';
        document.getElementById('salaryFormulaName').value = s.name;
        complianceCheck.checked = s.isCompliant;

        salaryLabelsContainer.innerHTML = '';
        s.components.forEach(c => {
          const isLocked = s.isCompliant && (c.name.toLowerCase() === 'basic' || c.name.toLowerCase() === 'hra');
          salaryLabelsContainer.appendChild(createLabelRow(c.name, c.type, isLocked));
        });

        const modal = new bootstrap.Modal(document.getElementById('fixedSalaryHeadersModal'));
        modal.show();
      };

      window.viewSalaryStructure = (id) => {
        const s = salaryStructures.find(struct => struct.id === id);
        if (!s) return;

        document.getElementById('viewFormulaName').textContent = s.name;
        const badge = document.getElementById('viewComplianceBadge');
        badge.textContent = s.isCompliant ? 'Compliant' : 'Custom';
        badge.className = `badge ${s.isCompliant ? 'bg-soft-success text-success' : 'bg-soft-secondary text-secondary'}`;

        const list = document.getElementById('viewComponentsList');
        list.innerHTML = s.components.map(c => `
          <div class="d-flex justify-content-between align-items-center mb-2 last-child-mb-0">
            <span class="fw-bold small">${c.name}</span>
            <span class="badge ${c.type == 'Mandatory' ? 'bg-soft-danger text-danger' : 'bg-soft-info text-info'}" style="font-size: 10px">${c.type}</span>
          </div>
        `).join('');

        const modal = new bootstrap.Modal(document.getElementById('viewSalaryStructureModal'));
        modal.show();
      };

      window.deleteSalaryStructure = (id) => {
        if (confirm('Are you sure you want to delete this salary structure?')) {
          salaryStructures = salaryStructures.filter(s => s.id !== id);
          renderSalaryStructures();
        }
      };

      addMoreSalaryLabelBtn.addEventListener('click', () => {
        salaryLabelsContainer.appendChild(createLabelRow());
      });

      salaryLabelsContainer.addEventListener('click', (e) => {
        if (e.target.closest('.delete-row')) {
          e.target.closest('.label-row').remove();
        }
      });

      complianceCheck.addEventListener('change', function() {
        if (this.checked) {
          const existing = Array.from(salaryLabelsContainer.querySelectorAll('.label-name')).map(input => input.value.toLowerCase());
          if (!existing.includes('basic')) {
            salaryLabelsContainer.prepend(createLabelRow('Basic', 'Mandatory', true));
          }
          if (!existing.includes('hra')) {
            const basicRow = Array.from(salaryLabelsContainer.querySelectorAll('.label-row')).find(row => row.querySelector('.label-name').value.toLowerCase() === 'basic');
            if (basicRow) {
              basicRow.after(createLabelRow('HRA', 'Mandatory', true));
            } else {
              salaryLabelsContainer.prepend(createLabelRow('HRA', 'Mandatory', true));
            }
          }
        } else {
          Array.from(salaryLabelsContainer.querySelectorAll('.label-row')).forEach(row => {
            const val = row.querySelector('.label-name').value.toLowerCase();
            if (val === 'basic' || val === 'hra') {
              row.remove();
            }
          });
        }
      });

      document.getElementById('saveSalaryStructure').addEventListener('click', () => {
        const formulaName = document.getElementById('salaryFormulaName').value;
        const isCompliant = complianceCheck.checked;
        const components = Array.from(salaryLabelsContainer.querySelectorAll('.label-row')).map(row => ({
          name: row.querySelector('.label-name').value,
          type: row.querySelector('.label-type').value
        })).filter(c => c.name.trim() !== '');

        if (!formulaName) return alert('Formula Name is required');
        if (components.length === 0) return alert('At least one salary component is required');

        const editingId = document.getElementById('editingSalaryId').value;

        if (editingId) {
          const index = salaryStructures.findIndex(s => s.id == editingId);
          if (index !== -1) {
            salaryStructures[index] = { id: parseInt(editingId), name: formulaName, isCompliant, components };
          }
        } else {
          salaryStructures.push({
            id: Date.now(),
            name: formulaName,
            isCompliant,
            components
          });
        }

        renderSalaryStructures();
        bootstrap.Modal.getInstance(document.getElementById('fixedSalaryHeadersModal')).hide();
        
        // Reset form for next use
        document.getElementById('editingSalaryId').value = '';
        document.getElementById('salaryModalTitle').textContent = 'Fixed Salary Headers';
        document.getElementById('salaryFormulaName').value = '';
        complianceCheck.checked = false;
        salaryLabelsContainer.innerHTML = '';
        for(let i=1; i<=3; i++) salaryLabelsContainer.appendChild(createLabelRow());
      });

      // === LEAVE SETUP LOGIC ===
      let leaveRules = [
        { 
          id: 1, name: 'Sick Leave', cycle: 'Monthly', credit: '1.0', eligibility: '0', 
          status: 'Active', formula: 'Standard', sandwich: 'Yes', cfLimit: '0', 
          desc: 'Standard sick leave policy for health-related absences.' 
        },
        { 
          id: 2, name: 'Casual Leave', cycle: 'Quarterly', credit: '2.5', eligibility: '30', 
          status: 'Active', formula: 'Standard', sandwich: 'No', cfLimit: '5', 
          desc: 'Leave for personal reasons and short-term emergencies.' 
        }
      ];

      const leaveRulesGrid = document.getElementById('leaveRulesGrid');
      const saveLeaveRuleBtn = document.getElementById('saveLeaveRule');
      const leaveRulesForm = document.getElementById('leaveRulesForm');

      function renderLeaveRules() {
        leaveRulesGrid.innerHTML = '';
        if (leaveRules.length === 0) {
          leaveRulesGrid.innerHTML = `
            <div class="col-12">
               <div class="text-center py-5 opacity-50">
                  <i class="fa-solid fa-calendar-xmark fa-3x mb-3 text-orange"></i>
                  <p class="small mb-0">No leave rules configured yet.</p>
               </div>
            </div>
          `;
          return;
        }

        leaveRules.forEach(function (rule) {

            var card = document.createElement('div');
            card.className = 'col-md-4';

            var badgeClass = (rule.status === 'Active')
                ? 'bg-soft-success text-success'
                : 'bg-soft-secondary text-secondary';

            card.innerHTML =
                '<div class="card border shadow-sm p-3 h-100">' +

                    '<div class="d-flex justify-content-between align-items-start mb-2">' +

                        '<span class="badge ' + badgeClass + '" style="font-size: 10px">' +
                            rule.status +
                        '</span>' +

                        '<div class="dropdown">' +
                            '<button class="btn btn-link p-0 text-muted" data-bs-toggle="dropdown">' +
                                '<i class="fa-solid fa-ellipsis-vertical"></i>' +
                            '</button>' +
                            '<ul class="dropdown-menu dropdown-menu-end shadow-sm border-0 small">' +
                                '<li>' +
                                    '<a class="dropdown-item" href="javascript:void(0)" onclick="editLeaveRule(' + rule.id + ')">' +
                                        '<i class="fa-solid fa-pen me-2"></i>Edit' +
                                    '</a>' +
                                '</li>' +
                                '<li>' +
                                    '<a class="dropdown-item text-danger" href="javascript:void(0)" onclick="deleteLeaveRule(' + rule.id + ')">' +
                                        '<i class="fa-solid fa-trash me-2"></i>Delete' +
                                    '</a>' +
                                '</li>' +
                            '</ul>' +
                        '</div>' +

                    '</div>' +

                    '<h6 class="fw-bold mb-1" style="font-size: 14px;">' +
                        rule.name +
                    '</h6>' +

                    '<div class="d-flex flex-column gap-1 mb-3 mt-2">' +

                        '<span class="text-muted small">' +
                            '<i class="fa-solid fa-refresh me-1"></i> Cycle: ' +
                            rule.cycle +
                        '</span>' +

                        '<span class="text-muted small">' +
                            '<i class="fa-solid fa-plus-circle me-1"></i> Credit: ' +
                            rule.credit +
                            ' Days</span>' +

                        '<span class="text-muted small">' +
                            '<i class="fa-solid fa-user-clock me-1"></i> Eligibility: ' +
                            rule.eligibility +
                            ' Days</span>' +

                    '</div>' +

                    '<button class="btn btn-sm btn-orange text-white w-100 mt-auto" style="font-size: 11px;" onclick="viewLeaveRule(' + rule.id + ')">' +
                        'View Policy Details' +
                    '</button>' +

                '</div>';

            leaveRulesGrid.appendChild(card);
        });
      }

      window.viewLeaveRule = (id) => {
        const rule = leaveRules.find(r => r.id == id);
        if (!rule) return;

        document.getElementById('viewLeaveRuleName').textContent = rule.name;
        document.getElementById('viewLeaveStatusBadge').textContent = rule.status;
        document.getElementById('viewLeaveStatusBadge').className = `badge ${rule.status == 'Active' ? 'bg-soft-success text-success' : 'bg-soft-secondary text-secondary'}`;
        document.getElementById('viewLeaveFormula').textContent = rule.formula || 'Standard';
        document.getElementById('viewLeaveCycle').textContent = rule.cycle;
        document.getElementById('viewLeaveAmount').textContent = `${rule.credit} Days`;
        document.getElementById('viewLeaveEligibility').textContent = `${rule.eligibility} Days`;
        document.getElementById('viewLeaveCFLimit').textContent = `${rule.cfLimit || '0'} Days`;
        document.getElementById('viewLeaveSandwich').textContent = rule.sandwich || 'No';
        document.getElementById('viewLeaveDesc').textContent = rule.desc || 'No description provided.';

        new bootstrap.Modal(document.getElementById('viewLeaveRuleModal')).show();
      };

      window.editLeaveRule = (id) => {
        const rule = leaveRules.find(r => r.id == id);
        if (!rule) return;

        document.getElementById('leaveModalTitle').textContent = 'Edit Leave Rule';
        document.getElementById('editingLeaveId').value = rule.id;
        document.getElementById('leaveName').value = rule.name;
        document.getElementById('leaveFormula').value = rule.formula || 'Standard';
        document.getElementById('creditCycle').value = rule.cycle;
        document.getElementById('creditAmount').value = rule.credit;
        document.getElementById('sandwichRule').value = rule.sandwich || 'No';
        document.getElementById('cfLimit').value = rule.cfLimit || '0';
        document.getElementById('eligibilityDays').value = rule.eligibility;
        document.getElementById('leaveStatus').value = rule.status;
        document.getElementById('leaveDescription').value = rule.desc || '';

        new bootstrap.Modal(document.getElementById('addLeaveRuleModal')).show();
      };

      saveLeaveRuleBtn.addEventListener('click', () => {
        const name = document.getElementById('leaveName').value;
        const formula = document.getElementById('leaveFormula').value;
        const cycle = document.getElementById('creditCycle').value;
        const credit = document.getElementById('creditAmount').value;
        const sandwich = document.getElementById('sandwichRule').value;
        const cfLimit = document.getElementById('cfLimit').value;
        const eligibility = document.getElementById('eligibilityDays').value;
        const status = document.getElementById('leaveStatus').value;
        const desc = document.getElementById('leaveDescription').value;

        if (!name) return alert('Leave Name is required');

        const editingId = document.getElementById('editingLeaveId').value;

        const ruleData = {
          name,
          formula,
          cycle,
          credit: credit || '0',
          sandwich,
          cfLimit: cfLimit || '0',
          eligibility: eligibility || '0',
          status,
          desc
        };

        if (editingId) {
          const index = leaveRules.findIndex(r => r.id == editingId);
          if (index !== -1) {
            leaveRules[index] = { ...ruleData, id: parseInt(editingId) };
          }
        } else {
          leaveRules.push({ ...ruleData, id: Date.now() });
        }

        renderLeaveRules();
        bootstrap.Modal.getInstance(document.getElementById('addLeaveRuleModal')).hide();
        
        // Reset form
        document.getElementById('leaveModalTitle').textContent = 'Create New Leave Rule';
        document.getElementById('editingLeaveId').value = '';
        leaveRulesForm.reset();
      });

      window.deleteLeaveRule = (id) => {
        if (confirm('Are you sure you want to delete this leave rule?')) {
          leaveRules = leaveRules.filter(r => r.id !== id);
          renderLeaveRules();
        }
      };

      // Initial Render
      renderSalaryStructures();
      renderLeaveRules();
      // Populate salary modal with initial rows
      for(let i=1; i<=3; i++) salaryLabelsContainer.appendChild(createLabelRow());
    });
  </script>

  <script>
    // Hiring/Rehiring Tab Functionality
    // Candidate data store
    const candidatesData = {
      'JD': {
        name: 'John Doe',
        email: 'john.doe@example.com',
        role: 'Senior Developer',
        department: 'IT',
        offerDate: 'Jan 15, 2026',
        startDate: 'Feb 01, 2026',
        stage: 'Background Check',
        status: 'In Progress',
        progress: 80,
        phone: '+1 (555) 123-4567',
        location: 'New York, USA',
        avatar: 'JD',
        avatarBg: 'bg-soft-primary text-primary'
      },
      'AS': {
        name: 'Alice Smith',
        email: 'alice.s@example.com',
        role: 'HR Manager',
        department: 'Human Resources',
        offerDate: 'Jan 10, 2026',
        startDate: 'Jan 25, 2026',
        stage: 'Offer Accepted',
        status: 'Ready to Join',
        progress: 100,
        phone: '+1 (555) 234-5678',
        location: 'Boston, USA',
        avatar: 'AS',
        avatarBg: 'bg-soft-success text-success'
      },
      'RK': {
        name: 'Rahul Kumar',
        email: 'r.kumar@example.com',
        role: 'Machine Operator',
        department: 'Operations',
        offerDate: 'Jan 20, 2026',
        startDate: 'Feb 05, 2026',
        stage: 'Document Verification',
        status: 'Pending Docs',
        progress: 60,
        phone: '+1 (555) 345-6789',
        location: 'Chicago, USA',
        avatar: 'RK',
        avatarBg: 'bg-soft-warning text-warning'
      }
    };

    let currentCandidateId = null;

    // View Candidate Details
    function viewCandidateDetails(candidateId) {
      const candidate = candidatesData[candidateId];
      if (!candidate) return;

      currentCandidateId = candidateId;

      // Update modal content
      document.getElementById('candidateAvatar').textContent = candidate.avatar;
      document.getElementById('candidateAvatar').className = `avatar-initials ${candidate.avatarBg} rounded-circle mx-auto d-flex align-items-center justify-content-center mb-3`;
      document.getElementById('candidateName').textContent = candidate.name;
      document.getElementById('candidateEmail').textContent = candidate.email;
      document.getElementById('candidateStatusBadge').textContent = candidate.status;
      document.getElementById('candidateRole').textContent = candidate.role;
      document.getElementById('candidateDept').textContent = candidate.department;
      document.getElementById('candidateOfferDate').textContent = candidate.offerDate;
      document.getElementById('candidateStartDate').textContent = candidate.startDate;
      document.getElementById('progressPercent').textContent = candidate.progress + '%';
      document.getElementById('progressBar').style.width = candidate.progress + '%';

      // Show modal
      const modal = new bootstrap.Modal(document.getElementById('candidateDetailsModal'));
      modal.show();
    }

    // Update Candidate Status
    function updateCandidateStatus(candidateId) {
      const candidate = candidatesData[candidateId || currentCandidateId];
      if (!candidate) return;

      currentCandidateId = candidateId || currentCandidateId;

      // Update modal content
      document.getElementById('statusCandidateName').value = candidate.name;

      // Show modal
      const modal = new bootstrap.Modal(document.getElementById('updateStatusModal'));
      modal.show();
    }

    // Send Offer
    function sendOffer(candidateId) {
      const candidate = candidatesData[candidateId];
      if (!candidate) return;

      currentCandidateId = candidateId;

      // Update modal content
      document.getElementById('offerCandidateName').value = candidate.name;
      document.getElementById('offerCandidateEmail').value = candidate.email;
      document.getElementById('offerPosition').value = candidate.role;
      document.getElementById('offerDepartment').value = candidate.department;

      // Show modal
      const modal = new bootstrap.Modal(document.getElementById('sendOfferModal'));
      modal.show();
    }

    // Save Status Update
    function saveStatusUpdate() {
      const stage = document.getElementById('candidateStage').value;
      const status = document.getElementById('candidateStatusSelect').value;

      // Show success message
      alert('Candidate status updated successfully!');

      // Close modal
      const modal = bootstrap.Modal.getInstance(document.getElementById('updateStatusModal'));
      modal.hide();
    }

    // Send Offer Letter
    function sendOfferLetter() {
      // Show success message
      alert('Offer letter sent successfully to the candidate!');

      // Close modal
      const modal = bootstrap.Modal.getInstance(document.getElementById('sendOfferModal'));
      modal.hide();
    }

    // Start Onboarding
    function startOnboarding(candidateId) {
      const candidate = candidatesData[candidateId];
      if (confirm(`Start onboarding process for ${candidate.name}?`)) {
        alert('Onboarding process started! The candidate will receive an email with next steps.');
      }
    }

    // Reschedule Joining
    function rescheduleJoining(candidateId) {
      const candidate = candidatesData[candidateId];
      const newDate = prompt(`Enter new joining date for ${candidate.name}:`, candidate.startDate);
      if (newDate) {
        alert(`Joining date updated to ${newDate} successfully!`);
      }
    }

    // Request Documents
    function requestDocuments(candidateId) {
      const candidate = candidatesData[candidateId];
      if (confirm(`Send document request to ${candidate.name}?`)) {
        alert('Document request email sent to the candidate!');
      }
    }

    // Reject Candidate
    function rejectCandidate(candidateId) {
      const candidate = candidatesData[candidateId];
      if (confirm(`Are you sure you want to reject ${candidate.name}?`)) {
        alert('Candidate rejected. A notification email will be sent.');
      }
    }

    // Withdraw Offer
    function withdrawOffer(candidateId) {
      const candidate = candidatesData[candidateId];
      if (confirm(`Are you sure you want to withdraw the offer for ${candidate.name}?`)) {
        alert('Offer withdrawn. A notification email will be sent to the candidate.');
      }
    }

    // === SALARY STRUCTURE FORMULA SETUP LOGIC (REFINED) ===
    function openFormulaSetup(type, formulaName) {
      const modalElement = document.getElementById('formulaSetupModal');
      const nameField = document.getElementById('formFormulaName');
      const contextLabel = document.getElementById('formulaContextLabel');
      
      // Reset dynamic containers
      document.querySelectorAll('.dynamic-rows-container').forEach(c => c.innerHTML = '');
      
      // Reset navigation and scroll
      // Auto-scroll to top of modal content
      document.getElementById('formulaModalBody').scrollTop = 0;

      if (type === 'M') {
        nameField.value = 'salaryhead';
        nameField.readOnly = true;
        contextLabel.textContent = 'Main Formula';
        contextLabel.className = 'fw-bold text-orange';
      } else {
        nameField.value = formulaName || '';
        nameField.readOnly = false;
        contextLabel.textContent = 'Sub Formula';
        contextLabel.className = 'fw-bold text-info';
      }
      
      const modal = new bootstrap.Modal(modalElement);
      modal.show();
    }


    function addDynamicRow(containerId) {
      const container = document.getElementById(containerId);
      const row = document.createElement('div');
      row.className = 'row g-3 mb-2 align-items-center animate__animated animate__fadeIn';
      
      row.innerHTML = `
        <div class="col-md-6">
          <input type="text" class="form-control form-control-sm border-0 shadow-sm" placeholder="Label Name">
        </div>
        <div class="col-md-4">
          <select class="form-select form-select-sm border-0 shadow-sm">
            <option value="Mandatory">Mandatory</option>
            <option value="Optional">Optional</option>
          </select>
        </div>
        <div class="col-md-2 text-end">
          <button class="btn btn-sm btn-link text-danger p-0" onclick="this.closest('.row').remove()">
            <i class="fa-solid fa-trash"></i>
          </button>
        </div>
      `;
      
      container.appendChild(row);
    }

    document.getElementById('saveFormulaBtn').addEventListener('click', () => {
      const formulaName = document.getElementById('formFormulaName').value;
      if (!formulaName) {
        alert('Please enter a Formula Name');
        return;
      }
      
      // Show a premium success message
      const btn = document.getElementById('saveFormulaBtn');
      const originalText = btn.innerHTML;
      btn.disabled = true;
      btn.innerHTML = '<i class="fa-solid fa-circle-notch fa-spin me-2"></i> Saving...';

      setTimeout(() => {
        alert('Formula structure for "' + formulaName + '" has been saved and applied to recruitment workflows.');
        btn.disabled = false;
        btn.innerHTML = originalText;
        bootstrap.Modal.getInstance(document.getElementById('formulaSetupModal')).hide();
      }, 1000);
    });

    // Handle Deduction Dependencies for Intermediate Variables
    const deductionIntermediates = {
      'dd-pf': 'iv-pf-wage',
      'dd-esic': 'iv-esic-wage',
      'dd-lwf': 'iv-lwf-wage'
    };

    Object.entries(deductionIntermediates).forEach(([dedId, ivId]) => {
      const dedCheck = document.getElementById(dedId);
      const ivCheck = document.getElementById(ivId);
      
      if (dedCheck && ivCheck) {
        dedCheck.addEventListener('change', () => {
          if (dedCheck.checked) {
            ivCheck.checked = true;
            ivCheck.disabled = true;
            ivCheck.closest('.form-check').classList.add('opacity-50');
          } else {
            ivCheck.checked = false;
            ivCheck.disabled = false;
            ivCheck.closest('.form-check').classList.remove('opacity-50');
          }
        });
      }
    });

    // === SALARY CALCULATOR LOGIC ===
    let currentFormula = '';
    let formulaContext = null; // 'global' or component name like 'BASIC'
    let currentFactoryName = 'factory';
    let currentStructureName = 'salaryhead';
    
    function updateContextDisplay() {
      const displayPairs = [
        { id: 'activeFactoryDisplay', value: currentFactoryName },
        { id: 'activeStructureDisplay', value: currentStructureName },
        { id: 'modalFactoryDisplay', value: currentFactoryName },
        { id: 'modalStructureDisplay', value: currentStructureName }
      ];

      displayPairs.forEach(pair => {
        const el = document.getElementById(pair.id);
        if (el) el.textContent = pair.value;
      });
    }

    // Component Formulas State
    const componentFormulas = {
      'BASIC': { formula: '', added: false },
      'HRA': { formula: '', added: false },
      'PF': { formula: '', added: false },
      'ESIC': { formula: '', added: false },
      'Working Days': { formula: '', added: false },
      'Present': { formula: '', added: false },
      'PF WAGE': { formula: '', added: false },
      'ESIC WAGE': { formula: '', added: false }
    };

    function initComponentSetup() {
      updateContextDisplay();
      const tbody = document.getElementById('componentSetupTbody');
      if (!tbody) return;
      
      tbody.innerHTML = '';
      Object.keys(componentFormulas).forEach(component => {
        const data = componentFormulas[component];
        const row = document.createElement('tr');
        row.innerHTML = `
          <td class="ps-4 fw-bold text-dark">${component}</td>
          <td>
            <div class="d-flex align-items-center">
              <span class="text-muted small me-2 formula-text" style="font-family: monospace;">${data.formula || 'No formula set'}</span>
              <a href="javascript:void(0)" class="text-orange small text-decoration-none fw-bold" onclick="openFormulaFor('${component}')">
                <i class="fa-solid fa-plus-circle me-1"></i> ${data.formula ? 'Edit' : 'Add'}
              </a>
            </div>
          </td>
          <td class="text-center">
            <button class="btn btn-sm ${data.added ? 'btn-success' : 'btn-outline-primary'} rounded-pill px-3 py-1" onclick="addToCalculatorAction('${component}')" ${!data.formula ? 'disabled' : ''} style="font-size: 11px;">
              <i class="fa-solid ${data.added ? 'fa-check-circle' : 'fa-plus'} me-1"></i> ${data.added ? 'In Calculator' : 'Add to Calculator'}
            </button>
          </td>
        `;
        tbody.appendChild(row);
      });
    }

    function openFormulaFor(component) {
      formulaContext = component;
      currentFormula = componentFormulas[component].formula;
      document.getElementById('mainCalcDisplay').value = currentFormula;
      
      // Update modal title
      const modalTitle = document.querySelector('#salaryCalculatorModal .modal-title');
      modalTitle.textContent = `Formula Setup - ${component}`;
      
      showCalculatorModal();
    }

    function addToCalculatorAction(component) {
      componentFormulas[component].added = !componentFormulas[component].added;
      initComponentSetup();
      
      if (componentFormulas[component].added) {
        alert(`${component} formula button added to your Global Calculator!`);
      }
    }

    function selectStructureForCalculator(factory, structure) {
      currentFactoryName = factory;
      currentStructureName = structure;
      initComponentSetup();
      
      // 1. Switch to the Salary Management parent tab if not already active
      const salaryMgmtTab = document.getElementById('salary-mgmt-tab');
      if (salaryMgmtTab && !salaryMgmtTab.classList.contains('active')) {
        const parentTabTrigger = bootstrap.Tab.getOrCreateInstance(salaryMgmtTab);
        parentTabTrigger.show();
      }
      
      // 2. Visual toggle for inner tabs (custom pill styles)
      document.querySelectorAll('.salary-tab-btn').forEach(btn => {
        btn.classList.remove('active');
        btn.classList.add('inactive');
        btn.setAttribute('aria-selected', 'false');
      });

      // 3. Activate the calculator inner tab button
      const calcTabBtn = document.getElementById('inner-calculator-tab');
      if (calcTabBtn) {
        calcTabBtn.classList.remove('inactive');
        calcTabBtn.classList.add('active');
        calcTabBtn.setAttribute('aria-selected', 'true');
      }

      // 4. Robust pane switching (Manual override for custom tab implementations)
      const panes = document.querySelectorAll('#salaryInnerTabContent .tab-pane');
      panes.forEach(pane => {
        pane.classList.remove('show', 'active');
      });

      const targetPane = document.getElementById('inner-calculator');
      if (targetPane) {
        targetPane.classList.add('show', 'active');
      }
      
      // 5. Smooth scroll to top of content
      const contentArea = document.getElementById('employeeTabContent');
      if (contentArea) {
        contentArea.scrollIntoView({ behavior: 'smooth' });
      }
    }

    function openExpenseFormula(factory, structure) {
      // Update context displays
      const factoryDisplay = document.getElementById('expenseActiveFactoryDisplay');
      const structureDisplay = document.getElementById('expenseActiveStructureDisplay');
      if (factoryDisplay) factoryDisplay.textContent = factory;
      if (structureDisplay) structureDisplay.textContent = structure;

      // Switch to the Formula Content sub-tab
      const formulaTabTrigger = document.querySelector('[data-bs-target="#expense-formula-content"]');
      if (formulaTabTrigger) {
        // First ensure the Expense Setup parent tab is active
        const expenseTab = document.getElementById('expense-setup-tab');
        if (expenseTab && !expenseTab.classList.contains('active')) {
           const parentTabBtn = bootstrap.Tab.getOrCreateInstance(expenseTab);
           parentTabBtn.show();
        }

        const tab = bootstrap.Tab.getOrCreateInstance(formulaTabTrigger);
        tab.show();
      }
    }

    function resetAllFormulas() {
      if (confirm('Are you sure you want to reset all component formulas?')) {
        Object.keys(componentFormulas).forEach(c => {
          componentFormulas[c].formula = '';
          componentFormulas[c].added = false;
        });
        initComponentSetup();
      }
    }

    function showCalculatorModal() {
      if (!formulaContext) formulaContext = 'global';
      
      // Set modal title for global if needed
      if (formulaContext === 'global') {
        const modalTitle = document.querySelector('#salaryCalculatorModal .modal-title');
        modalTitle.textContent = 'Salary Formula Calculator';
        document.getElementById('mainCalcDisplay').value = currentFormula;
      }

      // Update dynamic buttons in modal
      updateSavedComponentsGrid();
      
      const modal = new bootstrap.Modal(document.getElementById('salaryCalculatorModal'));
      modal.show();
    }

    function updateSavedComponentsGrid() {
      const container = document.getElementById('savedComponentsGrid');
      if (!container) return;
      
      container.innerHTML = '';
      let addedCount = 0;
      
      Object.keys(componentFormulas).forEach(component => {
        if (componentFormulas[component].added) {
          const btn = document.createElement('button');
          btn.className = 'calc-btn btn-logic w-100 shadow-sm mb-2';
          btn.style.fontSize = '12px';
          btn.style.height = '40px';
          btn.innerHTML = `<i class="fa-solid fa-bolt me-1"></i> CALC ${component}`;
          btn.onclick = () => addDynamicComponent(component);
          
          const col = document.createElement('div');
          col.className = 'col-6';
          col.appendChild(btn);
          container.appendChild(col);
          addedCount++;
        }
      });
      
      if (addedCount === 0) {
        container.innerHTML = '<div class="col-12 py-3 text-center text-muted small"><i class="fa-solid fa-lock me-1"></i> No formulas added. Use component setup to add.</div>';
      }
    }

    function addDynamicComponent(component) {
      const formula = `(${componentFormulas[component].formula})`;
      addValue(formula);
    }

    function addValue(val) {
      const display = document.getElementById('mainCalcDisplay');
      currentFormula += val;
      display.value = currentFormula;
      display.scrollTop = display.scrollHeight;
    }

    function clearCalculator() {
      currentFormula = '';
      document.getElementById('mainCalcDisplay').value = '';
    }

    function backspaceCalculator() {
      const keywords = ['IFSTART(', ')IFEND', 'BASIC', 'HRA', 'CONVEYANCE', 'MEDICAL', 'SPECIAL ALLOWANCE', 'PF_EMPLOYER', 'ESIC_EMPLOYER', 'GROSS', 'CTC'];
      
      // Add dynamically defined formulas to keywords for backspace
      Object.keys(componentFormulas).forEach(c => {
        keywords.push(`(${componentFormulas[c].formula})`);
      });

      let deleted = false;
      for (const kw of keywords) {
        if (currentFormula.endsWith(kw)) {
          currentFormula = currentFormula.substring(0, currentFormula.length - kw.length);
          deleted = true;
          break;
        }
      }
      
      if (!deleted && currentFormula.length > 0) {
        currentFormula = currentFormula.substring(0, currentFormula.length - 1);
      }
      
      document.getElementById('mainCalcDisplay').value = currentFormula;
    }

    function updateRoundingDisplay() {
      const select = document.getElementById('calcRoundSelect');
      const display = document.getElementById('calcRoundDisplay');
      if (display && select) {
          display.textContent = select.options[select.selectedIndex].text.toUpperCase();
      }
    }

    function saveCalculatorFormula() {
      if (!currentFormula) {
        alert('Please build a formula before saving.');
        return;
      }
      
      if (formulaContext !== 'global') {
        // Saving a component formula
        componentFormulas[formulaContext].formula = currentFormula;
        alert(`${formulaContext} formula updated!`);
        initComponentSetup();
        
        // Reset context
        formulaContext = 'global';
        currentFormula = ''; 
        bootstrap.Modal.getInstance(document.getElementById('salaryCalculatorModal')).hide();
        return;
      }

      const roundType = document.getElementById('calcRoundSelect').value;
      alert(`Global Formula saved successfully!\n\nFormula: ${currentFormula}\nRounding: ${roundType}`);
      bootstrap.Modal.getInstance(document.getElementById('salaryCalculatorModal')).hide();
    }

    // Initialize the setup table on load
    document.addEventListener('DOMContentLoaded', () => {
      initComponentSetup();

      // Sub-tab switching logic for Salary Management
      document.querySelectorAll('.salary-tab-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
          e.preventDefault();
          
          // Visual toggle
          document.querySelectorAll('.salary-tab-btn').forEach(b => {
            b.classList.remove('active');
            b.classList.add('inactive');
            b.setAttribute('aria-selected', 'false');
          });
          this.classList.remove('inactive');
          this.classList.add('active');
          this.setAttribute('aria-selected', 'true');

          // Content toggle using Bootstrap API
          const tab = bootstrap.Tab.getOrCreateInstance(this);
          tab.show();
        });
      });

      // Sub-tab switching logic for Expense Setup
      // document.querySelectorAll('.expense-tab-btn').forEach(btn => {
      //   btn.addEventListener('click', function (e) {
      //     e.preventDefault();
          
      //     document.querySelectorAll('.expense-tab-btn').forEach(b => {
      //       b.classList.remove('active');
      //       b.classList.add('inactive');
      //       b.setAttribute('aria-selected', 'false');
      //     });
      //     this.classList.remove('inactive');
      //     this.classList.add('active');
      //     this.setAttribute('aria-selected', 'true');

      //     const tab = bootstrap.Tab.getOrCreateInstance(this);
      //     tab.show();
      //   });
      // });

      document.querySelectorAll('.expense-tab-btn').forEach(btn => {
  btn.addEventListener('shown.bs.tab', function (event) {

    document.querySelectorAll('.expense-tab-btn').forEach(b => {
      b.classList.remove('active');
      b.classList.add('inactive');
    });

    event.target.classList.remove('inactive');
    event.target.classList.add('active');
  });
});


      // Sub-tab switching logic for Income Setup
      document.querySelectorAll('.income-tab-btn').forEach(btn => {
        btn.addEventListener('shown.bs.tab', function (event) {
          document.querySelectorAll('.income-tab-btn').forEach(b => {
            b.classList.remove('active');
            b.classList.add('inactive');
          });
          event.target.classList.remove('inactive');
          event.target.classList.add('active');
        });
      });

      // Tooltip initialization
      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
      var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
      });

      // --- View Contractor Modal Details & Graph ---
      const viewContractorModal = document.getElementById('viewContractorModal');
      let attendanceChart = null;

      if (viewContractorModal) {
        viewContractorModal.addEventListener('shown.bs.modal', function () {
          const options = {
            series: [{
              name: 'Total Workforce',
              data: [120, 125, 118, 130, 128, 135, 140]
            }, {
              name: 'Present',
              data: [110, 115, 105, 125, 120, 130, 138]
            }],
            chart: {
              height: 250,
              type: 'line',
              toolbar: {
                show: false
              },
              zoom: {
                enabled: false
              }
            },
            colors: ['#345a6c', '#00E396'],
            dataLabels: {
              enabled: false
            },
            stroke: {
              curve: 'smooth',
              width: 3
            },
            grid: {
              borderColor: '#f1f1f1',
            },
            xaxis: {
              categories: ['01 Feb', '02 Feb', '03 Feb', '04 Feb', '05 Feb', '06 Feb', '07 Feb'],
              labels: {
                style: {
                  fontSize: '10px'
                }
              }
            },
            yaxis: {
              labels: {
                style: {
                  fontSize: '10px'
                }
              }
            },
            legend: {
              show: false
            }
          };

          if (attendanceChart) {
            attendanceChart.destroy();
          }

          attendanceChart = new ApexCharts(document.querySelector("#attendanceGraph"), options);
          attendanceChart.render();
        });
      }
    });

    // Component Search Logic
    const compSearch = document.getElementById('compSearch');
    if (compSearch) {
      compSearch.addEventListener('input', function(e) {
        const term = e.target.value.toLowerCase();
        const items = document.querySelectorAll('#calcComponentList .list-group-item');
        
        items.forEach(item => {
          const text = item.textContent.toLowerCase();
          if (text.includes(term)) {
            item.classList.remove('d-none');
          } else {
            item.classList.add('d-none');
          }
        });
      });
    }


    // Modal cleanup - reset context when modal is hidden
    document.getElementById('salaryCalculatorModal').addEventListener('hidden.bs.modal', function () {
      formulaContext = 'global';
      currentFormula = '';
    });

    // Function to open expense calculator modal
    function openExpenseCalculator(component) {
      const modal = new bootstrap.Modal(document.getElementById('expenseCalculatorModal'));
      const modalTitle = document.getElementById('expenseCalcModalTitle');
      
      // Update modal title based on component
      if (component === 'PF') {
        modalTitle.textContent = 'Provident Fund (PF) Formula Calculator';
      } else if (component === 'ESIC') {
        modalTitle.textContent = 'ESIC Formula Calculator';
      } else if (component === 'LWF') {
        modalTitle.textContent = 'LWF Formula Calculator';
      } else {
        modalTitle.textContent = 'Expense Formula Calculator';
      }
      
      // Open the modal
      modal.show();
    }
    // Function to open income calculator modal
    function openIncomeCalculator(component) {
      const modal = new bootstrap.Modal(document.getElementById('incomeCalculatorModal') || document.getElementById('expenseCalculatorModal'));
      const modalTitle = document.getElementById('expenseCalcModalTitle'); // Reusing the same modal if income-specific doesn't exist
      
      if (modalTitle) {
        if (component) {
          modalTitle.textContent = `${component} Income Formula Calculator`;
        } else {
          modalTitle.textContent = 'Income Formula Calculator';
        }
      }
      
      modal.show();
    }

    // Function to handle Income Formula navigation
    function openIncomeFormula(factory, structure) {
      // 1. Ensure the Income Setup parent tab is active
      const incomeTab = document.getElementById('income-setup-tab');
      if (incomeTab && !incomeTab.classList.contains('active')) {
         const parentTabBtn = bootstrap.Tab.getOrCreateInstance(incomeTab);
         parentTabBtn.show();
      }

      // 2. Update the context badges
      const factoryDisplay = document.getElementById('incomeActiveFactoryDisplay');
      const structureDisplay = document.getElementById('incomeActiveStructureDisplay');
      
      if (factoryDisplay) factoryDisplay.textContent = factory;
      if (structureDisplay) structureDisplay.textContent = structure;
      
      // 3. Switch to the "INCOME SETUP FORMULA" sub-tab
      const formulaTabBtn = document.querySelector('.income-tab-btn[data-bs-target="#income-formula-content"]');
      if (formulaTabBtn) {
        // Rely on shown.bs.tab listener for class toggling to avoid conflicts
        const tab = bootstrap.Tab.getOrCreateInstance(formulaTabBtn);
        tab.show();
      }
    }

    function resetIncomeStructure(factory, structure) {
      if (confirm(`Are you sure you want to reset the income structure for ${structure} (${factory})?`)) {
        alert(`${structure} structure has been reset to defaults.`);
      }
    }

    document.addEventListener('DOMContentLoaded', () => {
      // Sub-tab switching logic for Income Setup
      document.querySelectorAll('.income-tab-btn').forEach(btn => {
        btn.addEventListener('click', function (e) {
          e.preventDefault();
          
          document.querySelectorAll('.income-tab-btn').forEach(b => {
            b.classList.remove('active');
            b.classList.add('inactive');
            b.setAttribute('aria-selected', 'false');
          });
          this.classList.remove('inactive');
          this.classList.add('active');
          this.setAttribute('aria-selected', 'true');

          const tab = bootstrap.Tab.getOrCreateInstance(this);
          tab.show();
        });
      });
    });
  </script>
  <!-- ESIC Reason Codes Modal -->
  <div class="modal fade" id="esicReasonCodesModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content border-0 shadow-lg" style="border-radius: 20px;">
        <div class="modal-header border-0 pb-0 p-4">
          <h5 class="modal-title fw-bold"><i class="fa-solid fa-circle-info text-orange me-2"></i>ESIC Reason Codes Reference</h5>
          <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body p-4 pt-2">
          <div class="alert alert-soft-orange border-0 small mb-3">
            <i class="fa-solid fa-lightbulb me-2"></i> Use these codes in <strong>Column 5</strong> to indicate reasons for zero working days.
          </div>
          <div class="table-responsive rounded-3 border">
            <table class="table table-hover mb-0 align-middle" style="font-size: 13px;">
              <thead class="bg-light">
                <tr>
                  <th class="ps-3" style="width: 25%;">Reason</th>
                  <th style="width: 10%;">Code</th>
                  <th>Official Note / Requirement</th>
                </tr>
              </thead>
              <tbody>
                <tr><td class="ps-3 fw-bold">Without Reason</td><td>0</td><td class="text-muted">No specific action required.</td></tr>
                <tr><td class="ps-3 fw-bold">On Leave</td><td>1</td><td class="text-muted">Standard leave indicator.</td></tr>
                <tr><td class="ps-3 fw-bold text-orange">Left Service</td><td>2</td><td class="small">Provide Last Working Day (dd/mm/yyyy).</td></tr>
                <tr><td class="ps-3 fw-bold text-orange">Retired</td><td>3</td><td class="small">Provide Last Working Day (dd/mm/yyyy).</td></tr>
                <tr><td class="ps-3 fw-bold text-danger">Out of Coverage</td><td>4</td><td class="small">Only for April/October settlement.</td></tr>
                <tr><td class="ps-3 fw-bold text-orange">Expired</td><td>5</td><td class="small">Provide Last Working Day (dd/mm/yyyy).</td></tr>
                <tr><td class="ps-3 fw-bold">Non Implemented</td><td>6</td><td class="text-muted">Provide Last Working Day.</td></tr>
                <tr><td class="ps-3 fw-bold">Immediate Employer</td><td>7</td><td class="text-muted">Compliance by immediate employer.</td></tr>
                <tr><td class="ps-3 fw-bold">Suspension</td><td>8</td><td class="text-muted">Suspension of work.</td></tr>
                <tr><td class="ps-3 fw-bold">Strike/Lockout</td><td>9</td><td class="text-muted">Standard industrial action.</td></tr>
                <tr><td class="ps-3 fw-bold text-orange">Retrenchment</td><td>10</td><td class="small">Provide Last Working Day.</td></tr>
                <tr><td class="ps-3 fw-bold">No Work</td><td>11</td><td class="text-muted">No work available for IP.</td></tr>
                <tr><td class="ps-3 fw-bold">Wrong Employer</td><td>12</td><td class="text-muted">IP does not belong to this employer.</td></tr>
                <tr><td class="ps-3 fw-bold">Duplicate IP</td><td>13</td><td class="text-muted">Duplicate IP entry.</td></tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer border-0 p-4 pt-0">
          <button type="button" class="btn btn-light px-4 rounded-pill fw-bold" data-bs-dismiss="modal">Close Reference</button>
        </div>
      </div>
    </div>
  </div>

    <script>
    // Initialize all popovers
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
      return new bootstrap.Popover(popoverTriggerEl)
    })

    // Copy to Clipboard Function
    window.copyToClipboard = function (text, element) {
      navigator.clipboard.writeText(text).then(function () {
        const originalClass = element.className;
        element.className = 'fa-solid fa-check text-success';
        setTimeout(() => {
          element.className = originalClass;
        }, 1500);
      });
    }

  </script>
</body>

</html>