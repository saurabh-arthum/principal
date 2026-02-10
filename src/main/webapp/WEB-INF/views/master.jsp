<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap Demo</title>
    <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/style.css" rel="stylesheet" />
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
                        <img src="/images/avatar.png" alt="User" />
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
        <!---
               INDEX CODE START END
               ---->

        <jsp:include page="${includeJsp}"></jsp:include>



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

<script src="/bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>

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