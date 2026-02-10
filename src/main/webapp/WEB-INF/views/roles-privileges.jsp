<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Roles & Privileges - SmartHR</title>
    <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .role-card {
            cursor: pointer;
            transition: all 0.3s;
            border: 1px solid #eee;
            border-radius: 12px;
        }

        .role-card:hover,
        .role-card.active {
            border-color: #e4520d;
            background: rgba(228, 82, 13, 0.05);
            box-shadow: 0 4px 15px rgba(228, 82, 13, 0.1);
        }

        .permission-matrix {
            min-width: 700px;
        }

        .permission-matrix thead th {
            background: #f8f9fa;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #6c757d;
            padding: 12px;
        }

        .permission-matrix th,
        .permission-matrix td {
            display: table-cell !important;
            padding: 15px 12px;
            border-bottom: 1px solid #f1f1f1;
        }

        .module-name {
            font-weight: 600;
            color: #2b3a67;
            font-size: 13px;
        }

        .form-check-input:checked {
            background-color: #e4520d;
            border-color: #e4520d;
        }

        .custom-switch {
            padding-left: 2.5em;
        }

        .sub-module {
            padding-left: 30px !important;
            font-style: italic;
            color: #666;
        }

        .module-header td {
            background-color: #fff !important;
            font-weight: bold;
        }

        .sub-module-row td {
            background-color: #f8f9fa !important;
        }

        .nested-report-row td {
            background-color: #f1f3f5 !important;
        }

        .btn-create-role-sidebar {
            width: 100%;
            padding: 12px;
            border: 1px solid #e4520d;
            background: transparent;
            color: #e4520d;
            border-radius: 12px;
            font-weight: 700;
            font-size: 13px;
            transition: all 0.3s;
            margin-top: 10px;
        }

        .btn-create-role-sidebar:hover {
            background: #e4520d;
            color: #fff;
            box-shadow: 0 4px 12px rgba(228, 82, 13, 0.2);
        }

        /* Modal polish from user-management */
        .modal-content {
            border: none;
            border-radius: 16px;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.15);
            overflow: hidden;
        }

        .modal-backdrop.show {
            background-color: rgba(20, 20, 20, 0.55);
        }

        .modal-accent-bar {
            height: 5px;
            background: linear-gradient(90deg, #e4520d, #ff9b44);
        }

        .modal-header {
            padding: 14px 20px;
            border-bottom: 1px solid #f1f1f1;
            background: #fff;
        }

        .modal-title {
            font-size: 14px;
            font-weight: 700;
            color: #2b3a67;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .modal-title i {
            width: 34px;
            height: 34px;
            border-radius: 10px;
            background: rgba(228, 82, 13, 0.12);
            color: #e4520d;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-header .btn-close {
            opacity: 1;
            background: none;
            width: auto;
            height: auto;
            transition: 0.2s ease;
        }

        .modal-header .btn-close:hover {
            color: #e4520d;
            transform: scale(1.2);
        }

        .modal-header .btn-close:focus {
            box-shadow: none;
        }

        .modal-footer {
            padding: 15px 20px;
            border-top: 1px solid #f1f1f1;
            background: #fafafa;
        }

        .btn-primary-custom {
            background: #e4520d;
            color: #fff;
            border: none;
            padding: 8px 18px;
            border-radius: 6px;
            font-weight: 600;
            transition: all 0.2s;
        }

        .btn-primary-custom:hover {
            background: #cc480c;
            color: #fff;
        }
    </style>
</head>

<body>
<div class="sidebar-overlay" id="sidebarOverlay"></div>

<div class="d-flex flex-column flex-md-row">
    <!-- Sidebar -->

    <jsp:include page="sidebar.jsp"></jsp:include>

    <!-- Main Content Area -->
    <div class="flex-grow-1 bg-light">
<jsp:include page="topnav.jsp"></jsp:include>

        <div class="dashboard-content">
            <!-- Page Header -->
            <div>
                <h3 class="fw-bold mb-0" style="font-size: 24px; color: #1a202c">
                    Roles & Privileges
                </h3>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0" style="font-size: 11px">
                        <li class="breadcrumb-item">
                            <a href="index.html" class="text-decoration-none text-muted">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Roles & Rights</li>
                    </ol>
                </nav>
            </div>

            <!-- Stats Grid -->
            <div class="row g-3 mb-4">
                <div class="col-md-3">
                    <div class="stat-card compact h-100">
                        <div class="d-flex align-items-center gap-3">
                            <div class="stat-icon bg-soft-blue">
                                <i class="fa-solid fa-user-shield"></i>
                            </div>
                            <div>
                                <div class="stat-title text-muted">Total Roles</div>
                                <div class="stat-value">8</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card compact h-100">
                        <div class="d-flex align-items-center gap-3">
                            <div class="stat-icon bg-soft-green">
                                <i class="fa-solid fa-users"></i>
                            </div>
                            <div>
                                <div class="stat-title text-muted">Assigned Users</div>
                                <div class="stat-value">124</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card compact h-100">
                        <div class="d-flex align-items-center gap-3">
                            <div class="stat-icon bg-soft-orange">
                                <i class="fa-solid fa-key"></i>
                            </div>
                            <div>
                                <div class="stat-title text-muted">Active Permissions</div>
                                <div class="stat-value">42</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card compact h-100">
                        <div class="d-flex align-items-center gap-3">
                            <div class="stat-icon bg-soft-red">
                                <i class="fa-solid fa-triangle-exclamation"></i>
                            </div>
                            <div>
                                <div class="stat-title text-muted">Restricted Modules</div>
                                <div class="stat-value">3</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-4">
                <!-- Roles Sidebar -->
                <div class="col-lg-3">
                    <div class="card border-0 shadow-sm rounded-4 p-3 mb-4">
                        <h6 class="fw-bold mb-3 small text-muted">EXISTING ROLES</h6>
                        <div class="role-list">
                            <div id="rolesContainer">
                                <div class="role-card p-3 active mb-2">
                                    <div class="d-flex justify-content-between align-items-start">
                                        <div>
                                            <h6 class="fw-bold mb-0">Administrator</h6>
                                            <small class="text-muted">Full system access</small>
                                        </div>
                                        <span class="badge bg-soft-green text-success small">Active</span>
                                    </div>
                                </div>
                                <div class="role-card p-3 mb-2">
                                    <div class="d-flex justify-content-between align-items-start">
                                        <div>
                                            <h6 class="fw-bold mb-0">HR Manager</h6>
                                            <small class="text-muted">Manage workforce & payroll</small>
                                        </div>
                                        <span class="badge bg-soft-green text-success small">Active</span>
                                    </div>
                                </div>
                                <div class="role-card p-3 mb-2">
                                    <div class="d-flex justify-content-between align-items-start">
                                        <div>
                                            <h6 class="fw-bold mb-0">Supervisor</h6>
                                            <small class="text-muted">Floor & line management</small>
                                        </div>
                                        <span class="badge bg-soft-green text-success small">Active</span>
                                    </div>
                                </div>
                                <div class="role-card p-3 mb-2">
                                    <div class="d-flex justify-content-between align-items-start">
                                        <div>
                                            <h6 class="fw-bold mb-0">Floor Manager</h6>
                                            <small class="text-muted">Shift scheduling & attendance</small>
                                        </div>
                                        <span class="badge bg-soft-gold text-warning small">Limited</span>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-create-role-sidebar" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                <i class="fa-solid fa-plus me-2"></i> Create New Role
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Privilege Matrix -->
                <div class="col-lg-9">
                    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
                        <div class="card-header bg-white border-0 py-3 px-4 d-flex justify-content-between align-items-center">
                            <div>
                                <h5 class="fw-bold mb-0" style="color: #2b3a67">
                                    Permission Matrix:
                                    <span class="text-orange">Administrator</span>
                                </h5>
                                <small class="text-muted">Define granular access for this role across
                                    modules</small>
                            </div>
                            <button id="saveChangesBtn" class="btn btn-primary-custom btn-sm px-4"
                                    style="background: #e4520d; font-size: 12px">
                                Save Changes
                            </button>
                        </div>
                        <div class="table-responsive">
                            <table class="table permission-matrix mb-0">
                                <thead>
                                <tr>
                                    <th style="width: 30%">Module / Resource</th>
                                    <th class="text-center">View (Read)</th>
                                    <th class="text-center">Create (Write)</th>
                                    <th class="text-center">Edit (Update)</th>
                                    <th class="text-center">Delete</th>
                                    <th class="text-center">Full Access</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="module-name">Dashboard Analytics</div>
                                        <small class="text-muted">Access to main charts and statistics</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked disabled />
                                    </td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="module-name">Employee Management</div>
                                        <small class="text-muted">Add, edit, view workforce data</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block text-center">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="module-name">Factory Setup</div>
                                        <small class="text-muted">Manage facilities and production lines</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="module-name">User Accounts</div>
                                        <small class="text-muted">System login and role assignments</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="module-header">
                                    <td>
                                        <div class="module-name">Reports & Analytics</div>
                                        <small class="text-muted">Master control for all system reports</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="sub-module-row">
                                    <td class="sub-module">
                                        <div class="module-name">Contractor Reports</div>
                                        <small class="text-muted">Usage and billing logs</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">-</td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="nested-report-row">
                                    <td class="nested-sub-module sub-module" style="padding-left: 40px !important">
                                        <div class="module-name">Attendance Report</div>
                                        <small class="text-muted">Daily check-in/out logs</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="nested-report-row">
                                    <td class="nested-sub-module sub-module" style="padding-left: 40px !important">
                                        <div class="module-name">Training Report</div>
                                        <small class="text-muted">Certification and skill tracking</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="sub-module-row">
                                    <td class="sub-module">
                                        <div class="module-name">Supervisor Reports</div>
                                        <small class="text-muted">Shift and performance metrics</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                <tr class="sub-module-row">
                                    <td class="sub-module">
                                        <div class="module-name">
                                            Workforce Analytics (XYZ)
                                        </div>
                                        <small class="text-muted">Custom data exports and trends</small>
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <input class="form-check-input" type="checkbox" checked />
                                    </td>
                                    <td class="text-center">
                                        <div class="form-check form-switch d-inline-block">
                                            <input class="form-check-input" type="checkbox" checked />
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>

<!-- Add Role Modal -->
<div class="modal fade" id="addRoleModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create New Role</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
            </div>
            <form id="addRoleForm">
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label fw-bold small text-muted">Role Name</label>
                        <input type="text" id="newRoleName" class="form-control" placeholder="e.g. Finance Auditor" required />
                    </div>
                    <p class="text-muted small mb-0">
                        After creating the role, you can define its specific permissions
                        in the matrix.
                    </p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-light px-4" data-bs-dismiss="modal">
                        Cancel
                    </button>
                    <button type="submit" class="btn btn-primary-custom px-4">
                        Create Role
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Sidebar Toggle Logic
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

    // Role Management Logic
    const rolesContainer = document.getElementById('rolesContainer');
    const matrixRoleName = document.querySelector(
        '.card-header h5 .text-orange',
    );
    const matrixRows = document.querySelectorAll(
        '.permission-matrix tbody tr',
    );
    const saveBtn = document.getElementById('saveChangesBtn');
    const addRoleForm = document.getElementById('addRoleForm');
    const addRoleModal = new bootstrap.Modal(
        document.getElementById('addRoleModal'),
    );

    let currentActiveRole = 'Administrator';

    const rolePermissions = {
        Administrator: [
            [true, false, false, false, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, false, false, false, true],
            [true, false, false, false, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
        ],
        'HR Manager': [
            [true, false, false, false, false],
            [true, true, true, true, true],
            [true, false, false, false, false],
            [true, true, true, false, false],
            [true, false, false, false, true],
            [true, false, false, false, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
            [true, true, true, true, true],
        ],
        Supervisor: [
            [true, false, false, false, false],
            [true, false, true, false, false],
            [true, true, true, false, false],
            [false, false, false, false, false],
            [true, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [true, true, true, false, false],
            [false, false, false, false, false],
        ],
        'Floor Manager': [
            [true, false, false, false, false],
            [true, false, false, false, false],
            [true, false, true, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
            [false, false, false, false, false],
        ],
    };

    function updateMatrix(roleName) {
        currentActiveRole = roleName;
        if (matrixRoleName) matrixRoleName.innerText = roleName;

        const permissions = rolePermissions[roleName];
        if (permissions) {
            matrixRows.forEach((row, rowIndex) => {
                const rowPermissions = permissions[rowIndex];
                rowPermissions.forEach((val, permIndex) => {
                    const cell = row.cells[permIndex + 1];
                    if (cell && cell.innerText.trim() !== '-') {
                        const input = cell.querySelector('input.form-check-input');
                        if (input) {
                            input.checked = val;
                            input.disabled =
                                roleName === 'Administrator' &&
                                permIndex === 0 &&
                                rowIndex === 0; // Special case for Admin Dashboard View
                        }
                    }
                });
            });
        } else {
            // Default for new roles
            matrixRows.forEach((row) => {
                const inputs = row.querySelectorAll('input.form-check-input');
                inputs.forEach((input) => (input.checked = false));
            });
        }
    }

    function handleRoleClick(e) {
        const card = e.currentTarget;
        document
            .querySelectorAll('.role-card')
            .forEach((c) => c.classList.remove('active'));
        card.classList.add('active');
        const roleName = card.querySelector('h6').innerText;
        updateMatrix(roleName);
    }

    // Initial listeners for existing roles
    document.querySelectorAll('.role-card').forEach((card) => {
        card.addEventListener('click', handleRoleClick);
    });

    // Save Changes Logic
    saveBtn.addEventListener('click', () => {
        const newPerms = [];
        matrixRows.forEach((row, rowIndex) => {
            const rowPerms = [];
            for (let i = 1; i <= 5; i++) {
                const cell = row.cells[i];
                if (cell && cell.innerText.trim() !== '-') {
                    const input = cell.querySelector('input.form-check-input');
                    rowPerms.push(input ? input.checked : false);
                } else {
                    rowPerms.push(false);
                }
            }
            newPerms.push(rowPerms);
        });
        rolePermissions[currentActiveRole] = newPerms;

        // Visual feedback
        const originalText = saveBtn.innerText;
        saveBtn.innerText = 'Saved!';
        saveBtn.classList.replace('btn-orange', 'btn-success');
        setTimeout(() => {
            saveBtn.innerText = originalText;
            saveBtn.classList.replace('btn-success', 'btn-orange');
        }, 2000);
    });

    // Add Role Logic
    addRoleForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const roleName = document.getElementById('newRoleName').value.trim();
        if (!roleName) return;

        // Add to Sidebar
        const roleCard = document.createElement('div');
        roleCard.className = 'role-card p-3 mb-2';
        roleCard.innerHTML = `
          <div class="d-flex justify-content-between align-items-start">
            <div>
              <h6 class="fw-bold mb-0">${roleName}</h6>
              <small class="text-muted">Custom Role</small>
            </div>
            <span class="badge bg-soft-green text-success small">Active</span>
          </div>
        `;
        roleCard.addEventListener('click', handleRoleClick);
        rolesContainer.appendChild(roleCard);

        // Initialize Permissions
        // rolePermissions[roleName] = matrixRows.map(() => [
        //   false,
        //   false,
        //   false,
        //   false,
        //   false,
        // ]);

        // Cleanup and switch to new role
        addRoleForm.reset();
        addRoleModal.hide();
        roleCard.click();
    });
</script>
</body>

</html>