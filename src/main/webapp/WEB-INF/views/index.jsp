<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap Demo</title>
    <link href="bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <!-- Google Fonts: Roboto -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- ApexCharts -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
</head>

<body>
<!-- Sidebar Overlay for mobile -->
<div class="sidebar-overlay" id="sidebarOverlay"></div>

<!-- Main wrapper -->
<div class="d-flex">
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
                <!-- <li class="nav-item">
                  <a href="#" class="nav-link" title="Settings">
                    <span class="brand-icon"><i class="fa-solid fa-gear"></i></span>
                    <span>Settings</span>
                  </a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#settingsSubmenu" role="button" aria-expanded="false"
                       aria-controls="settingsSubmenu" title="Settings">
                        <span class="brand-icon"><i class="fa-solid fa-gear"></i></span>
                        <span>Settings</span>
                        <span class="menu-arrow ms-auto"><i class="fa-solid fa-chevron-right" style="font-size: 10px"></i></span>
                    </a>
                    <div class="collapse" id="settingsSubmenu">
                        <ul class="submenu">
                            <li><a href="contractor-config.html" class="nav-link active">Contractor Configuration</a></li>
                            <li><a href="#" class="nav-link">System Settings</a></li>
                        </ul>
                    </div>
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
                    <input type="text" class="search-input" placeholder="Search in HRMS" />
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
                <a href="#" class="header-icon-btn" id="toggleFullscreen" title="Toggle Fullscreen">
                    <i class="fa-solid fa-expand"></i>
                </a>
                <div class="dropdown">
                    <a href="#" class="header-icon-btn" id="notifDropdown" data-bs-toggle="dropdown" aria-expanded="false"
                       title="Notifications">
                        <i class="fa-solid fa-bell"></i>
                        <span class="notification-badge"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="notifDropdown">
                        <div class="dropdown-header-custom d-flex justify-content-between">
                            <span>Notifications</span>
                            <a href="#" class="text-primary small text-decoration-none">Clear All</a>
                        </div>
                        <div class="notification-list">
                            <a href="#" class="notification-item">
                                <div class="notif-icon-circle bg-light-orange text-orange">
                                    <i class="fa-solid fa-user-plus"></i>
                                </div>
                                <div>
                                    <div class="small fw-bold">New Joinee Today</div>
                                    <div class="text-muted small">2 mins ago</div>
                                </div>
                            </a>
                            <a href="#" class="notification-item">
                                <div class="notif-icon-circle bg-light-orange text-orange">
                                    <i class="fa-solid fa-user-plus"></i>
                                </div>
                                <div>
                                    <div class="small fw-bold">User Creation</div>
                                    <div class="text-muted small">2 mins ago</div>
                                </div>
                            </a>
                            <!-- <a href="#" class="notification-item">
                                <div class="notif-icon-circle bg-light-blue text-primary">
                                  <i class="fa-solid fa-calendar-check"></i>
                                </div>
                                <div>
                                  <div class="small fw-bold">Account Unlock</div>
                                  <div class="text-muted small">1 hour ago</div>
                                </div>
                              </a> -->
                        </div>
                        <div class="p-2 text-center border-top">
                            <a href="#" class="small text-decoration-none">View All</a>
                        </div>
                    </div>
                </div>
                <a href="#" class="header-icon-btn">
                    <i class="fa-solid fa-envelope"></i>
                </a>
                <div class="dropdown">
                    <div class="user-avatar" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <!-- Local dynamic avatar image -->
                        <img src="images/avatar.png" alt="User" />
                        <div class="online-status"></div>
                    </div>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                        <li>
                            <div class="dropdown-header">
                                <strong>John Doe</strong><br /><small class="text-muted">Administrator</small>
                            </div>
                        </li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="fa-solid fa-user me-2"></i> My Profile</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="fa-solid fa-gear me-2"></i> Settings</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li>
                            <a class="dropdown-item text-danger" href="#"><i class="fa-solid fa-right-from-bracket me-2"></i>
                                Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="dashboard-content">
            <!-- Page Header / Breadcrumbs -->
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <h3 class="fw-bold mb-0" style="font-size: 20px">
                        Admin Dashboard
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0" style="font-size: 11px">
                            <li class="breadcrumb-item">
                                <a href="#" class="text-decoration-none text-muted"><i class="fa-solid fa-house me-1"></i>
                                    Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Admin Dashboard
                            </li>
                        </ol>
                    </nav>
                </div>
                <div class="d-flex gap-2">
                    <div class="dropdown">
                        <button class="btn btn-white btn-sm border shadow-sm dropdown-toggle" type="button"
                                data-bs-toggle="dropdown">
                            <i class="fa-solid fa-file-export me-1"></i> Export
                        </button>
                    </div>
                    <button class="btn btn-white btn-sm border shadow-sm">
                        <i class="fa-solid fa-calendar-days me-1"></i> 2026
                    </button>
                    <button class="btn btn-white btn-sm border shadow-sm">
                        <i class="fa-solid fa-filter"></i>
                    </button>
                </div>
            </div>

            <!-- Welcome Card -->
            <div class="welcome-card d-flex align-items-center justify-content-between flex-wrap py-3 px-4 mb-4">
                <div class="d-flex align-items-center mb-2 mb-md-0">
                    <img src="images/avatar.png" class="welcome-avatar me-3" style="width: 50px; height: 50px" alt="Adrian" />
                    <div>
                        <h5 class="mb-1 fw-bold">
                            Welcome Back, Prakash
                            <!-- <i
                                class="fa-solid fa-pen-to-square text-muted ms-1"
                                style="font-size: 14px; cursor: pointer"></i> -->
                        </h5>
                        <!-- <p class="text-muted mb-0" style="font-size: 13px">
                            You have <span class="text-orange fw-bold">21</span> Pending
                            Approvals & <span class="text-orange fw-bold">14</span> Leave
                            Requests
                          </p> -->
                    </div>
                </div>
                <div class="d-flex gap-2">
                    <button class="btn btn-primary btn-sm px-3 rounded-2 border-0" style="background-color: #345a6c">
                        <i class="fa-solid fa-circle-plus me-1"></i> Add Contractor
                    </button>
                    <button class="btn btn-orange btn-sm px-3 rounded-2 text-white border-0" style="background-color: #e4520d">
                        <i class="fa-solid fa-circle-plus me-1"></i> Add Factory
                    </button>
                </div>
            </div>

            <!-- Statistics & Chart Row -->
            <div class="row g-3 pb-2">
                <div class="col-lg-12">
                    <div class="row g-3">
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-orange mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-calendar-check"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Joiners Pending
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        10
                                    </div>
                                    <!-- <span
                                        class="stat-change change-up small fw-bold"
                                        style="font-size: 10px"
                                        >+2.1%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View Details</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-navy mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-diagram-project"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Salary Processing Pending
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        6
                                    </div>
                                    <!-- <span
                                        class="stat-change change-down small fw-bold"
                                        style="font-size: 10px"
                                        >-2.1%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-blue mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-people-group"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    PF /ESIC Pending
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        10
                                    </div>
                                    <!-- <span
                                        class="stat-change change-down small fw-bold"
                                        style="font-size: 10px"
                                        >-11.2%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-red mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-file-lines"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Attendance Device Sync Issues
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        1
                                    </div>
                                    <!-- <span
                                        class="stat-change change-up small fw-bold"
                                        style="font-size: 10px"
                                        >+11.2%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <!-- Row 2 -->
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-purple mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-vault"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Compliance Due
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        4
                                    </div>
                                    <!-- <span
                                        class="stat-change change-up small fw-bold"
                                        style="font-size: 10px"
                                        >+10.2%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-red mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-hand-holding-dollar"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Error in Payroll
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        3
                                    </div>
                                    <!-- <span
                                        class="stat-change change-up small fw-bold"
                                        style="font-size: 10px"
                                        >+2.1%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-green mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-user-plus"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Contract Expiring
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        2
                                    </div>
                                    <!-- <span
                                        class="stat-change change-up small fw-bold"
                                        style="font-size: 10px"
                                        >+2.1%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="stat-card compact">
                                <div class="stat-icon bg-soft-navy mb-2" style="width: 35px; height: 35px">
                                    <i class="fa-solid fa-id-card-clip"></i>
                                </div>
                                <div class="stat-title text-muted" style="font-size: 11px">
                                    Document Pending
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="stat-value mb-0" style="font-size: 16px">
                                        2
                                    </div>
                                    <!-- <span
                                        class="stat-change change-down small fw-bold"
                                        style="font-size: 10px"
                                        >-11.2%</span
                                      > -->
                                </div>
                                <a href="#" class="stat-link mt-1 text-muted">View All</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-lg-3"></div> -->
            </div>

            <!-- Bottom Detailed Cards Row -->
            <div class="row g-3">
                <!-- Employee Status Card -->
                <div class="col-lg-4">
                    <div class="dashboard-card detailed-card p-0">
                        <div class="card-header-new">
                            <h5 class="card-title-new mb-0">Employee Status</h5>
                            <button class="btn btn-outline-secondary btn-xs dropdown-toggle" style="
                      font-size: 10px;
                      padding: 2px 8px;
                      border-radius: 4px;
                    ">
                                <i class="fa-solid fa-calendar-week me-1"></i> This Week
                            </button>
                        </div>
                        <div class="card-body-new p-3">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <span class="text-muted" style="font-size: 11px">Total Employee</span>
                                <span class="fw-bold h5 mb-0" style="font-size: 18px">154</span>
                            </div>
                            <div class="status-progress-container mb-4" style="height: 15px">
                                <div class="progress-segment" style="width: 48%; background-color: #ffc107"></div>
                                <div class="progress-segment" style="width: 20%; background-color: #4a7c82"></div>
                                <div class="progress-segment" style="width: 22%; background-color: #e62e2e"></div>
                                <div class="progress-segment" style="width: 10%; background-color: #ff3399"></div>
                            </div>

                            <div class="row g-0 border-top border-start">
                                <div class="col-6 p-3 border-bottom border-end">
                                    <div class="small text-muted d-flex align-items-center mb-1" style="font-size: 11px">
                                        <span class="dot me-2" style="background: #ffc107"></span>
                                        Active <span class="ms-1">(48%)</span>
                                    </div>
                                    <div class="fw-bold h4 mb-0">112</div>
                                </div>
                                <div class="col-6 p-3 border-bottom border-end">
                                    <div class="small text-muted d-flex align-items-center mb-1" style="font-size: 11px">
                                        <span class="dot me-2" style="background: #4a7c82"></span>
                                        FNF <span class="ms-1">(20%)</span>
                                    </div>
                                    <div class="fw-bold h4 mb-0">112</div>
                                </div>
                                <div class="col-6 p-3 border-bottom border-end text-danger">
                                    <div class="small d-flex align-items-center mb-1" style="font-size: 11px">
                                        <span class="dot me-2" style="background: #e62e2e"></span>
                                        Inactive <span class="ms-1">(22%)</span>
                                    </div>
                                    <div class="fw-bold h4 mb-0">12</div>
                                </div>
                                <div class="col-6 p-3 border-bottom border-end" style="color: #2b3a67">
                                    <div class="small d-flex align-items-center mb-1" style="font-size: 11px">
                                        <span class="dot me-2" style="background: #ff3399"></span>
                                        Quit <span class="ms-1">(20%)</span>
                                    </div>
                                    <div class="fw-bold h4 mb-0">04</div>
                                </div>
                            </div>

                            <!-- <div class="mt-4">
                                <div
                                  class="text-muted mb-2 fw-bold"
                                  style="font-size: 12px">
                                  Top Performer
                                </div>
                                <div
                                  class="performer-card d-flex align-items-center p-3"
                                  style="
                                    background: #fff5ee;
                                    border: 1px solid #ffdec2;
                                    border-radius: 8px;
                                  ">
                                  <div
                                    class="performer-badge me-2"
                                    style="
                                      background: #ff9b44;
                                      color: #fff;
                                      width: 24px;
                                      height: 24px;
                                      border-radius: 50%;
                                      display: flex;
                                      align-items: center;
                                      justify-content: center;
                                      font-size: 12px;
                                    ">
                                    <i class="fa-solid fa-medal"></i>
                                  </div>
                                  <img
                                    src="images/avatar.png"
                                    class="rounded-circle me-3"
                                    style="width: 32px; height: 32px; object-fit: cover"
                                    alt="" />
                                  <div class="flex-grow-1">
                                    <div class="fw-bold" style="font-size: 12px">
                                      Daniel Esbella
                                    </div>
                                    <div class="text-muted" style="font-size: 10px">
                                      iOS Developer
                                    </div>
                                  </div>
                                  <div class="text-end">
                                    <div class="text-muted" style="font-size: 10px">
                                      Performance
                                    </div>
                                    <div
                                      class="text-orange fw-bold"
                                      style="font-size: 14px">
                                      99%
                                    </div>
                                  </div>
                                </div>
                              </div> -->

                            <button class="btn btn-light w-100 mt-4 text-primary fw-bold py-2" style="
                      font-size: 12px;
                      border: 1px solid #eee;
                      background: #fff;
                    ">
                                View All Employees
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Attendance Overview Card -->
                <div class="col-lg-4">
                    <div class="dashboard-card detailed-card p-0 h-100">
                        <div class="card-header-new">
                            <h5 class="card-title-new mb-0">Attendance Overview</h5>
                            <button class="btn btn-outline-secondary btn-xs dropdown-toggle" style="
                      font-size: 10px;
                      padding: 2px 8px;
                      border-radius: 4px;
                    ">
                                <i class="fa-solid fa-calendar-day me-1"></i> Today
                            </button>
                        </div>
                        <div class="card-body-new p-4 text-center">
                            <div id="attendanceChart" style="min-height: 250px"></div>

                            <!-- <div class="text-start mt-4">
                                <div
                                  class="text-muted mb-3 fw-bold"
                                  style="font-size: 12px">
                                  Status
                                </div>
                                <ul class="list-unstyled mb-0">
                                  <li
                                    class="d-flex justify-content-between align-items-center mb-2">
                                    <div
                                      class="d-flex align-items-center"
                                      style="font-size: 13px">
                                      <span
                                        class="dot me-2"
                                        style="background: #2ecc71"></span>
                                      Present
                                    </div>
                                    <span class="fw-bold" style="font-size: 13px">59%</span>
                                  </li>
                                  <li
                                    class="d-flex justify-content-between align-items-center mb-2">
                                    <div
                                      class="d-flex align-items-center"
                                      style="font-size: 13px">
                                      <span
                                        class="dot me-2"
                                        style="background: #4a7c82"></span>
                                      Late
                                    </div>
                                    <span class="fw-bold" style="font-size: 13px">21%</span>
                                  </li>
                                  <li
                                    class="d-flex justify-content-between align-items-center mb-2">
                                    <div
                                      class="d-flex align-items-center"
                                      style="font-size: 13px">
                                      <span
                                        class="dot me-2"
                                        style="background: #ffc107"></span>
                                      Permission
                                    </div>
                                    <span class="fw-bold" style="font-size: 13px">2%</span>
                                  </li>
                                  <li
                                    class="d-flex justify-content-between align-items-center mb-2">
                                    <div
                                      class="d-flex align-items-center"
                                      style="font-size: 13px">
                                      <span
                                        class="dot me-2"
                                        style="background: #e62e2e"></span>
                                      Absent
                                    </div>
                                    <span class="fw-bold" style="font-size: 13px">15%</span>
                                  </li>
                                </ul>
                              </div> -->
                            <button class="btn btn-light w-100 mt-4 text-orange fw-bold py-2" style="
                      font-size: 12px;
                      border: 1px solid #eee;
                      background: #fff;
                    ">
                                View Details
                            </button>
                            <!-- <div
                                class="d-flex justify-content-between align-items-center mt-5 p-3"
                                style="
                                  background: #fdfdfd;
                                  border: 1px solid #f1f1f1;
                                  border-radius: 8px;
                                "> -->
                            <!-- <div class="d-flex align-items-center">
                                  <span
                                    class="text-muted small me-3"
                                    style="font-size: 11px"
                                    >Total Absentees</span
                                  > -->
                            <!-- <div class="avatar-group">
                                    <img
                                      src="https://i.pravatar.cc/150?img=1"
                                      alt=""
                                      class="avatar-xs rounded-circle border border-white" />
                                    <img
                                      src="https://i.pravatar.cc/150?img=2"
                                      alt=""
                                      class="avatar-xs rounded-circle border border-white" />
                                    <img
                                      src="https://i.pravatar.cc/150?img=3"
                                      alt=""
                                      class="avatar-xs rounded-circle border border-white" />
                                    <span
                                      class="avatar-xs rounded-circle bg-orange text-white border border-white d-flex align-items-center justify-content-center"
                                      style="font-size: 8px; background-color: #e4520d"
                                      >+1</span
                                    >
                                  </div> -->
                            <!-- </div> -->
                            <!-- <a
                                  href="#"
                                  class="text-orange text-decoration-none small fw-bold"
                                  style="font-size: 11px"
                                  >View Details</a
                                > -->
                            <!-- </div> -->
                        </div>
                    </div>
                </div>

                <!-- Clock-In/Out Card -->
                <div class="col-lg-4">
                    <!-- <div class="dashboard-card detailed-card p-0">
                        <div class="card-header-new">
                          <h5 class="card-title-new mb-0">Clock-In/Out</h5>
                          <div class="d-flex gap-2">
                            <button
                              class="btn btn-outline-secondary btn-xs dropdown-toggle"
                              style="
                                font-size: 10px;
                                padding: 2px 8px;
                                border-radius: 4px;
                              ">
                              All Departments
                            </button>
                            <button
                              class="btn btn-outline-secondary btn-xs dropdown-toggle"
                              style="
                                font-size: 10px;
                                padding: 2px 8px;
                                border-radius: 4px;
                              ">
                              <i class="fa-solid fa-calendar-day me-1"></i> Today
                            </button>
                          </div>
                        </div>
                        <div class="card-body-new p-0">

                          <div class="clock-item p-3 border-bottom">
                            <div class="d-flex align-items-center">
                              <img
                                src="https://i.pravatar.cc/150?img=4"
                                class="rounded-circle me-3"
                                style="
                                  width: 38px;
                                  height: 38px;
                                  border: 2px solid #eee;
                                "
                                alt="" />
                              <div class="flex-grow-1">
                                <div class="fw-bold" style="font-size: 13px">
                                  Daniel Esbella
                                </div>
                                <div class="text-muted" style="font-size: 11px">
                                  UI/UX Designer
                                </div>
                              </div>
                              <div class="text-end">
                                <div
                                  class="badge-time bg-success-light text-success d-flex align-items-center px-2 py-1 rounded">
                                  <i
                                    class="fa-regular fa-clock me-1"
                                    style="font-size: 10px"></i>
                                  09:15
                                </div>
                              </div>
                            </div>
                          </div>

                          <div class="clock-item p-3 border-bottom">
                            <div class="d-flex align-items-center">
                              <img
                                src="https://i.pravatar.cc/150?img=5"
                                class="rounded-circle me-3"
                                style="
                                  width: 38px;
                                  height: 38px;
                                  border: 2px solid #eee;
                                "
                                alt="" />
                              <div class="flex-grow-1">
                                <div class="fw-bold" style="font-size: 13px">
                                  Doglas Martini
                                </div>
                                <div class="text-muted" style="font-size: 11px">
                                  Project Manager
                                </div>
                              </div>
                              <div class="text-end">
                                <div
                                  class="badge-time bg-success-light text-success d-flex align-items-center px-2 py-1 rounded">
                                  <i
                                    class="fa-regular fa-clock me-1"
                                    style="font-size: 10px"></i>
                                  09:36
                                </div>
                              </div>
                            </div>
                          </div>

                          <div
                            class="clock-item p-3 border-bottom shadow-sm mx-2 my-2 rounded-3 border-1 border shadow-none"
                            style="background-color: #fbfbfb">
                            <div class="d-flex align-items-center mb-3">
                              <img
                                src="https://i.pravatar.cc/150?img=6"
                                class="rounded-circle me-3"
                                style="
                                  width: 38px;
                                  height: 38px;
                                  border: 2px solid #3498db;
                                "
                                alt="" />
                              <div class="flex-grow-1">
                                <div class="fw-bold" style="font-size: 13px">
                                  Brian Villalobos
                                </div>
                                <div class="text-muted" style="font-size: 11px">
                                  PHP Developer
                                </div>
                              </div>
                              <div class="text-end">
                                <div
                                  class="badge-time bg-success-light text-success d-flex align-items-center px-2 py-1 rounded">
                                  <i
                                    class="fa-regular fa-clock me-1"
                                    style="font-size: 10px"></i>
                                  09:15
                                </div>
                              </div>
                            </div>
                            <div class="row g-0 text-center border-top pt-3">
                              <div class="col-4 border-end">
                                <div class="text-muted mb-1" style="font-size: 9px">
                                  <span
                                    class="dot me-1"
                                    style="background: #2ecc71"></span>
                                  Clock in
                                </div>
                                <div class="fw-bold" style="font-size: 11px">
                                  10:30 AM
                                </div>
                              </div>
                              <div class="col-4 border-end">
                                <div class="text-muted mb-1" style="font-size: 9px">
                                  <span
                                    class="dot me-1"
                                    style="background: #e62e2e"></span>
                                  Clock Out
                                </div>
                                <div class="fw-bold" style="font-size: 11px">
                                  09:45 AM
                                </div>
                              </div>
                              <div class="col-4">
                                <div class="text-muted mb-1" style="font-size: 9px">
                                  <span
                                    class="dot me-1"
                                    style="background: #ffc107"></span>
                                  Production
                                </div>
                                <div class="fw-bold" style="font-size: 11px">
                                  09:21 Hrs
                                </div>
                              </div>
                            </div>
                          </div>

                          <div class="p-3">
                            <div
                              class="text-muted mb-3 fw-bold"
                              style="font-size: 12px">
                              Late
                            </div>
                            <div class="clock-item p-2 rounded-3 border mb-3">
                              <div class="d-flex align-items-center">
                                <img
                                  src="https://i.pravatar.cc/150?img=8"
                                  class="rounded-circle me-3"
                                  style="
                                    width: 38px;
                                    height: 38px;
                                    border: 2px solid #eee;
                                  "
                                  alt="" />
                                <div class="flex-grow-1">
                                  <div class="fw-bold" style="font-size: 13px">
                                    Anthony Lewis
                                    <span
                                      class="badge bg-success-light text-success rounded-pill ms-2"
                                      style="font-size: 9px"
                                      ><i class="fa-regular fa-clock me-1"></i> 30
                                      Min</span
                                    >
                                  </div>
                                  <div class="text-muted" style="font-size: 11px">
                                    Marketing Head
                                  </div>
                                </div>
                                <div class="text-end">
                                  <div
                                    class="badge-time bg-danger text-white d-flex align-items-center px-2 py-1 rounded">
                                    <i
                                      class="fa-regular fa-clock me-1"
                                      style="font-size: 10px"></i>
                                    08:35
                                  </div>
                                </div>
                              </div>
                            </div>
                            <button
                              class="btn btn-light w-100 text-primary fw-bold py-2"
                              style="
                                font-size: 12px;
                                border: 1px solid #eee;
                                background: #fff;
                              ">
                              View All Attendance
                            </button>
                          </div>
                        </div>
                      </div> -->
                    <div class="dashboard-card compact-card h-100 mb-0">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <div class="card-title-custom mb-0" style="font-size: 14px">
                                Employees By Department
                            </div>
                            <button class="btn btn-outline-secondary p-1 px-3 d-flex align-items-center"
                                    style="font-size: 10px; border-radius: 5px">
                                <i class="fa-solid fa-calendar-week me-1"></i> This Week
                            </button>
                        </div>
                        <div id="deptChart" style="min-height: 200px"></div>
                        <div class="mt-3 small text-muted d-flex align-items-start" style="font-size: 11px">
                <span class="legend-dot bg-soft-orange me-2 mt-1"
                      style="width: 6px; height: 6px; flex-shrink: 0"></span>
                            <div>
                                No of Employees increased by
                                <span class="text-green fw-bold">+20%</span> from last Week
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- starting new -->
            <div class="row g-4 pt-3">
                <!-- PROJECTS TABLE -->
                <div class="col-xxl-8 col-xl-7">
                    <div class="card dashboard-card projects-card">
                        <!-- Header -->
                        <div class="card-header">
                            <h5>Factory & Contractor KPIs</h5>

                            <div class="dropdown">
                                <button class="btn btn-white btn-sm dropdown-toggle" data-bs-toggle="dropdown">
                                    <i class="ti ti-calendar me-1"></i> September
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li><a class="dropdown-item" href="#">This Month</a></li>
                                    <li><a class="dropdown-item" href="#">This Week</a></li>
                                    <li><a class="dropdown-item" href="#">Today</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Body -->
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table projects-table mb-0">
                                    <thead>
                                    <tr>
                                        <th>Factory</th>
                                        <th>Contractor</th>
                                        <th>Headcount</th>
                                        <th>Present</th>
                                        <th>Absent</th>
                                        <th>Payroll</th>
                                        <th>Compliance</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <!-- Row -->
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-high"><i class="fa-solid fa-x"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    <!-- Row -->
                                    <tr>
                                        <td>Factory 1</td>

                                        <td>
                                            <a href="#" class="project-link">Contractor 1</a>
                                        </td>

                                        <td>
                                            <!-- <div class="avatar-group">
                                                <img class="avatar-xs" src="avatar-02.jpg" />
                                                <img class="avatar-xs" src="avatar-03.jpg" />
                                                <img class="avatar-xs" src="avatar-05.jpg" />
                                              </div> -->
                                            400
                                        </td>

                                        <td>
                                            <!-- <small>15 / 255 hrs</small>
                                              <div class="projects-progress mt-1">
                                                <span style="width: 40%"></span>
                                              </div> -->
                                            290
                                        </td>
                                        <td><span class="priority-high">50</span></td>
                                        <td>
                                            <span class="priority-medium"><i class="fa-solid fa-circle-exclamation"></i></span>
                                        </td>

                                        <td>
                                            <span class="priority-low"><i class="fa-solid fa-check"></i></span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- EMPLOYEES -->
                <div class="col-xxl-4 col-xl-6">
                    <div class="card dashboard-card employees-card">
                        <!-- Header -->
                        <div class="card-header">
                            <h5>Supervisor</h5>

                            <a href="#" class="btn btn-white btn-sm"> View All </a>
                        </div>

                        <!-- Body -->
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table employees-table mb-0">
                                    <tbody>
                                    <!-- Employee -->
                                    <tr>
                                        <td>
                                            <div class="employee-info">
                                                <img src="images/avatar.png" class="avatar-xs rounded-circle" />
                                                <div>
                                                    <h6>Anthony Lewis</h6>
                                                    <small>9876543210</small>
                                                </div>
                                            </div>
                                        </td>

                                        <td class="text-end">
                                            <span class="soft-badge soft-secondary">XYZ Contractor</span>
                                        </td>
                                    </tr>

                                    <!-- Employee -->
                                    <tr>
                                        <td>
                                            <div class="employee-info">
                                                <img src="images/avatar.png" class="avatar-xs rounded-circle" />
                                                <div>
                                                    <h6>Brian Villalobos</h6>
                                                    <small>9876543210</small>
                                                </div>
                                            </div>
                                        </td>

                                        <!-- <td class="text-end">
                                            <span class="soft-badge soft-danger"
                                              >XYZ Contractor</span
                                            >
                                          </td> -->
                                        <td class="text-end">
                                            <span class="soft-badge soft-secondary">XYZ Contractor</span>
                                        </td>
                                    </tr>

                                    <!-- Employee -->
                                    <tr>
                                        <td>
                                            <div class="employee-info">
                                                <img src="images/avatar.png" class="avatar-xs rounded-circle" />
                                                <div>
                                                    <h6>Stephan Peralt</h6>
                                                    <small>9876543210</small>
                                                </div>
                                            </div>
                                        </td>

                                        <!-- <td class="text-end">
                                            <span class="soft-badge soft-info"
                                              >XYZ Contractor</span
                                            >
                                          </td> -->
                                        <td class="text-end">
                                            <span class="soft-badge soft-secondary">XYZ Contractor</span>
                                        </td>
                                    </tr>

                                    <!-- Employee -->
                                    <tr>
                                        <td>
                                            <div class="employee-info">
                                                <img src="images/avatar.png" class="avatar-xs rounded-circle" />
                                                <div>
                                                    <h6>Doglas Martini</h6>
                                                    <small>9876543210</small>
                                                </div>
                                            </div>
                                        </td>
                                        <!--
                                          <td class="text-end">
                                            <span class="soft-badge soft-purple"
                                              >XYZ Contractor</span
                                            >
                                          </td> -->
                                        <td class="text-end">
                                            <span class="soft-badge soft-secondary">XYZ Contractor</span>
                                        </td>
                                    </tr>

                                    <!-- Employee -->
                                    <tr>
                                        <td>
                                            <div class="employee-info">
                                                <img src="images/avatar.png" class="avatar-xs rounded-circle" />
                                                <div>
                                                    <h6>Anthony Lewis</h6>
                                                    <small>9876543210</small>
                                                </div>
                                            </div>
                                        </td>

                                        <!-- <td class="text-end">
                                            <span class="soft-badge soft-pink"
                                              >XYZ Contractor</span
                                            >
                                          </td> -->
                                        <td class="text-end">
                                            <span class="soft-badge soft-secondary">XYZ Contractor</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- FOOTER -->
        <div class="footer d-sm-flex align-items-center justify-content-between border-top bg-white p-3">
            <p class="mb-0">2026 © ARTHUM</p>
            <p>
                Designed &amp; Developed By
                <a class="text-primary" href="index.html" data-discover="true">Arthum</a>
            </p>
        </div>
    </div>
