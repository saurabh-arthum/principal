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

            <!-- Dashboard -->
            <li class="nav-item">
                <a href="/web/factories/dashboard" class="nav-link active" title="Dashboard">
                    <span class="brand-icon"><i class="fa-solid fa-table-cells-large"></i></span>
                    <span>Dashboard</span>
                </a>
            </li>

            <!-- Roles & Rights -->
            <li class="nav-item">
                <a href="/web/rolePrivileges/role" class="nav-link" title="Roles & Rights">
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