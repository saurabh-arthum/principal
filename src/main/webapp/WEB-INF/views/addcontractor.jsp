<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add Contractor - SmartHR</title>
    <link href="bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
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
            <img src="images/logo.png" alt="" style="width: 30px; height: 30px" />
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
                    <input type="text" class="search-input" placeholder="Search...">
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

        <!-- Dashboard Content -->
        <div class="dashboard-content">
            <!-- Page Header -->
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center mb-4 gap-3">
                <div>
                    <h3 class="fw-bold mb-0" style="font-size: 24px; color: #1a202c;">Add New Contractor</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0" style="font-size: 11px;">
                            <li class="breadcrumb-item"><a href="index.html" class="text-decoration-none text-muted">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item"><a href="contractors.html"
                                                           class="text-decoration-none text-muted">Contractors</a></li>
                            <li class="breadcrumb-item active">Add New</li>
                        </ol>
                    </nav>
                </div>

                <div class="d-flex align-items-center gap-3 justify-content-between justify-content-md-start">
                    <a href="contractors.html" class="btn btn-sm border shadow-sm" style="background: #fff; color: #666;">
                        <i class="fa-solid fa-arrow-left me-1"></i> Back to List
                    </a>
                </div>
            </div>

            <!-- Form Wizard -->
            <div class="form-wizard">
                <!-- Wizard Header -->
                <div class="wizard-header">
                    <h4><i class="fa-solid fa-user-plus me-2"></i>Contractor Onboarding</h4>
                    <p class="mb-0">Complete all steps to add a new contractor to the system</p>
                </div>

                <!-- Progress Steps -->
                <div class="progress-steps">
                    <div class="progress-line" id="progressLine"></div>
                    <div class="step-item active" data-step="1">
                        <div class="step-circle">1</div>
                        <div class="step-label">Personal Details</div>
                    </div>
                    <div class="step-item" data-step="2">
                        <div class="step-circle">2</div>
                        <div class="step-label">Address & Contact</div>
                    </div>
                    <div class="step-item" data-step="3">
                        <div class="step-circle">3</div>
                        <div class="step-label">Entity Details</div>
                    </div>
                    <div class="step-item" data-step="4">
                        <div class="step-circle">4</div>
                        <div class="step-label">Business & Registration</div>
                    </div>
                    <div class="step-item" data-step="5">
                        <div class="step-circle">5</div>
                        <div class="step-label">Tax Identifiers</div>
                    </div>
                    <div class="step-item" data-step="6">
                        <div class="step-circle">6</div>
                        <div class="step-label">Company Documents</div>
                    </div>
                    <div class="step-item" data-step="7">
                        <div class="step-circle">7</div>
                        <div class="step-label">Recent Filings</div>
                    </div>
                </div>

                <!-- Form Steps -->
                <form id="contractorForm">
                    <!-- Step 1: Personal Details -->
                    <div class="form-step active" data-step="1">
                        <div class="step-content">
                            <h3 class="step-title">Personal Details</h3>
                            <p class="step-description">Enter the borrower's personal information</p>

                            <div class="row g-3">
                                <!-- <div class="col-md-3">
                                  <label class="form-label required-field">Title</label>
                                  <select class="form-select" name="title" required>
                                    <option value="">Select Title</option>
                                    <option value="Mr">Mr.</option>
                                    <option value="Mrs">Mrs.</option>
                                    <option value="Ms">Ms.</option>
                                  </select>
                                </div> -->

                                <!-- <div class="col-md-3">
                                  <label class="form-label required-field">Ownership %</label>
                                  <input type="number" class="form-control" name="ownership" min="1" max="100" placeholder="1-100"
                                    required />
                                </div> -->

                                <div class="col-md-6">
                                    <label class="form-label required-field">GST Number</label>
                                    <input type="text" class="form-control" name="gstNumber" placeholder="Enter full name" required />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label required-field">Pan Number</label>
                                    <input type="text" class="form-control" name="panNumber" placeholder="Enter full name" required />
                                </div>

                                <!-- <div class="col-md-3">
                                  <label class="form-label required-field">Age</label>
                                  <input type="number" class="form-control" name="age" min="18" max="60" placeholder="18-60"
                                    required />
                                </div>

                                <div class="col-md-3">
                                  <label class="form-label required-field">Date of Birth</label>
                                  <input type="date" class="form-control" name="dob" required />
                                </div> -->
                            </div>
                        </div>
                    </div>

                    <!-- Step 2: Address & Contact -->
                    <div class="form-step" data-step="2">
                        <div class="step-content">
                            <h3 class="step-title">Address & Contact Information</h3>
                            <p class="step-description">Provide complete address and contact details</p>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-location-dot"></i>Address</h6>
                            <div class="row g-3">
                                <div class="col-12">
                                    <label class="form-label required-field">Permanent Address</label>
                                    <textarea class="form-control" name="address" rows="3" placeholder="Enter complete address"
                                              required></textarea>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Residence Type</label>
                                    <div class="d-flex gap-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="residenceType" id="rented" value="Rented"
                                                   required>
                                            <label class="form-check-label" for="rented">Rented</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="residenceType" id="owned" value="Owned">
                                            <label class="form-check-label" for="owned">Owned</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-map-marker-alt"></i>Contact & Location</h6>
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label class="form-label required-field">City</label>
                                    <input type="text" class="form-control" name="city" placeholder="Enter city" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">State</label>
                                    <select class="form-select" name="state" required>
                                        <option value="">Select State</option>
                                        <option value="1">Andhra Pradesh</option>
                                        <option value="2">Arunachal Pradesh</option>
                                        <option value="3">Assam</option>
                                        <option value="4">Bihar</option>
                                        <option value="5">Chhattisgarh</option>
                                        <option value="6">Goa</option>
                                        <option value="7">Gujarat</option>
                                        <option value="8">Haryana</option>
                                        <option value="9">Himachal Pradesh</option>
                                        <option value="10">Jharkhand</option>
                                        <option value="11">Karnataka</option>
                                        <option value="12">Kerala</option>
                                        <option value="13">Madhya Pradesh</option>
                                        <option value="14">Maharashtra</option>
                                        <option value="15">Manipur</option>
                                        <option value="16">Meghalaya</option>
                                        <option value="17">Mizoram</option>
                                        <option value="18">Nagaland</option>
                                        <option value="19">Odisha</option>
                                        <option value="20">Punjab</option>
                                        <option value="21">Rajasthan</option>
                                        <option value="22">Sikkim</option>
                                        <option value="23">Tamil Nadu</option>
                                        <option value="24">Telangana</option>
                                        <option value="25">Tripura</option>
                                        <option value="26">Uttar Pradesh</option>
                                        <option value="27">Uttarakhand</option>
                                        <option value="28">West Bengal</option>
                                        <option value="29">Delhi</option>
                                        <option value="30">Puducherry</option>
                                    </select>
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Pincode</label>
                                    <input type="text" class="form-control" name="pincode" placeholder="6 digits" pattern="[0-9]{6}"
                                           maxlength="6" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-phone"></i>Communication</h6>
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label class="form-label">Telephone</label>
                                    <input type="tel" class="form-control" name="telephone" placeholder="Enter telephone number" />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Mobile</label>
                                    <input type="tel" class="form-control" name="mobile" placeholder="10 digits" pattern="[0-9]{10}"
                                           maxlength="10" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Email ID</label>
                                    <input type="email" class="form-control" name="email" placeholder="email@example.com" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-id-card"></i>Identity</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">PAN Number</label>
                                    <input type="text" class="form-control" name="pan" placeholder="ABCDE1234F"
                                           pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" maxlength="10" style="text-transform: uppercase" required />
                                    <small class="text-muted">Format: ABCDE1234F</small>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Aadhar Number</label>
                                    <input type="text" class="form-control" name="aadhar" placeholder="12 digits" pattern="[0-9]{12}"
                                           maxlength="12" required />
                                    <small class="text-muted">12 digit Aadhar number</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Step 3: Entity Details -->
                    <div class="form-step" data-step="3">
                        <div class="step-content">
                            <h3 class="step-title">Entity Details</h3>
                            <p class="step-description">Provide information about the business entity</p>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-building"></i>Entity Type</h6>
                            <div class="row g-3">
                                <div class="col-12">
                                    <label class="form-label required-field">Select Entity Type</label>
                                    <div class="row g-2">
                                        <div class="col-md-4 col-6">
                                            <input type="radio" class="btn-check" name="entityType" id="proprietorship"
                                                   value="Proprietorship" required>
                                            <label class="radio-card w-100" for="proprietorship">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-solid fa-user me-2"></i>
                                                    <span>Proprietorship</span>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-md-4 col-6">
                                            <input type="radio" class="btn-check" name="entityType" id="llp" value="LLP">
                                            <label class="radio-card w-100" for="llp">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-solid fa-users me-2"></i>
                                                    <span>LLP</span>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-md-4 col-6">
                                            <input type="radio" class="btn-check" name="entityType" id="pvtltd" value="Pvt. Ltd">
                                            <label class="radio-card w-100" for="pvtltd">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-solid fa-building me-2"></i>
                                                    <span>Pvt. Ltd</span>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-md-4 col-6">
                                            <input type="radio" class="btn-check" name="entityType" id="publicltd" value="Public Ltd">
                                            <label class="radio-card w-100" for="publicltd">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-solid fa-building-columns me-2"></i>
                                                    <span>Public Ltd</span>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="col-md-4 col-6">
                                            <input type="radio" class="btn-check" name="entityType" id="partnership" value="Partnership">
                                            <label class="radio-card w-100" for="partnership">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-solid fa-handshake me-2"></i>
                                                    <span>Partnership</span>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-briefcase"></i>Entity Identity</h6>
                            <div class="row g-3">
                                <div class="col-12">
                                    <label class="form-label required-field">Entity Name</label>
                                    <input type="text" class="form-control" name="entityName" placeholder="Enter entity name"
                                           required />
                                </div>

                                <div class="col-12">
                                    <label class="form-label required-field">Registered Office / Principal Place of Business</label>
                                    <textarea class="form-control" name="entityAddress" rows="3"
                                              placeholder="Enter registered office address" required></textarea>
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-home"></i>Business Premises</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">Premises Type</label>
                                    <div class="d-flex gap-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="premisesType" id="premisesRented"
                                                   value="Rented" required>
                                            <label class="form-check-label" for="premisesRented">Rented</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="premisesType" id="premisesOwned"
                                                   value="Owned">
                                            <label class="form-check-label" for="premisesOwned">Owned</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-industry"></i>Nature of Business</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">Business Type</label>
                                    <div class="d-flex gap-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="businessType" id="manufacturing"
                                                   value="Manufacturing" required>
                                            <label class="form-check-label" for="manufacturing">Manufacturing</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="businessType" id="services" value="Services">
                                            <label class="form-check-label" for="services">Services</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Step 4: Business & Registration -->
                    <div class="form-step" data-step="4">
                        <div class="step-content">
                            <h3 class="step-title">Business & Registration</h3>
                            <p class="step-description">Enter business registration and contact information</p>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-file-contract"></i>Registration Details</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">Date of Incorporation / Registration</label>
                                    <input type="date" class="form-control" name="registrationDate" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-map-marker-alt"></i>Contact & Location</h6>
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label class="form-label required-field">City</label>
                                    <input type="text" class="form-control" name="businessCity" placeholder="Enter city" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">State</label>
                                    <select class="form-select" name="businessState" required>
                                        <option value="">Select State</option>
                                        <option value="1">Andhra Pradesh</option>
                                        <option value="2">Arunachal Pradesh</option>
                                        <option value="3">Assam</option>
                                        <option value="4">Bihar</option>
                                        <option value="5">Chhattisgarh</option>
                                        <option value="6">Goa</option>
                                        <option value="7">Gujarat</option>
                                        <option value="8">Haryana</option>
                                        <option value="9">Himachal Pradesh</option>
                                        <option value="10">Jharkhand</option>
                                        <option value="11">Karnataka</option>
                                        <option value="12">Kerala</option>
                                        <option value="13">Madhya Pradesh</option>
                                        <option value="14">Maharashtra</option>
                                        <option value="15">Manipur</option>
                                        <option value="16">Meghalaya</option>
                                        <option value="17">Mizoram</option>
                                        <option value="18">Nagaland</option>
                                        <option value="19">Odisha</option>
                                        <option value="20">Punjab</option>
                                        <option value="21">Rajasthan</option>
                                        <option value="22">Sikkim</option>
                                        <option value="23">Tamil Nadu</option>
                                        <option value="24">Telangana</option>
                                        <option value="25">Tripura</option>
                                        <option value="26">Uttar Pradesh</option>
                                        <option value="27">Uttarakhand</option>
                                        <option value="28">West Bengal</option>
                                        <option value="29">Delhi</option>
                                        <option value="30">Puducherry</option>
                                    </select>
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Pincode</label>
                                    <input type="text" class="form-control" name="businessPincode" placeholder="6 digits"
                                           pattern="[0-9]{6}" maxlength="6" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-phone"></i>Communication</h6>
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label class="form-label">Telephone</label>
                                    <input type="tel" class="form-control" name="businessTelephone"
                                           placeholder="Enter telephone number" />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Mobile</label>
                                    <input type="tel" class="form-control" name="businessMobile" placeholder="10 digits"
                                           pattern="[0-9]{10}" maxlength="10" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">Email ID</label>
                                    <input type="email" class="form-control" name="businessEmail" placeholder="email@example.com"
                                           required />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Step 5: Statutory / Tax Identifiers -->
                    <div class="form-step" data-step="5">
                        <div class="step-content">
                            <h3 class="step-title">Statutory / Tax Identifiers</h3>
                            <p class="step-description">Provide GST and PAN details for the company</p>

                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">GST Number</label>
                                    <input type="text" class="form-control" name="gst" placeholder="22AAAAA0000A1Z5"
                                           pattern="[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}" maxlength="15"
                                           style="text-transform: uppercase" required />
                                    <small class="text-muted">Format: 22AAAAA0000A1Z5 (15 characters)</small>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Company PAN Number</label>
                                    <input type="text" class="form-control" name="companyPan" placeholder="ABCDE1234F"
                                           pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" maxlength="10" style="text-transform: uppercase" required />
                                    <small class="text-muted">Format: ABCDE1234F (10 characters)</small>
                                </div>
                            </div>

                            <div class="alert alert-info mt-4">
                                <i class="fa-solid fa-info-circle me-2"></i>
                                <strong>Note:</strong> Please ensure that the GST and PAN numbers are accurate and match the official
                                documents.
                            </div>
                        </div>
                    </div>

                    <!-- Step 6: Company Documents -->
                    <div class="form-step" data-step="6">
                        <div class="step-content">
                            <h3 class="step-title">Company Documents</h3>
                            <p class="step-description">Upload all required company documents</p>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-file-invoice"></i>Financial Documents</h6>
                            <div class="row g-3 mb-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">Current Year Turnover (Balance Sheet & P&L)</label>
                                    <input type="file" class="form-control" name="currentYearTurnover" accept=".pdf,.jpg,.jpeg,.png"
                                           required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Last Year Turnover (Balance Sheet & P&L)</label>
                                    <input type="file" class="form-control" name="lastYearTurnover" accept=".pdf,.jpg,.jpeg,.png"
                                           required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Bank Statements (Last 6 months)</label>
                                    <input type="file" class="form-control" name="bankStatements" accept=".pdf,.jpg,.jpeg,.png" multiple
                                           required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Second Bank Account Statement (if applicable)</label>
                                    <input type="file" class="form-control" name="secondBankAccount" accept=".pdf,.jpg,.jpeg,.png" />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">ITR (Latest two assessment years)</label>
                                    <input type="file" class="form-control" name="itr" accept=".pdf,.jpg,.jpeg,.png" multiple
                                           required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-certificate"></i>Registration & Compliance
                            </h6>
                            <div class="row g-3 mb-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">GST Registration Certificate</label>
                                    <input type="file" class="form-control" name="gstCertificate" accept=".pdf,.jpg,.jpeg,.png"
                                           required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Company PAN Card</label>
                                    <input type="file" class="form-control" name="panCard" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Address Proof (Utility bill or rent agreement)</label>
                                    <input type="file" class="form-control" name="addressProof" accept=".pdf,.jpg,.jpeg,.png"
                                           required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">TDS (Form 26AS / TDS certificate)</label>
                                    <input type="file" class="form-control" name="tds" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-file-alt"></i>Corporate Documents</h6>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label required-field">MOA & AOA (Memorandum and Articles of
                                        Association)</label>
                                    <input type="file" class="form-control" name="moaAoa" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label required-field">Directors (List of current directors)</label>
                                    <input type="file" class="form-control" name="directors" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">LLP Agreement and Registration Certificate (if applicable)</label>
                                    <input type="file" class="form-control" name="llpAgreement" accept=".pdf,.jpg,.jpeg,.png" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Step 7: Last 6 Months Filings -->
                    <div class="form-step" data-step="7">
                        <div class="step-content">
                            <h3 class="step-title">Last 6 Months Filings</h3>
                            <p class="step-description">Upload recent compliance filings (last 3 months for each category)</p>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-file-invoice-dollar"></i>GST Returns</h6>
                            <div class="row g-3 mb-3">
                                <div class="col-md-4">
                                    <label class="form-label required-field">GST Return - Month 1</label>
                                    <input type="file" class="form-control" name="gstReturn1" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">GST Return - Month 2</label>
                                    <input type="file" class="form-control" name="gstReturn2" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">GST Return - Month 3</label>
                                    <input type="file" class="form-control" name="gstReturn3" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-hospital"></i>ESIC Returns</h6>
                            <div class="row g-3 mb-3">
                                <div class="col-md-4">
                                    <label class="form-label required-field">ESIC Return - Month 1</label>
                                    <input type="file" class="form-control" name="esicReturn1" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">ESIC Return - Month 2</label>
                                    <input type="file" class="form-control" name="esicReturn2" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">ESIC Return - Month 3</label>
                                    <input type="file" class="form-control" name="esicReturn3" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>
                            </div>

                            <h6 class="form-section-title-wizard"><i class="fa-solid fa-money-check"></i>PF Challans</h6>
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label class="form-label required-field">PF Challan - Month 1</label>
                                    <input type="file" class="form-control" name="pfChallan1" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">PF Challan - Month 2</label>
                                    <input type="file" class="form-control" name="pfChallan2" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>

                                <div class="col-md-4">
                                    <label class="form-label required-field">PF Challan - Month 3</label>
                                    <input type="file" class="form-control" name="pfChallan3" accept=".pdf,.jpg,.jpeg,.png" required />
                                </div>
                            </div>

                            <div class="alert alert-success mt-4">
                                <i class="fa-solid fa-check-circle me-2"></i>
                                <strong>Almost Done!</strong> Review all information and click Submit to complete the contractor
                                onboarding process.
                            </div>
                        </div>
                    </div>

                    <!-- Wizard Footer -->
                    <div class="wizard-footer">
                        <button type="button" class="btn btn-wizard btn-wizard-secondary" id="prevBtn" style="display: none;">
                            <i class="fa-solid fa-arrow-left me-2"></i>Previous
                        </button>
                        <div class="ms-auto d-flex gap-2">
                            <button type="button" class="btn btn-wizard btn-wizard-secondary" id="saveDraftBtn">
                                <i class="fa-solid fa-save me-2"></i>Save Draft
                            </button>
                            <button type="button" class="btn btn-wizard btn-wizard-primary" id="nextBtn">
                                Next<i class="fa-solid fa-arrow-right ms-2"></i>
                            </button>
                            <button type="submit" class="btn btn-wizard btn-wizard-primary" id="submitBtn" style="display: none;">
                                <i class="fa-solid fa-check me-2"></i>Submit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Sidebar toggle
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

        // Fullscreen toggle
        const toggleFullscreen = document.getElementById('toggleFullscreen');
        if (toggleFullscreen) {
            toggleFullscreen.addEventListener('click', function (e) {
                e.preventDefault();
                if (!document.fullscreenElement) {
                    document.documentElement.requestFullscreen();
                } else {
                    document.exitFullscreen();
                }
            });
        }

        // Multi-step form logic
        let currentStep = 1;
        const totalSteps = 7;
        const formSteps = document.querySelectorAll('.form-step');
        const stepItems = document.querySelectorAll('.step-item');
        const progressLine = document.getElementById('progressLine');
        const prevBtn = document.getElementById('prevBtn');
        const nextBtn = document.getElementById('nextBtn');
        const submitBtn = document.getElementById('submitBtn');
        const saveDraftBtn = document.getElementById('saveDraftBtn');
        const form = document.getElementById('contractorForm');

        function updateProgressLine() {
            const progress = ((currentStep - 1) / (totalSteps - 1)) * 100;
            progressLine.style.width = progress + '%';
        }

        function showStep(step) {
            // Hide all steps
            formSteps.forEach(s => s.classList.remove('active'));
            stepItems.forEach(s => {
                s.classList.remove('active');
                s.classList.remove('completed');
            });

            // Show current step
            formSteps[step - 1].classList.add('active');
            stepItems[step - 1].classList.add('active');

            // Mark completed steps
            for (let i = 0; i < step - 1; i++) {
                stepItems[i].classList.add('completed');
                stepItems[i].querySelector('.step-circle').innerHTML = '<i class="fa-solid fa-check"></i>';
            }

            // Reset incomplete step numbers
            for (let i = step - 1; i < totalSteps; i++) {
                if (!stepItems[i].classList.contains('active')) {
                    stepItems[i].querySelector('.step-circle').textContent = i + 1;
                }
            }

            // Update buttons
            prevBtn.style.display = step === 1 ? 'none' : 'block';
            nextBtn.style.display = step === totalSteps ? 'none' : 'block';
            submitBtn.style.display = step === totalSteps ? 'block' : 'none';

            // Update progress line
            updateProgressLine();

            // Scroll to top
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        function validateStep(step) {
            const currentStepElement = formSteps[step - 1];
            const inputs = currentStepElement.querySelectorAll('input[required], select[required], textarea[required]');
            let isValid = true;

            inputs.forEach(input => {
                if (!input.checkValidity()) {
                    isValid = false;
                    input.classList.add('is-invalid');
                } else {
                    input.classList.remove('is-invalid');
                }
            });

            // if (!isValid) {
            //   alert('Please fill in all required fields correctly before proceeding.');
            // }

            return isValid;
        }

        nextBtn.addEventListener('click', function () {
            if (validateStep(currentStep)) {
                currentStep++;
                showStep(currentStep);
            }
        });

        prevBtn.addEventListener('click', function () {
            currentStep--;
            showStep(currentStep);
        });

        saveDraftBtn.addEventListener('click', function () {
            const formData = new FormData(form);
            const data = Object.fromEntries(formData.entries());
            localStorage.setItem('contractorDraft', JSON.stringify(data));
            alert('Draft saved successfully!');
        });

        form.addEventListener('submit', function (e) {
            e.preventDefault();

            if (!validateStep(currentStep)) {
                return;
            }

            const formData = new FormData(form);
            const data = Object.fromEntries(formData.entries());

            console.log('Form submitted:', data);

            // Show success message
            alert('Contractor added successfully! Redirecting to contractor list...');

            // Clear draft
            localStorage.removeItem('contractorDraft');

            // Redirect to contractor list
            setTimeout(() => {
                window.location.href = 'contractors.html';
            }, 1000);
        });

        // Load draft if exists
        const draft = localStorage.getItem('contractorDraft');
        if (draft) {
            const draftData = JSON.parse(draft);
            Object.keys(draftData).forEach(key => {
                const input = form.querySelector(`[name="${key}"]`);
                if (input) {
                    if (input.type === 'radio') {
                        const radio = form.querySelector(`[name="${key}"][value="${draftData[key]}"]`);
                        if (radio) radio.checked = true;
                    } else {
                        input.value = draftData[key];
                    }
                }
            });
        }

        // Initialize
        showStep(currentStep);

        // Real-time validation
        const allInputs = form.querySelectorAll('input, select, textarea');
        allInputs.forEach(input => {
            input.addEventListener('blur', function () {
                if (this.hasAttribute('required')) {
                    if (this.checkValidity()) {
                        this.classList.remove('is-invalid');
                        this.classList.add('is-valid');
                    } else {
                        this.classList.remove('is-valid');
                        this.classList.add('is-invalid');
                    }
                }
            });
        });

        // Step item click navigation
        stepItems.forEach((item, index) => {
            item.addEventListener('click', function () {
                const targetStep = index + 1;
                if (targetStep < currentStep || item.classList.contains('completed')) {
                    currentStep = targetStep;
                    showStep(currentStep);
                }
            });
        });
    });
</script>
</body>

</html>