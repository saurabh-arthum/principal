
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
