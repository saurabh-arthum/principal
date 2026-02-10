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