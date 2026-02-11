<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>User Management - SmartHR</title>
    <link href="/bootstrap-5.3.8-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css" />


</head>

<body>
<div class="sidebar-overlay" id="sidebarOverlay"></div>

<div class="d-flex flex-column flex-md-row">
    <!-- Sidebar -->
    <!-- Sidebar -->

    <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- Main Content Area -->
    <div class="flex-grow-1 bg-light">
        <!-- Top Header -->
        <%--        topnav--%>
        <jsp:include page="topnav.jsp"></jsp:include>
        <!-- User Management Content -->
        <div class="dashboard-content">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <h3 class="fw-bold mb-0" style="font-size: 20px">
                        User Management
                    </h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0" style="font-size: 11px">
                            <li class="breadcrumb-item">
                                <a href="index.html" class="text-decoration-none text-muted"><i class="fa-solid fa-house me-1"></i>
                                    Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">User Management</li>
                        </ol>
                    </nav>
                </div>
                <div class="d-flex gap-2">
                    <button class="btn btn-sm border shadow-sm" style="background: #fff; color: #e4520d" data-bs-toggle="modal"
                            data-bs-target="#bulkUploadModal">
                        <i class="fa-solid fa-upload me-1"></i> Bulk Upload
                    </button>

                    <button class="btn btn-sm text-white border-0 shadow-sm" style="background: #e4520d" data-bs-toggle="modal"
                            data-bs-target="#addUserModal">
                        <i class="fa-solid fa-user-plus me-1"></i> Add User
                    </button>
                </div>
            </div>

            <!-- Stats Row -->
            <!-- <div class="row g-3 mb-4">
                <div class="col-md-3">
                  <div class="stat-card compact">
                    <div
                      class="stat-icon bg-soft-blue mb-2"
                      style="width: 35px; height: 35px">
                      <i class="fa-solid fa-users"></i>
                    </div>
                    <div class="stat-title text-muted">Total Users</div>
                    <div class="stat-value">245</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="stat-card compact">
                    <div
                      class="stat-icon bg-soft-green mb-2"
                      style="width: 35px; height: 35px">
                      <i class="fa-solid fa-user-check"></i>
                    </div>
                    <div class="stat-title text-muted">Active Users</div>
                    <div class="stat-value">198</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="stat-card compact">
                    <div
                      class="stat-icon bg-soft-orange mb-2"
                      style="width: 35px; height: 35px">
                      <i class="fa-solid fa-shield-halved"></i>
                    </div>
                    <div class="stat-title text-muted">Roles</div>
                    <div class="stat-value">12</div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="stat-card compact">
                    <div
                      class="stat-icon bg-soft-red mb-2"
                      style="width: 35px; height: 35px">
                      <i class="fa-solid fa-user-slash"></i>
                    </div>
                    <div class="stat-title text-muted">Inactive</div>
                    <div class="stat-value">47</div>
                  </div>
                </div>
              </div> -->

            <div class="row g-3 mb-4">
                <div class="col-md-3">
                    <div class="stat-card compact">
                        <div class="stat-header">
                            <div class="stat-icon bg-soft-blue">
                                <i class="fa-solid fa-users"></i>
                            </div>
                            <div class="stat-title">Total Users</div>
                        </div>
                        <div class="stat-value" data-count="245">0</div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="stat-card compact">
                        <div class="stat-header">
                            <div class="stat-icon bg-soft-green">
                                <i class="fa-solid fa-user-check"></i>
                            </div>
                            <div class="stat-title">Active Users</div>
                        </div>
                        <div class="stat-value" data-count="198">0</div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="stat-card compact">
                        <div class="stat-header">
                            <div class="stat-icon bg-soft-orange">
                                <i class="fa-solid fa-shield-halved"></i>
                            </div>
                            <div class="stat-title">Unassigned Factory</div>
                        </div>
                        <div class="stat-value" data-count="1">0</div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="stat-card compact">
                        <div class="stat-header">
                            <div class="stat-icon bg-soft-red">
                                <i class="fa-solid fa-user-slash"></i>
                            </div>
                            <div class="stat-title">Inactive</div>
                        </div>
                        <div class="stat-value" data-count="47">0</div>
                    </div>
                </div>
            </div>

            <!-- User List Table -->
            <div class="dashboard-card">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="card-title-new mb-0">All Users</h5>
                    <div class="d-flex flex-column flex-md-row gap-2">
                        <input type="text" class="form-control form-control-sm" placeholder="Search users..."
                               style="width: 200px; font-size: 12px" />
                        <select class="form-select form-select-sm" style="width: 120px; font-size: 12px">
                            <option>All Roles</option>
                            <option>Admin</option>
                            <option>Manager</option>
                            <option>Employee</option>
                        </select>
                        <select class="form-select form-select-sm" style="width: 120px; font-size: 12px">
                            <option>Select Factory</option>
                            <option>Factory A</option>
                            <option>Factory B</option>
                            <option>Factory C</option>
                            <option>Factory D</option>
                        </select>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover align-middle" style="font-size: 12px">
                        <thead class="table-light">
                        <tr>
                            <th class="display-none"><input type="checkbox" /></th>
                            <th>User</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Factory</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="display-none"><input type="checkbox" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://i.pravatar.cc/150?img=1" class="rounded-circle me-2"
                                         style="width: 32px; height: 32px" />
                                    <div>
                                        <div class="fw-bold">John Doe</div>
                                        <div class="text-muted small">ID: USR001</div>
                                    </div>
                                </div>
                            </td>
                            <td>john.doe@company.com</td>
                            <td><span class="badge bg-primary">Administrator</span></td>
                            <td>Factory A</td>
                            <td><span class="badge bg-success">Active</span></td>
                            <td>
                                <button class="btn btn-sm btn-light" onclick="editUser(this)">
                                    <i class="fa-solid fa-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="display-none"><input type="checkbox" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://i.pravatar.cc/150?img=2" class="rounded-circle me-2"
                                         style="width: 32px; height: 32px" />
                                    <div>
                                        <div class="fw-bold">Jane Smith</div>
                                        <div class="text-muted small">ID: USR002</div>
                                    </div>
                                </div>
                            </td>
                            <td>jane.smith@company.com</td>
                            <td>
                                <span class="badge" style="background: #9b59b6">Manager</span>
                            </td>
                            <td>Factory B</td>
                            <td><span class="badge bg-success">Active</span></td>
                            <td>
                                <button class="btn btn-sm btn-light" onclick="editUser(this)">
                                    <i class="fa-solid fa-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="display-none"><input type="checkbox" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://i.pravatar.cc/150?img=3" class="rounded-circle me-2"
                                         style="width: 32px; height: 32px" />
                                    <div>
                                        <div class="fw-bold">Mike Johnson</div>
                                        <div class="text-muted small">ID: USR003</div>
                                    </div>
                                </div>
                            </td>
                            <td>mike.j@company.com</td>
                            <td><span class="badge bg-info">HR Manager</span></td>
                            <td>Factory A</td>
                            <td><span class="badge bg-success">Active</span></td>
                            <td>
                                <button class="btn btn-sm btn-light" onclick="editUser(this)">
                                    <i class="fa-solid fa-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="display-none"><input type="checkbox" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://i.pravatar.cc/150?img=4" class="rounded-circle me-2"
                                         style="width: 32px; height: 32px" />
                                    <div>
                                        <div class="fw-bold">Sarah Williams</div>
                                        <div class="text-muted small">ID: USR004</div>
                                    </div>
                                </div>
                            </td>
                            <td>sarah.w@company.com</td>
                            <td><span class="badge bg-secondary">Employee</span></td>
                            <td>Factory C</td>
                            <td><span class="badge bg-warning">Pending</span></td>
                            <td>
                                <button class="btn btn-sm btn-light" onclick="editUser(this)">
                                    <i class="fa-solid fa-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="display-none"><input type="checkbox" /></td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <img src="https://i.pravatar.cc/150?img=5" class="rounded-circle me-2"
                                         style="width: 32px; height: 32px" />
                                    <div>
                                        <div class="fw-bold">David Brown</div>
                                        <div class="text-muted small">ID: USR005</div>
                                    </div>
                                </div>
                            </td>
                            <td>david.b@company.com</td>
                            <td>
                                <span class="badge" style="background: #9b59b6">Manager</span>
                            </td>
                            <td>Factory B</td>
                            <td><span class="badge bg-danger">Inactive</span></td>
                            <td>
                                <button class="btn btn-sm btn-light" onclick="editUser(this)">
                                    <i class="fa-solid fa-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- Pagination Footer -->
                <div class="pagination-container">
                    <div class="text-muted small fw-bold font-size-12" id="paginationSummary">
                        Showing 1-5 of 245 users
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
        </div>
    </div>