</div>

<script src="bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>

<!-- Sidebar Toggle Script -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
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

        // Fullscreen Functionality
        const fullscreenBtn = document.getElementById('toggleFullscreen');
        fullscreenBtn.addEventListener('click', function (e) {
            e.preventDefault();
            if (!document.fullscreenElement) {
                document.documentElement.requestFullscreen().catch((err) => {
                    console.error(
                        `Error attempting to enable full-screen mode: ${err.message} (${err.name})`,
                    );
                });
            } else {
                document.exitFullscreen();
            }
        });

        // Auto-focus search shortcut
        document.addEventListener('keydown', function (e) {
            if ((e.ctrlKey || e.metaKey) && e.key === '/') {
                e.preventDefault();
                document.querySelector('.search-input').focus();
            }
        });

        // Dynamic Active State for Sidebar
        const allNavLinks = document.querySelectorAll('.sidebar .nav-link');
        allNavLinks.forEach((link) => {
            link.addEventListener('click', function () {
                // Don't change active if it's a collapse toggle (unless it's a submenu item)
                if (
                    this.getAttribute('data-bs-toggle') === 'collapse' &&
                    !this.closest('.submenu')
                ) {
                    return;
                }

                allNavLinks.forEach((l) => l.classList.remove('active'));
                this.classList.add('active');
            });
        });

        // ApexCharts - Department Bar Chart
        var deptOptions = {
            series: [
                {
                    data: [45, 80, 52, 38, 65, 48],
                    name: 'Employees',
                },
            ],
            chart: {
                type: 'bar',
                height: 280,
                toolbar: { show: false },
            },
            plotOptions: {
                bar: {
                    borderRadius: 6,
                    horizontal: true,
                    barHeight: '40%',
                },
            },
            dataLabels: {
                enabled: true,
                textAnchor: 'start',
                style: { colors: ['#fff'] },
                formatter: function (val, opt) {
                    return opt.w.globals.labels[opt.dataPointIndex] + ':  ' + val;
                },
                offsetX: 0,
            },
            colors: ['#E4520D'],
            xaxis: {
                categories: [
                    'UI/UX',
                    'Development',
                    'Management',
                    'HR',
                    'Testing',
                    'Marketing',
                ],
                labels: { show: false },
                axisBorder: { show: false },
                axisTicks: { show: false },
            },
            grid: {
                xaxis: { lines: { show: false } },
                yaxis: { lines: { show: false } },
            },
        };
        var deptChart = new ApexCharts(
            document.querySelector('#deptChart'),
            deptOptions,
        );
        deptChart.render();

        // ApexCharts - Attendance Semi-Circle Gauge
        var attendanceOptions = {
            series: [70, 15, 10, 5],
            chart: {
                type: 'donut',
                height: 220,
                sparkline: { enabled: true },
            },
            labels: ['Present', 'Late', 'Absent', 'On Leave'],
            colors: ['#2ecc71', '#4a7c82', '#ffc107', '#e62e2e'],
            plotOptions: {
                pie: {
                    startAngle: -90,
                    endAngle: 90,
                    offsetY: 10,
                    donut: {
                        size: '80%',
                        labels: {
                            show: true,
                            name: { show: false },
                            value: {
                                show: true,
                                fontSize: '22px',
                                fontWeight: 'bold',
                                offsetY: -10,
                                formatter: function (val) {
                                    return '120';
                                },
                            },
                            total: {
                                show: true,
                                label: 'Total Attendance',
                                formatter: function (w) {
                                    return '120';
                                },
                            },
                        },
                    },
                },
            },
            legend: { show: false },
            dataLabels: { enabled: false },
        };
        var attendanceChart = new ApexCharts(
            document.querySelector('#attendanceChart'),
            attendanceOptions,
        );
        attendanceChart.render();
    });
</script>

<!-- Module Content Manager -->
<!-- <script src="modules.js"></script> -->
</body>

</html>