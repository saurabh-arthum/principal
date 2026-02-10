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
</div>