</div>

<!-- User Modal -->

<div class="modal fade" id="addUserModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content rounded-4">
            <!-- Header -->
            <div class="modal-header">
                <h5 class="modal-title fw-semibold" id="userModalTitle">
                    Add New User
                </h5>
                <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
            </div>

            <!-- Body -->
            <div class="modal-body">

                <form>
                    <div class="row g-4">
                        <!-- Left Column -->
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input type="text" class="form-control" placeholder="Enter full name" />
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" class="form-control" placeholder="Enter email" />
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Role</label>
                                <select class="form-select">
                                    <option>Select Role</option>
                                    <option>Administrator</option>
                                    <option>Manager</option>
                                    <option>HR Manager</option>
                                    <option>Employee</option>
                                </select>
                                <!-- <a
                                    href="roles-privileges.html"
                                    class="btn btn-sm btn-primary mt-2">
                                    + Add Role First
                                  </a> -->
                                <small id="roleHint" class="text-muted">
                                    No roles found. click here to add role first.
                                    <a href="roles-privileges.html" style="color: #e4520d">Add Roles</a>
                                </small>
                            </div>
                        </div>

                        <!-- Right Column -->
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input type="password" class="form-control" placeholder="Create password" />
                            </div>

                            <!-- <div class="mb-3">
                                <label class="form-label">Status</label>
                                <select class="form-select">
                                  <option>Active</option>
                                  <option>Inactive</option>
                                </select>
                              </div> -->
                            <div class="mb-3">
                                <label class="form-label">Factories</label>

                                <div class="d-flex flex-column">
                                    <button type="button" class="btn-select-factory" data-bs-toggle="modal"
                                            data-bs-target="#factoryModal" data-bs-auto-close="false">
                                        <div class="d-flex align-items-center gap-2">
                                            <i class="fa-solid fa-building main-icon"></i>
                                            <span class="text-muted">Select Operating Factories</span>
                                        </div>
                                        <i class="fa-solid fa-chevron-down chevron"></i>
                                    </button>

                                    <div id="selectedFactories" class="d-flex flex-wrap gap-1 pt-2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <%--footer--%>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </div>

    <!-- Factory Selection Modal -->

    <div class="modal fade" id="factoryModal" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fw-bold">Select Operating Factories</h5>
                    <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
                <div class="modal-body p-4">
                    <!-- Search Header -->
                    <div class="modal-search-wrapper mb-3">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="text" id="factorySearch" class="form-control"
                               placeholder="Quickly find a factory by name or city..." />
                    </div>

                    <!-- Utility Bar -->
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="modal-section-title mb-0">Available Facilities</div>
                        <div class="d-flex gap-2">
                            <button type="button" class="bulk-action-btn" id="selectAllFactoriesBtn">
                                <i class="fa-solid fa-check-double me-1"></i>Select All
                            </button>
                            <button type="button" class="bulk-action-btn" id="clearAllFactoriesBtn">
                                <i class="fa-solid fa-xmark me-1"></i>Clear All
                            </button>
                        </div>
                    </div>

                    <!-- Cards Grid Container (Scrollable) -->
                    <div class="factory-grid-container">
                        <div id="factoryList">
                            <!-- List items will be rendered here -->
                        </div>
                    </div>
                </div>

                <div class="modal-footer px-4 py-3 d-flex justify-content-between align-items-center bg-light">
                    <div class="text-muted small fw-semibold">
                        <span id="factorySelectedCount">0</span> factories selected
                    </div>
                    <div class="d-flex gap-2">
                        <button class="btn btn-light px-4" data-bs-dismiss="modal">
                            Cancel
                        </button>
                        <button class="btn btn-primary-custom px-4" id="applyFactories">
                            Apply Selection
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Roles Modal -->
    <div class="modal fade" id="roleModal" tabindex="-1">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Roles & Rights</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <!-- Add Role -->
                    <div class="mb-4">
                        <h6>Add New Role</h6>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Enter role name" />
                            <button class="btn text-white" style="background: #e4520d">
                                Add
                            </button>
                        </div>
                    </div>

                    <!-- Role List -->
                    <table class="table table-sm table-bordered align-middle">
                        <thead class="table-light">
                        <tr>
                            <th>Role Name</th>
                            <th width="150">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Administrator</td>
                            <td>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>Manager</td>
                            <td>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>Employee</td>
                            <td>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button class="btn btn-sm btn-light">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="modal-footer">
                    <button class="btn btn-light" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bulk Upload Modal -->
    <div class="modal fade" id="bulkUploadModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title fw-bold">Bulk Upload Users</h5>
                    <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-4 text-center">
                        <p class="text-muted small">
                            Upload an Excel or CSV file to add multiple users at once.
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
                                users_data.csv
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

    <script src="bootstrap-5.3.8-dist/js/bootstrap.bundle.min.js"></script>
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

            const fullscreenBtn = document.getElementById('toggleFullscreen');
            fullscreenBtn.addEventListener('click', function (e) {
                e.preventDefault();
                if (!document.fullscreenElement) {
                    document.documentElement.requestFullscreen();
                } else {
                    document.exitFullscreen();
                }
            });

            document.addEventListener('keydown', function (e) {
                if ((e.ctrlKey || e.metaKey) && e.key === '/') {
                    e.preventDefault();
                    document.querySelector('.search-input').focus();
                }
            });
        });
    </script>

    <script>
        const factories = [
            { name: 'Factory A', location: 'New York', id: 'FAC-A' },
            { name: 'Factory B', location: 'London', id: 'FAC-B' },
            { name: 'Factory C', location: 'Tokyo', id: 'FAC-C' },
            { name: 'Factory D', location: 'Berlin', id: 'FAC-D' },
            { name: 'West Hub', location: 'San Francisco', id: 'FAC-E' },
            { name: 'North Plant', location: 'Chicago', id: 'FAC-F' },
        ];

        const factoryList = document.getElementById('factoryList');
        const factorySearch = document.getElementById('factorySearch');
        const selectedCountSpan = document.getElementById('factorySelectedCount');
        const selectedFactoriesBox = document.getElementById('selectedFactories');
        const applyBtn = document.getElementById('applyFactories');
        const selectAllBtn = document.getElementById('selectAllFactoriesBtn');
        const clearAllBtn = document.getElementById('clearAllFactoriesBtn');

        let selectedFactories = new Set();
        let currentFilteredFactories = [...factories];

        function renderFactoryList(filter = '') {
            factoryList.innerHTML = '';
            currentFilteredFactories = factories.filter(
                (f) =>
                    f.name.toLowerCase().includes(filter.toLowerCase()) ||
                    f.location.toLowerCase().includes(filter.toLowerCase()),
            );

            if (currentFilteredFactories.length === 0) {
                factoryList.innerHTML =
                    '<div class="text-center py-5 text-muted">No factories found matching your search click on create factory. <a href="factory-page.html" style="color:#e4520d; text-decoration:none">create factory</a></div>';
                return;
            }

            currentFilteredFactories.forEach((factory) => {
                const isSelected = selectedFactories.has(factory.name);
                const item = document.createElement('div');
                item.className = `factory-list-item ${isSelected ? 'selected' : ''}`;
                item.innerHTML = `
            <div class="factory-avatar">
              <i class="fa-solid fa-industry"></i>
            </div>
            <div class="factory-info">
              <div class="factory-name">${factory.name}</div>
              <div class="factory-location px-0">
                <i class="fa-solid fa-location-dot me-1"></i>${factory.location}
              </div>
            </div>
            <div class="selection-indicator">
              <i class="fa-solid fa-check"></i>
            </div>
          `;

                item.addEventListener('click', function () {
                    if (selectedFactories.has(factory.name)) {
                        selectedFactories.delete(factory.name);
                        this.classList.remove('selected');
                    } else {
                        selectedFactories.add(factory.name);
                        this.classList.add('selected');
                    }
                    updateSelectedCount();
                });

                factoryList.appendChild(item);
            });
        }

        function updateSelectedCount() {
            selectedCountSpan.innerText = selectedFactories.size;
        }

        factorySearch.addEventListener('input', (e) => {
            renderFactoryList(e.target.value);
        });

        selectAllBtn.addEventListener('click', () => {
            currentFilteredFactories.forEach((f) => selectedFactories.add(f.name));
            renderFactoryList(factorySearch.value);
            updateSelectedCount();
        });

        clearAllBtn.addEventListener('click', () => {
            selectedFactories.clear();
            renderFactoryList(factorySearch.value);
            updateSelectedCount();
        });

        // --- User Edit Flow Implementation ---

        const userModal = new bootstrap.Modal(
            document.getElementById('addUserModal'),
        );
        const userModalTitle = document.getElementById('userModalTitle');

        // Function to open modal for Edit
        window.editUser = function (button) {
            const row = button.closest('tr');
            const cells = row.cells;

            // Extract current data
            const name = cells[1].querySelector('.fw-bold').innerText;
            const email = cells[2].innerText;
            const role = cells[3].innerText.trim();
            const factoryStr = cells[4].innerText.trim();
            const status = cells[5].innerText.trim();

            // Update Modal Title
            userModalTitle.innerText = 'Edit User';

            // Populate Form Fields
            document.querySelector('input[placeholder="Enter full name"]').value =
                name;
            document.querySelector('input[placeholder="Enter email"]').value =
                email;

            // Select Role (matches text)
            const roleSelect = document.querySelector('select.form-select');
            for (let option of roleSelect.options) {
                if (option.text === role) {
                    roleSelect.value = option.value;
                    break;
                }
            }

            // Handle Factory Selection Sync
            selectedFactories.clear();
            if (factoryStr && factoryStr !== '-' && factoryStr !== 'None') {
                const factoryNames = factoryStr.split(',').map((f) => f.trim());
                factoryNames.forEach((name) => selectedFactories.add(name));
            }
            renderFactoryList(); // Sync modal grid/list
            renderSelectedFactoryBadges(); // Sync badges in main modal

            userModal.show();
        };

        // Helper to render badges (refactored for reuse)
        function renderSelectedFactoryBadges() {
            selectedFactoriesBox.innerHTML = '';
            selectedFactories.forEach((name) => {
                const badge = document.createElement('span');
                badge.className = 'badge bg-secondary';
                badge.innerHTML = `
            ${name}
            <i class="fa-solid fa-xmark ms-1 remove-factory" style="cursor:pointer"></i>
          `;
                badge
                    .querySelector('.remove-factory')
                    .addEventListener('click', () => {
                        selectedFactories.delete(name);
                        badge.remove();
                        updateSelectedCount();
                    });
                selectedFactoriesBox.appendChild(badge);
            });
            updateSelectedCount();
        }

        // Reset modal when opened for ADD
        document
            .querySelector('[data-bs-target="#addUserModal"]')
            .addEventListener('click', () => {
                userModalTitle.innerText = 'Add New User';
                document
                    .querySelectorAll('#addUserModal input:not([type="checkbox"])')
                    .forEach((i) => (i.value = ''));
                document
                    .querySelectorAll('#addUserModal select')
                    .forEach((s) => (s.selectedIndex = 0));
                selectedFactories.clear();
                renderFactoryList();
                renderSelectedFactoryBadges();
            });

        // Unified apply button logic
        applyBtn.addEventListener('click', function () {
            renderSelectedFactoryBadges();
            const factoryModal = bootstrap.Modal.getInstance(
                document.getElementById('factoryModal'),
            );
            factoryModal.hide();
            userModal.show();
        });

        // --- Bulk Upload Implementation ---
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
        if (uploadZone)
            uploadZone.addEventListener('click', () => fileInput.click());

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
                            alert('Upload successful! 245 users have been imported.');
                            const bulkModal = bootstrap.Modal.getInstance(
                                document.getElementById('bulkUploadModal'),
                            );
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

        renderFactoryList();
    </script>

    <script>
        document.querySelectorAll('.stat-value').forEach((counter) => {
            let target = +counter.getAttribute('data-count');
            let current = 0;
            let increment = target / 80;

            let updateCount = () => {
                if (current < target) {
                    current += increment;
                    counter.innerText = Math.ceil(current);
                    requestAnimationFrame(updateCount);
                } else {
                    counter.innerText = target;
                }
            };

            updateCount();
        });
    </script>
</body>

</html>