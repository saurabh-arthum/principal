<!-- Approval Modal -->
  <div class="modal fade" id="approvalModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content rounded-4">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">
            <i class="fa-solid fa-check-circle me-2"></i>Approve Contractor
          </h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <label class="form-label fw-bold">Contractor Details</label>
            <div class="card">
              <div class="card-body">
                <p class="mb-1"><strong>Name:</strong> XYZ Services</p>
                <p class="mb-1"><strong>Email:</strong> xyz@services.com</p>
                <p class="mb-1"><strong>Factory:</strong> Factory B - Pune</p>
                <p class="mb-0"><strong>GST:</strong> 27AABCX9603R1ZN</p>
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label class="form-label fw-bold">Approval Decision</label>
            <select class="form-select">
              <option value="approved">Approve</option>
              <option value="rejected">Reject</option>
              <option value="pending">Keep Pending</option>
            </select>
          </div>

          <div class="mb-3">
            <label class="form-label fw-bold">Comments</label>
            <textarea class="form-control" rows="3" placeholder="Add your comments here..."></textarea>
          </div>

          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="notifyContractor">
            <label class="form-check-label" for="notifyContractor">
              Send notification email to contractor
            </label>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-primary-custom">
            <i class="fa-solid fa-check me-1"></i>Submit Decision
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Documents Modal -->
  <div class="modal fade" id="documentsModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content rounded-4">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">
            <i class="fa-solid fa-file-alt me-2"></i>Contractor Documents
          </h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <button class="btn btn-primary btn-sm" data-bs-toggle="collapse" data-bs-target="#uploadDocSection">
              <i class="fa-solid fa-plus me-1"></i>Upload New Document
            </button>
          </div>

          <div class="collapse mb-4" id="uploadDocSection">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Document Type</label>
                    <select class="form-select form-select-sm">
                      <option>GST Certificate</option>
                      <option>PAN Card</option>
                      <option>Aadhar Card</option>
                      <option>Registration Certificate</option>
                      <option>Trade License</option>
                      <option>Other</option>
                    </select>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Upload File</label>
                    <input type="file" class="form-control form-control-sm" />
                  </div>
                </div>
                <button class="btn btn-sm btn-success">
                  <i class="fa-solid fa-upload me-1"></i>Upload
                </button>
              </div>
            </div>
          </div>

          <div class="table-responsive">
            <table class="table table-sm table-hover">
              <thead class="table-light">
                <tr>
                  <th>Document Type</th>
                  <th>File Name</th>
                  <th>Upload Date</th>
                  <th>Size</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><span class="badge bg-primary">GST Certificate</span></td>
                  <td>GST_Certificate_2024.pdf</td>
                  <td>2024-01-15</td>
                  <td>245 KB</td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Download">
                      <i class="fa-solid fa-download"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td><span class="badge bg-info">PAN Card</span></td>
                  <td>PAN_Card.pdf</td>
                  <td>2024-01-15</td>
                  <td>128 KB</td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Download">
                      <i class="fa-solid fa-download"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td><span class="badge bg-success">Registration</span></td>
                  <td>Registration_Certificate.pdf</td>
                  <td>2024-01-10</td>
                  <td>512 KB</td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Download">
                      <i class="fa-solid fa-download"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td><span class="badge bg-warning">Trade License</span></td>
                  <td>Trade_License_2024.pdf</td>
                  <td>2024-01-08</td>
                  <td>356 KB</td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Download">
                      <i class="fa-solid fa-download"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td><span class="badge bg-secondary">Other</span></td>
                  <td>Insurance_Policy.pdf</td>
                  <td>2024-01-05</td>
                  <td>892 KB</td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Download">
                      <i class="fa-solid fa-download"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Manage Users Modal -->
  <div class="modal fade" id="manageUsersModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content rounded-4">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">
            <i class="fa-solid fa-users-gear me-2"></i>Manage Contractor Users
          </h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="mb-3">
            <button class="btn btn-primary btn-sm" data-bs-toggle="collapse" data-bs-target="#addUserSection">
              <i class="fa-solid fa-user-plus me-1"></i>Add New User
            </button>
          </div>

          <div class="collapse mb-4" id="addUserSection">
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Full Name</label>
                    <input type="text" class="form-control form-control-sm" placeholder="Enter full name" />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control form-control-sm" placeholder="Enter email" />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Phone</label>
                    <input type="tel" class="form-control form-control-sm" placeholder="Enter phone number" />
                  </div>
                  <div class="col-md-6 mb-3">
                    <label class="form-label">Role</label>
                    <select class="form-select form-select-sm">
                      <option>Admin</option>
                      <option>Manager</option>
                      <option>Supervisor</option>
                      <option>Operator</option>
                    </select>
                  </div>
                </div>
                <button class="btn btn-sm btn-success">
                  <i class="fa-solid fa-plus me-1"></i>Add User
                </button>
              </div>
            </div>
          </div>

          <div class="table-responsive">
            <table class="table table-sm table-hover">
              <thead class="table-light">
                <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Role</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <div class="d-flex align-items-center">
                      <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                        style="width: 28px; height: 28px" />
                      <span>Rajesh Kumar</span>
                    </div>
                  </td>
                  <td>rajesh@abc.com</td>
                  <td>+91 98765 43210</td>
                  <td><span class="badge bg-primary">Admin</span></td>
                  <td><span class="badge bg-success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Edit">
                      <i class="fa-solid fa-edit"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="d-flex align-items-center">
                      <img src="https://i.pravatar.cc/150?img=11" class="rounded-circle me-2"
                        style="width: 28px; height: 28px" />
                      <span>Priya Sharma</span>
                    </div>
                  </td>
                  <td>priya@abc.com</td>
                  <td>+91 98765 43211</td>
                  <td><span class="badge bg-info">Manager</span></td>
                  <td><span class="badge bg-success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Edit">
                      <i class="fa-solid fa-edit"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="d-flex align-items-center">
                      <img src="https://i.pravatar.cc/150?img=12" class="rounded-circle me-2"
                        style="width: 28px; height: 28px" />
                      <span>Amit Patel</span>
                    </div>
                  </td>
                  <td>amit@abc.com</td>
                  <td>+91 98765 43212</td>
                  <td><span class="badge bg-secondary">Supervisor</span></td>
                  <td><span class="badge bg-success">Active</span></td>
                  <td>
                    <button class="btn btn-sm btn-outline-primary" title="Edit">
                      <i class="fa-solid fa-edit"></i>
                    </button>
                    <button class="btn btn-sm btn-outline-danger" title="Delete">
                      <i class="fa-solid fa-trash"></i>
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- View Contractor Modal -->
  <div class="modal fade" id="viewContractorModal" tabindex="-1">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content rounded-4">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">
            <i class="fa-solid fa-info-circle me-2"></i>Contractor Quick View
          </h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="row g-4">
            <!-- Left Column: Basic & Statutory Info -->
            <div class="col-lg-6">
              <div class="card border-0 shadow-sm h-100 rounded-3">
                <div class="card-body">
                  <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                    <i class="fa-solid fa-id-card me-2"></i>Identity & Statutory Details
                  </h6>
                  <div class="row g-3">
                    <div class="col-md-12">
                      <label class="form-label text-muted small mb-0">Contractor Name</label>
                      <div class="fw-bold fs-5 text-dark" id="viewFullName text-uppercase">ABC Contractors</div>
                    </div>
                    <div class="col-md-6">
                      <label class="form-label text-muted small mb-0">PAN Number</label>
                      <div class="fw-semibold" id="viewPan">ABCDE1234F</div>
                    </div>
                    <div class="col-md-6">
                      <label class="form-label text-muted small mb-0">Aadhar Number</label>
                      <div class="fw-semibold" id="viewAadhar">1234 5678 9012</div>
                    </div>
                    <div class="col-md-12">
                      <label class="form-label text-muted small mb-0">Registered Address</label>
                      <div class="fw-semibold small" id="viewAddress">123 Industrial Area, Andheri, Mumbai - 400053
                      </div>
                    </div>
                  </div>

                  <h6 class="fw-bold text-primary border-bottom pb-2 mt-4 mb-3">
                    <i class="fa-solid fa-file-shield me-2"></i>Compliance Status
                  </h6>
                  <div class="d-flex flex-wrap gap-2 mb-3">
                    <span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1">
                      <i class="fa-solid fa-check-circle me-1"></i>GST Verified
                    </span>
                    <span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1">
                      <i class="fa-solid fa-check-circle me-1"></i>PAN Verified
                    </span>
                    <span class="badge bg-success-subtle text-success border border-success-subtle px-2 py-1">
                      <i class="fa-solid fa-check-circle me-1"></i>Registration Active
                    </span>
                  </div>

                  <div class="bg-warning-subtle border border-warning-subtle rounded-3 p-3">
                    <label class="fw-bold text-warning-emphasis small mb-2">
                      <i class="fa-solid fa-triangle-exclamation me-1"></i>Pending Documents
                    </label>
                    <ul class="list-unstyled mb-0 small text-warning-emphasis">
                      <li class="mb-1"><i class="fa-solid fa-circle-exclamation me-2"></i>Trade License (Expired
                        05/01/24)</li>
                      <li><i class="fa-solid fa-circle-exclamation me-2"></i>Workmen Insurance Policy</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

            <!-- Right Column: Attendance Insights -->
            <div class="col-lg-6">
              <div class="card border-0 shadow-sm h-100 rounded-3">
                <div class="card-body">
                  <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                    <i class="fa-solid fa-chart-line me-2"></i>Attendance (Last 7 Days)
                  </h6>
                  <div id="attendanceGraph" style="min-height: 250px;"></div>
                  <div class="mt-3 text-center small text-muted">
                    <span class="me-3"><i class="fa-solid fa-circle text-primary me-1" style="font-size: 8px;"></i>Total
                      Workforce</span>
                    <span><i class="fa-solid fa-circle me-1" style="color: #00E396; font-size: 8px;"></i>Present</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer bg-light border-top-0 rounded-bottom-4">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
          <a href="contractor-profile.html" class="btn btn-primary-custom px-4 shadow-sm">
            <i class="fa-solid fa-arrow-right-to-bracket me-2"></i>Go to Full Profile
          </a>
        </div>
      </div>
    </div>
  </div>

  <!-- Edit Contractor Modal -->
  <div class="modal fade" id="editContractorModal" tabindex="-1">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content rounded-4">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">
            <i class="fa-solid fa-edit me-2"></i>Edit Contractor
          </h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa fa-times"></i>
          </button>
        </div>
        <div class="modal-body">
          <form id="editContractorForm">
            <div class="row g-4">
              <!-- Personal Details Section -->
              <div class="col-12">
                <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                  <i class="fa-solid fa-user me-2"></i>Personal Details
                </h6>
                <div class="row g-3">
                  <div class="col-md-3">
                    <label class="form-label">Title</label>
                    <select class="form-select" name="title" id="editTitle">
                      <option value="Mr">Mr.</option>
                      <option value="Mrs">Mrs.</option>
                      <option value="Ms">Ms.</option>
                    </select>
                  </div>
                  <div class="col-md-3">
                    <label class="form-label">Ownership %</label>
                    <input type="number" class="form-control" name="ownership" id="editOwnership" min="1" max="100">
                  </div>
                  <div class="col-md-3">
                    <label class="form-label">Age</label>
                    <input type="number" class="form-control" name="age" id="editAge" min="18" max="100">
                  </div>
                  <div class="col-md-3">
                    <label class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" name="dob" id="editDob">
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Full Name</label>
                    <input type="text" class="form-control" name="fullName" id="editFullName">
                  </div>
                </div>
              </div>

              <!-- Contact Information Section -->
              <div class="col-12">
                <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                  <i class="fa-solid fa-address-book me-2"></i>Contact Information
                </h6>
                <div class="row g-3">
                  <div class="col-md-12">
                    <label class="form-label">Address</label>
                    <textarea class="form-control" name="address" id="editAddress" rows="2"></textarea>
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">City</label>
                    <input type="text" class="form-control" name="city" id="editCity">
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">State</label>
                    <select class="form-select" name="state" id="editState">
                      <option value="">Select State</option>
                      <option value="Maharashtra">Maharashtra</option>
                      <option value="Delhi">Delhi</option>
                      <option value="Karnataka">Karnataka</option>
                      <option value="Tamil Nadu">Tamil Nadu</option>
                    </select>
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">Pincode</label>
                    <input type="text" class="form-control" name="pincode" id="editPincode" maxlength="6">
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">Telephone</label>
                    <input type="tel" class="form-control" name="telephone" id="editTelephone">
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">Mobile</label>
                    <input type="tel" class="form-control" name="mobile" id="editMobile" maxlength="10">
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" name="email" id="editEmail">
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">PAN Number</label>
                    <input type="text" class="form-control" name="pan" id="editPan" maxlength="10"
                      style="text-transform: uppercase">
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Aadhar Number</label>
                    <input type="text" class="form-control" name="aadhar" id="editAadhar" maxlength="12">
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Residence Type</label>
                    <div class="d-flex gap-3">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="residenceType" id="editResidenceRented"
                          value="Rented">
                        <label class="form-check-label" for="editResidenceRented">Rented</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="residenceType" id="editResidenceOwned"
                          value="Owned">
                        <label class="form-check-label" for="editResidenceOwned">Owned</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Entity Details Section -->
              <div class="col-12">
                <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                  <i class="fa-solid fa-building me-2"></i>Entity Details
                </h6>
                <div class="row g-3">
                  <div class="col-md-6">
                    <label class="form-label">Entity Type</label>
                    <select class="form-select" name="entityType" id="editEntityType">
                      <option value="">Select Type</option>
                      <option value="Proprietorship">Proprietorship</option>
                      <option value="LLP">LLP</option>
                      <option value="Pvt. Ltd">Pvt. Ltd</option>
                      <option value="Public Ltd">Public Ltd</option>
                      <option value="Partnership">Partnership</option>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Business Type</label>
                    <div class="d-flex gap-3">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="businessType" id="editBusinessManuf"
                          value="Manufacturing">
                        <label class="form-check-label" for="editBusinessManuf">Manufacturing</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="businessType" id="editBusinessService"
                          value="Services">
                        <label class="form-check-label" for="editBusinessService">Services</label>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label class="form-label">Entity Name</label>
                    <input type="text" class="form-control" name="entityName" id="editEntityName">
                  </div>
                  <div class="col-md-12">
                    <label class="form-label">Registered Office / Principal Place of Business</label>
                    <textarea class="form-control" name="registeredOffice" id="editRegisteredOffice"
                      rows="2"></textarea>
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Premises Type</label>
                    <div class="d-flex gap-3">
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="premisesType" id="editPremisesRented"
                          value="Rented">
                        <label class="form-check-label" for="editPremisesRented">Rented</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" name="premisesType" id="editPremisesOwned"
                          value="Owned">
                        <label class="form-check-label" for="editPremisesOwned">Owned</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Registration & Tax Section -->
              <div class="col-12">
                <h6 class="fw-bold text-primary border-bottom pb-2 mb-3">
                  <i class="fa-solid fa-file-invoice me-2"></i>Registration & Tax Information
                </h6>
                <div class="row g-3">
                  <div class="col-md-4">
                    <label class="form-label">Date of Incorporation</label>
                    <input type="date" class="form-control" name="incorporationDate" id="editIncorporationDate">
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">GST Number</label>
                    <input type="text" class="form-control" name="gst" id="editGst" maxlength="15"
                      style="text-transform: uppercase">
                    <small class="text-muted">Format: 22AAAAA0000A1Z5</small>
                  </div>
                  <div class="col-md-4">
                    <label class="form-label">Company PAN</label>
                    <input type="text" class="form-control" name="companyPan" id="editCompanyPan" maxlength="10"
                      style="text-transform: uppercase">
                    <small class="text-muted">Format: ABCDE1234F</small>
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Factory Assignment</label>
                    <select class="form-select" name="factory" id="editFactory">
                      <option value="">Select Factory</option>
                      <option value="Factory A - Mumbai">Factory A - Mumbai</option>
                      <option value="Factory B - Pune">Factory B - Pune</option>
                      <option value="Factory C - Delhi">Factory C - Delhi</option>
                      <option value="Factory D - Bangalore">Factory D - Bangalore</option>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <label class="form-label">Contractor Type</label>
                    <select class="form-select" name="contractorType" id="editContractorType">
                      <option value="">Select Type</option>
                      <option value="Primary Contractor">Primary Contractor</option>
                      <option value="Sub Contractor">Sub Contractor</option>
                      <option value="Vendor">Vendor</option>
                      <option value="Consultant">Consultant</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-primary-custom" id="saveContractorBtn">
            <i class="fa-solid fa-save me-1"></i>Save Changes
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Department Modal -->
  <div class="modal fade" id="addDeptModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Add Department</h5>
          <button type="button" class="modal-close-btn btn-close" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Department Name *</label>
            <input type="text" class="form-control" id="newDeptName" placeholder="e.g. Quality Assurance">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Department Code</label>
            <input type="text" class="form-control" id="newDeptCode" placeholder="e.g. QA">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Parent Department</label>
            <select class="form-select" id="newDeptParent">
              <option value="">None (Top Level)</option>
              <!-- Populated by JS -->
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white" id="saveDeptBtn">Save Department</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Designation Modal -->
  <div class="modal fade" id="addDesignationModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Add Designation</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Designation Name *</label>
            <input type="text" class="form-control" id="newDesignationName" placeholder="e.g. Senior Manager">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Department</label>
            <select class="form-select" id="newDesignationDept">
              <option value="Operations">Operations</option>
              <option value="HR">Human Resources</option>
              <option value="IT">IT</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Level</label>
            <select class="form-select" id="newDesignationLevel">
              <option value="Level 1">Level 1</option>
              <option value="Level 2">Level 2</option>
              <option value="Level 3">Level 3</option>
              <option value="Level 4">Level 4</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Reports To (Parent Designation)</label>
            <select class="form-select" id="newDesignationParent">
              <option value="">None (Top Level)</option>
              <!-- Populated by JS -->
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white" id="saveDesignationBtn">Save Designation</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Set Structure Modal (Expense Components) -->
  <div class="modal fade" id="setStructureModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content rounded-4 border-0 shadow-lg">
        <div class="modal-header border-bottom-0 pt-4 px-4 pb-2">
          <div class="d-flex align-items-center">
            <div class="bg-soft-orange p-2 rounded-3 me-3">
              <i class="fa-solid fa-layer-group text-orange"></i>
            </div>
            <div>
              <h5 class="modal-title fw-bold" style="font-size: 16px; color: #2b3a67;">EXPENSE COMPONENTS</h5>
              <p class="text-muted mb-0" style="font-size: 11px;">Configure statutory and custom labels</p>
            </div>
          </div>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <!-- Checkboxes Section -->
          <div class="bg-light p-3 rounded-4 mb-4">
            <h6 class="fw-bold mb-3" style="font-size: 11px; text-transform: uppercase; color: #7c8db5; letter-spacing: 0.5px;">Statutory Components</h6>
            <div class="d-flex flex-wrap gap-4">
              <div class="form-check custom-check">
                <input class="form-check-input" type="checkbox" id="pfCheck" checked>
                <label class="form-check-label small fw-bold" for="pfCheck" style="color: #4a5073;">Provident Fund</label>
              </div>
              <div class="form-check custom-check">
                <input class="form-check-input" type="checkbox" id="esicCheck" checked>
                <label class="form-check-label small fw-bold" for="esicCheck" style="color: #4a5073;">ESIC</label>
              </div>
              <div class="form-check custom-check">
                <input class="form-check-input" type="checkbox" id="lwfCheck">
                <label class="form-check-label small fw-bold" for="lwfCheck" style="color: #4a5073;">LWF</label>
              </div>
            </div>
          </div>

          <!-- Dynamic Label Fields Section -->
          <h6 class="fw-bold mb-3 px-1" style="font-size: 11px; text-transform: uppercase; color: #7c8db5; letter-spacing: 0.5px;">Custom Labels</h6>
          <div id="dynamicLabelsContainer" class="px-1">
            <div class="mb-3 label-row pb-2 border-bottom border-light">
              <div class="row align-items-center">
                <div class="col-5">
                  <label class="form-label small fw-semibold text-muted mb-0">Label 1</label>
                </div>
                <div class="col-7">
                  <select class="form-select form-select-sm border-0 bg-light fw-medium">
                    <option selected>Mandatory</option>
                    <option>Optional</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- ... more labels will have similar styling ... -->
            <div class="mb-3 label-row pb-2 border-bottom border-light">
              <div class="row align-items-center">
                <div class="col-5">
                  <label class="form-label small fw-semibold text-muted mb-0">Label 2</label>
                </div>
                <div class="col-7">
                  <select class="form-select form-select-sm border-0 bg-light fw-medium">
                    <option selected>Mandatory</option>
                    <option>Optional</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="mb-3 label-row pb-2 border-bottom border-light">
              <div class="row align-items-center">
                <div class="col-5">
                  <label class="form-label small fw-semibold text-muted mb-0">Label 3</label>
                </div>
                <div class="col-7">
                  <select class="form-select form-select-sm border-0 bg-light fw-medium">
                    <option selected>Mandatory</option>
                    <option>Optional</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="mb-3 label-row pb-2 border-bottom border-light">
              <div class="row align-items-center">
                <div class="col-5">
                  <label class="form-label small fw-semibold text-muted mb-0">Label 4</label>
                </div>
                <div class="col-7">
                  <select class="form-select form-select-sm border-0 bg-light fw-medium">
                    <option selected>Mandatory</option>
                    <option>Optional</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="mb-3 label-row pb-2">
              <div class="row align-items-center">
                <div class="col-5">
                  <label class="form-label small fw-semibold text-muted mb-0">Label 5</label>
                </div>
                <div class="col-7">
                  <select class="form-select form-select-sm border-0 bg-light fw-medium">
                    <option selected>Mandatory</option>
                    <option>Optional</option>
                  </select>
                </div>
              </div>
            </div>
          </div>

          <button class="btn btn-sm btn-light mt-3 w-100 py-2 border fw-bold text-muted" id="addMoreLabels" style="font-size: 11px; border-radius: 8px;">
            <i class="fa-solid fa-plus-circle me-1 text-orange"></i> ADD MORE CUSTOM LABELS
          </button>
        </div>
        <div class="modal-footer border-0 p-4 pt-1">
          <button type="button" class="btn btn-light px-4 py-2 small fw-bold text-muted rounded-3" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange px-4 py-2 small fw-bold rounded-3 shadow-sm" id="saveStructure">Save Configuration</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Category Modal -->
  <div class="modal fade" id="addCategoryModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Add Employee Category</h5>
          <button type="button" class="btn btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Category Name *</label>
            <input type="text" class="form-control" id="newCategoryName" placeholder="e.g. Intern">
          </div>
          <div class="mb-1">
            <label class="form-label fw-bold">Type</label>
            <select class="form-select" id="newCategoryType">
              <option value="System Default">System Default</option>
              <option value="External">External</option>
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white" id="saveCategoryBtn">Save Category</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Expense Category Modal -->
  <div class="modal fade" id="addExpenseCategoryModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content shadow-lg border-0" style="border-radius: 20px;">
        <div class="modal-header border-0 pb-0 p-4">
          <h5 class="modal-title fw-bold"><i class="fa-solid fa-plus-circle text-orange me-2"></i>Add Expense Category</h5>
          <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold small text-muted text-uppercase">Category Name *</label>
            <input type="text" class="form-control rounded-3" placeholder="e.g. Local Conveyance">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold small text-muted text-uppercase">Description</label>
            <textarea class="form-control rounded-3" rows="2" placeholder="Brief description of the expense type..."></textarea>
          </div>
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label fw-bold small text-muted text-uppercase">Default Limit</label>
              <div class="input-group">
                <span class="input-group-text bg-light border-end-0">₹</span>
                <input type="number" class="form-control border-start-0 ps-0" placeholder="0.00">
              </div>
            </div>
            <div class="col-md-6">
              <label class="form-label fw-bold small text-muted text-uppercase">Status</label>
              <select class="form-select rounded-3">
                <option value="Active">Active</option>
                <option value="Inactive">Inactive</option>
              </select>
            </div>
          </div>
        </div>
        <div class="modal-footer border-0 p-4 pt-0">
          <button type="button" class="btn btn-light px-4 rounded-pill fw-bold" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white px-4 rounded-pill fw-bold shadow-sm">Save Category</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Fixed Salary Headers Modal -->
  <div class="modal fade" id="fixedSalaryHeadersModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold" id="salaryModalTitle">Fixed Salary Headers</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <input type="hidden" id="editingSalaryId">
          <div class="mb-3">
            <label class="form-label fw-bold">Formula Name *</label>
            <input type="text" class="form-control" id="salaryFormulaName" placeholder="e.g. Standard Operations v1">
          </div>
          <div class="mb-4">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="salaryComplianceCheck">
              <label class="form-check-label fw-bold" for="salaryComplianceCheck">
                COMPLIANCE <span class="text-muted fw-normal small ms-1">(Select if Compliant)</span>
              </label>
            </div>
          </div>

          <div class="label-section">
            <label class="form-label fw-bold mb-2">Salary Components</label>
            <div id="salaryLabelsContainer">
              <!-- Dynamically populated -->
            </div>
            <button class="btn btn-sm btn-link text-orange p-0 mt-2 fw-bold" id="addMoreSalaryLabel">
              <i class="fa-solid fa-plus me-1"></i> Add More
            </button>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white px-4" id="saveSalaryStructure">Save</button>
        </div>
      </div>
    </div>
  </div>

  <!-- View Salary Structure Modal -->
  <div class="modal fade" id="viewSalaryStructureModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header border-0 pb-0">
          <h5 class="modal-title fw-bold">Salary Structure Details</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-4 text-center">
            <h5 id="viewFormulaName" class="fw-bold mb-1"></h5>
            <span id="viewComplianceBadge" class="badge"></span>
          </div>
          
          <h6 class="fw-bold mb-3 small text-uppercase text-muted letter-spacing-1">Components List</h6>
          <div id="viewComponentsList" class="border rounded bg-light p-3">
            <!-- Populated by JS -->
          </div>
        </div>
        <div class="modal-footer border-0 pt-0">
          <button type="button" class="btn btn-light w-100" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Leave Rule Modal -->
  <div class="modal fade" id="addLeaveRuleModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold" id="leaveModalTitle">Create New Leave Rule</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <form id="leaveRulesForm">
            <input type="hidden" id="editingLeaveId">
            <div class="row g-3">
              <!-- Company & Factory (Read-only) -->
              <div class="col-md-6">
                <label class="form-label fw-bold small">Company Name</label>
                <input type="text" class="form-control form-control-sm bg-light" value="Arthum Enterprise Solutions" readonly>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small">Factory Name</label>
                <input type="text" class="form-control form-control-sm bg-light" value="Main Factory - Unit 1" readonly>
              </div>

              <!-- Leave Name & Formula -->
              <div class="col-md-6">
                <label class="form-label fw-bold small">Leave Name *</label>
                <input type="text" class="form-control form-control-sm" id="leaveName" placeholder="e.g. Earned Leave" required>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small">Formula Name</label>
                <select class="form-select form-select-sm" id="leaveFormula">
                  <option value="">Select Formula</option>
                  <option value="Standard">Standard Accrual</option>
                  <option value="Pro-rata">Pro-rata Basis</option>
                  <option value="Fixed">Fixed Allocation</option>
                </select>
              </div>

              <!-- Credit Cycle & Amount -->
              <div class="col-md-6">
                <label class="form-label fw-bold small">Credit Cycle</label>
                <select class="form-select form-select-sm" id="creditCycle">
                  <option value="Monthly">Monthly</option>
                  <option value="Quarterly">Quarterly</option>
                  <option value="Half-Yearly">Half-Yearly</option>
                  <option value="Yearly">Yearly</option>
                </select>
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small">Given to employee on cycle (Days)</label>
                <input type="number" class="form-control form-control-sm" id="creditAmount" placeholder="e.g. 1.5">
              </div>

              <!-- Rules: Sandwich & Carry Forward -->
              <div class="col-md-4">
                <label class="form-label fw-bold small">Sandwich Rule</label>
                <select class="form-select form-select-sm" id="sandwichRule">
                  <option value="No">No</option>
                  <option value="Yes">Yes</option>
                </select>
              </div>
              <div class="col-md-4">
                <label class="form-label fw-bold small">Yearly Carry Forward</label>
                <select class="form-select form-select-sm" id="carryForward">
                  <option value="No">No</option>
                  <option value="Yes">Yes</option>
                </select>
              </div>
              <div class="col-md-4">
                <label class="form-label fw-bold small">Carry Forward Limit (Next Year)</label>
                <input type="number" class="form-control form-control-sm" id="cfLimit" placeholder="e.g. 15">
              </div>

              <!-- Eligibility & Status -->
              <div class="col-md-6">
                <label class="form-label fw-bold small">Employee Eligibility (Days after joining)</label>
                <input type="number" class="form-control form-control-sm" id="eligibilityDays" placeholder="0 = Immediate">
              </div>
              <div class="col-md-6">
                <label class="form-label fw-bold small">Status</label>
                <select class="form-select form-select-sm" id="leaveStatus">
                  <option value="Active">Active</option>
                  <option value="Inactive">Inactive</option>
                </select>
              </div>

              <!-- Credit Date -->
              <div class="col-md-6">
                <label class="form-label fw-bold small">Start Credit Date</label>
                <input type="month" class="form-control form-control-sm" id="startCreditDate">
              </div>

              <!-- Checkboxes -->
              <div class="col-md-12">
                <div class="d-flex gap-4">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="addBalanceIneligible">
                    <label class="form-check-label small" for="addBalanceIneligible">
                      Add to Leave Balance if employee is ineligible
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="isPredefined">
                    <label class="form-check-label small" for="isPredefined">
                      Is Predefined Leave
                    </label>
                  </div>
                </div>
              </div>

              <!-- File Upload -->
              <div class="col-md-12">
                <label class="form-label fw-bold small">Upload Attachments (Excel only)</label>
                <div class="input-group input-group-sm">
                  <input type="file" class="form-control" id="leaveExcelUpload" accept=".xlsx, .xls">
                  <button class="btn btn-outline-secondary" type="button"><i class="fa-solid fa-upload"></i></button>
                </div>
                <div class="mt-1">
                  <a href="#" class="text-orange small fw-bold text-decoration-none"><i class="fa-solid fa-download me-1"></i>Download Template</a>
                </div>
              </div>

              <!-- Description -->
              <div class="col-md-12">
                <label class="form-label fw-bold small">Description</label>
                <textarea class="form-control form-control-sm" id="leaveDescription" rows="3" placeholder="Enter leave rule policy description..."></textarea>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white px-4" id="saveLeaveRule">Save Leave Rule</button>
        </div>
      </div>
    </div>
  </div>

  <!-- View Leave Rule Modal -->
  <div class="modal fade" id="viewLeaveRuleModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header border-0 pb-0">
          <h5 class="modal-title fw-bold">Leave Policy Details</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-4 text-center">
            <h5 id="viewLeaveRuleName" class="fw-bold mb-1"></h5>
            <span id="viewLeaveStatusBadge" class="badge"></span>
          </div>
          
          <div class="bg-light rounded p-3 small">
            <div class="row g-3">
              <div class="col-6">
                <p class="text-muted mb-0">Formula</p>
                <p id="viewLeaveFormula" class="fw-bold mb-0"></p>
              </div>
              <div class="col-6">
                <p class="text-muted mb-0">Credit Cycle</p>
                <p id="viewLeaveCycle" class="fw-bold mb-0"></p>
              </div>
              <div class="col-6">
                <p class="text-muted mb-0">Credit Amount</p>
                <p id="viewLeaveAmount" class="fw-bold mb-0"></p>
              </div>
              <div class="col-6">
                <p class="text-muted mb-0">Eligibility</p>
                <p id="viewLeaveEligibility" class="fw-bold mb-0"></p>
              </div>
              <div class="col-6">
                <p class="text-muted mb-0">Carry Forward Limit</p>
                <p id="viewLeaveCFLimit" class="fw-bold mb-0"></p>
              </div>
              <div class="col-6">
                <p class="text-muted mb-0">Sandwich Rule</p>
                <p id="viewLeaveSandwich" class="fw-bold mb-0"></p>
              </div>
              <div class="col-12 border-top pt-2">
                <p class="text-muted mb-0">Description</p>
                <p id="viewLeaveDesc" class="mb-0 text-secondary"></p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer border-0 pt-0">
          <button type="button" class="btn btn-light w-100" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Salary Calculator Modal -->
  <div class="modal fade" id="salaryCalculatorModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden">
        <div class="modal-header bg-orange text-white p-4 border-0">
          <div class="d-flex align-items-center">
            <div class="stat-icon bg-white text-orange me-3" style="width: 45px; height: 45px; border-radius: 12px;">
              <i class="fa-solid fa-calculator"></i>
            </div>
            <div>
              <h5 class="modal-title fw-bold mb-0">Salary Formula Calculator</h5>
              <div class="d-flex align-items-center gap-2 mt-1">
                 <span class="badge bg-white text-orange small py-0 px-2" id="modalFactoryDisplay" style="font-size: 10px;">factory</span>
                 <span class="badge bg-white text-orange small py-0 px-2" id="modalStructureDisplay" style="font-size: 10px;">salaryhead</span>
              </div>
            </div>
          </div>
          <button type="button" class="btn-close btn-close shadow-none" data-bs-dismiss="modal">
          <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        
        <div class="modal-body p-0 bg-light">
          <div class="row g-0">
            <!-- Left Side: Formula Builder -->
            <div class="col-lg-8 p-4">
              <!-- Result Display -->
              <div class="formula-display-card mb-4">
                <div class="d-flex justify-content-between align-items-center mb-2">
                  <span class="text-muted small fw-bold text-uppercase">Formula Preview</span>
                  <div class="badge bg-soft-orange text-orange" id="calcRoundDisplay">NO ROUND</div>
                </div>
                <div class="formula-input-wrapper p-3 rounded-3 bg-white border">
                  <textarea id="mainCalcDisplay" class="form-control border-0 shadow-none fw-bold text-dark p-0" rows="3" placeholder="Click components to build formula..." readonly style="resize: none; font-size: 1.25rem; font-family: 'Courier New', Courier, monospace;"></textarea>
                </div>
                <div class="mt-3 d-flex justify-content-between">
                  <div class="d-flex gap-2">
                    <button class="btn btn-sm btn-outline-secondary px-3" onclick="clearCalculator()">
                      <i class="fa-solid fa-eraser me-1"></i> Clear All
                    </button>
                    <button class="btn btn-sm btn-outline-secondary px-3" onclick="backspaceCalculator()">
                      <i class="fa-solid fa-delete-left me-1"></i> Delete
                    </button>
                  </div>
                  <div class="input-group input-group-sm w-auto">
                    <span class="input-group-text bg-white border-end-0 text-muted">Round:</span>
                    <select id="calcRoundSelect" class="form-select border-start-0 shadow-none ps-0" style="width: 130px;" onchange="updateRoundingDisplay()">
                      <option value="ROUNDNO">No Round</option>
                      <option value="ROUNDOFF">Round-Off</option>
                      <option value="ROUNDUP">Round-Up</option>
                      <option value="ROUNDDOWN">Round-Down</option>
                    </select>
                  </div>
                </div>
              </div>

              <!-- Calculator Grid -->
              <div class="calc-grid-wrapper">
                <div class="row g-2 mb-2">
                  <div class="col-9">
                    <div class="grid-section-label mb-2">Numbers & Basic Math</div>
                    <div class="calculator-grid">
                      <button class="calc-btn btn-num" onclick="addValue('1')">1</button>
                      <button class="calc-btn btn-num" onclick="addValue('2')">2</button>
                      <button class="calc-btn btn-num" onclick="addValue('3')">3</button>
                      <button class="calc-btn btn-opr" onclick="addValue('+')">+</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('4')">4</button>
                      <button class="calc-btn btn-num" onclick="addValue('5')">5</button>
                      <button class="calc-btn btn-num" onclick="addValue('6')">6</button>
                      <button class="calc-btn btn-opr" onclick="addValue('-')">-</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('7')">7</button>
                      <button class="calc-btn btn-num" onclick="addValue('8')">8</button>
                      <button class="calc-btn btn-num" onclick="addValue('9')">9</button>
                      <button class="calc-btn btn-opr" onclick="addValue('*')">×</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('0')">0</button>
                      <button class="calc-btn btn-num" onclick="addValue('.')">.</button>
                      <button class="calc-btn btn-opr btn-logic" onclick="addValue(',')">,</button>
                      <button class="calc-btn btn-opr" onclick="addValue('/')">÷</button>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="grid-section-label mb-2">Grouping</div>
                    <div class="calculator-grid columns-1">
                      <button class="calc-btn btn-opr" onclick="addValue('(')">(</button>
                      <button class="calc-btn btn-opr" onclick="addValue(')')">)</button>
                      <div class="grid-section-label mt-2 mb-2">Logic</div>
                      <button class="calc-btn btn-logic" onclick="addValue('IFSTART(')">IF</button>
                      <button class="calc-btn btn-logic" onclick="addValue(')IFEND')">END</button>
                    </div>
                  </div>
                </div>
                
                <div class="row g-2">
                  <div class="col-12">
                     <div class="grid-section-label mb-2">Comparison</div>
                     <div class="d-flex gap-2">
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('>')">&gt;</button>
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('<')">&lt;</button>
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('=')">=</button>
                     </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Right Side: Salary Components -->
            <div class="col-lg-4 bg-white border-start p-4">
              <!-- Dynamic Saved Formulas Section -->
              <div id="savedComponentsWrapper" class="mb-4">
                <h6 class="fw-bold mb-3 d-flex align-items-center">
                  <i class="fa-solid fa-bolt text-orange me-2"></i> Saved Formulas
                </h6>
                <div class="row g-2" id="savedComponentsGrid">
                  <!-- Dynamically injected buttons go here -->
                </div>
              </div>

              <h6 class="fw-bold mb-3 d-flex align-items-center">
                <i class="fa-solid fa-list-check text-orange me-2"></i> Salary Components
              </h6>
              <div class="mb-3">
                <input type="text" class="form-control form-control-sm border-0 bg-light shadow-none" placeholder="Search components..." id="compSearch">
              </div>
              <div class="component-list-scroll" style="height: 380px; overflow-y: auto;">
                <div class="list-group list-group-flush" id="calcComponentList">
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('BASIC')">
                    <span class="small fw-semibold">BASIC</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('HRA')">
                    <span class="small fw-semibold">HRA</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('CONVEYANCE')">
                    <span class="small fw-semibold">CONVEYANCE</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('MEDICAL')">
                    <span class="small fw-semibold">MEDICAL</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('SPECIAL ALLOWANCE')">
                    <span class="small fw-semibold">SPECIAL ALLOWANCE</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('PF_EMPLOYER')">
                    <span class="small fw-semibold">PF EMPLOYER</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('ESIC_EMPLOYER')">
                    <span class="small fw-semibold">ESIC EMPLOYER</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('GROSS')">
                    <span class="small fw-semibold">GROSS</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                   <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('CTC')">
                    <span class="small fw-semibold">CTC</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="modal-footer p-4 border-top bg-white">
          <div class="w-100 d-flex justify-content-between align-items-center">
             <div class="text-muted d-none d-md-block">
               <i class="fa-solid fa-circle-info me-1"></i> <span class="small">Click components to build formula sequentially.</span>
             </div>
             <div class="d-flex gap-2">
               <button type="button" class="btn btn-light px-4 rounded-pill fw-bold" data-bs-dismiss="modal">Cancel</button>
               <button type="button" class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold" onclick="saveCalculatorFormula()">
                 <i class="fa-solid fa-check-double me-2"></i> Save Formula
               </button>
             </div>
          </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Expense Calculator Modal -->
  <div class="modal fade" id="expenseCalculatorModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden">
        <div class="modal-header bg-orange text-white p-4 border-0">
          <div class="d-flex align-items-center">
            <div class="stat-icon bg-white text-orange me-3" style="width: 45px; height: 45px; border-radius: 12px;">
              <i class="fa-solid fa-calculator"></i>
            </div>
            <div>
              <h5 class="modal-title fw-bold mb-0" id="expenseCalcModalTitle">Expense Formula Calculator</h5>
              <div class="d-flex align-items-center gap-2 mt-1">
                 <span class="badge bg-white text-orange small py-0 px-2" id="modalFactoryDisplay" style="font-size: 10px;">factory</span>
                 <span class="badge bg-white text-orange small py-0 px-2" id="modalStructureDisplay" style="font-size: 10px;">salaryhead</span>
              </div>
            </div>
          </div>
          <button type="button" class="btn-close btn-close shadow-none" data-bs-dismiss="modal">
          <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        
        <div class="modal-body p-0 bg-light">
          <div class="row g-0">
            <!-- Left Side: Formula Builder -->
            <div class="col-lg-8 p-4">
              <!-- Result Display -->
              <div class="formula-display-card mb-4">
                <div class="d-flex justify-content-between align-items-center mb-2">
                  <span class="text-muted small fw-bold text-uppercase">Formula Preview</span>
                  <div class="badge bg-soft-orange text-orange" id="calcRoundDisplay">NO ROUND</div>
                </div>
                <div class="formula-input-wrapper p-3 rounded-3 bg-white border">
                  <textarea id="mainCalcDisplay" class="form-control border-0 shadow-none fw-bold text-dark p-0" rows="3" placeholder="Click components to build formula..." readonly style="resize: none; font-size: 1.25rem; font-family: 'Courier New', Courier, monospace;"></textarea>
                </div>
                <div class="mt-3 d-flex justify-content-between">
                  <div class="d-flex gap-2">
                    <button class="btn btn-sm btn-outline-secondary px-3" onclick="clearCalculator()">
                      <i class="fa-solid fa-eraser me-1"></i> Clear All
                    </button>
                    <button class="btn btn-sm btn-outline-secondary px-3" onclick="backspaceCalculator()">
                      <i class="fa-solid fa-delete-left me-1"></i> Delete
                    </button>
                  </div>
                  <div class="input-group input-group-sm w-auto">
                    <span class="input-group-text bg-white border-end-0 text-muted">Round:</span>
                    <select id="calcRoundSelect" class="form-select border-start-0 shadow-none ps-0" style="width: 130px;" onchange="updateRoundingDisplay()">
                      <option value="ROUNDNO">No Round</option>
                      <option value="ROUNDOFF">Round-Off</option>
                      <option value="ROUNDUP">Round-Up</option>
                      <option value="ROUNDDOWN">Round-Down</option>
                    </select>
                  </div>
                </div>
              </div>

              <!-- Calculator Grid -->
              <div class="calc-grid-wrapper">
                <div class="row g-2 mb-2">
                  <div class="col-9">
                    <div class="grid-section-label mb-2">Numbers & Basic Math</div>
                    <div class="calculator-grid">
                      <button class="calc-btn btn-num" onclick="addValue('1')">1</button>
                      <button class="calc-btn btn-num" onclick="addValue('2')">2</button>
                      <button class="calc-btn btn-num" onclick="addValue('3')">3</button>
                      <button class="calc-btn btn-opr" onclick="addValue('+')">+</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('4')">4</button>
                      <button class="calc-btn btn-num" onclick="addValue('5')">5</button>
                      <button class="calc-btn btn-num" onclick="addValue('6')">6</button>
                      <button class="calc-btn btn-opr" onclick="addValue('-')">-</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('7')">7</button>
                      <button class="calc-btn btn-num" onclick="addValue('8')">8</button>
                      <button class="calc-btn btn-num" onclick="addValue('9')">9</button>
                      <button class="calc-btn btn-opr" onclick="addValue('*')">×</button>
                      
                      <button class="calc-btn btn-num" onclick="addValue('0')">0</button>
                      <button class="calc-btn btn-num" onclick="addValue('.')">.</button>
                      <button class="calc-btn btn-opr btn-logic" onclick="addValue(',')">,</button>
                      <button class="calc-btn btn-opr" onclick="addValue('/')">÷</button>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="grid-section-label mb-2">Grouping</div>
                    <div class="calculator-grid columns-1">
                      <button class="calc-btn btn-opr" onclick="addValue('(')">(</button>
                      <button class="calc-btn btn-opr" onclick="addValue(')')">)</button>
                      <div class="grid-section-label mt-2 mb-2">Logic</div>
                      <button class="calc-btn btn-logic" onclick="addValue('IFSTART(')">IF</button>
                      <button class="calc-btn btn-logic" onclick="addValue(')IFEND')">END</button>
                    </div>
                  </div>
                </div>
                
                <div class="row g-2">
                  <div class="col-12">
                     <div class="grid-section-label mb-2">Comparison</div>
                     <div class="d-flex gap-2">
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('>')">&gt;</button>
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('<')">&lt;</button>
                       <button class="calc-btn btn-logic flex-grow-1" onclick="addValue('=')">=</button>
                     </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Right Side: Salary Components -->
            <div class="col-lg-4 bg-white border-start p-4">
              <!-- Dynamic Saved Formulas Section -->
              <div id="savedComponentsWrapper" class="mb-4">
                <h6 class="fw-bold mb-3 d-flex align-items-center">
                  <i class="fa-solid fa-bolt text-orange me-2"></i> Saved Formulas
                </h6>
                <div class="row g-2" id="savedComponentsGrid">
                  <!-- Dynamically injected buttons go here -->
                </div>
              </div>

              <h6 class="fw-bold mb-3 d-flex align-items-center">
                <i class="fa-solid fa-list-check text-orange me-2"></i> Salary Components
              </h6>
              <div class="mb-3">
                <input type="text" class="form-control form-control-sm border-0 bg-light shadow-none" placeholder="Search components..." id="compSearch">
              </div>
              <div class="component-list-scroll" style="height: 380px; overflow-y: auto;">
                <div class="list-group list-group-flush" id="calcComponentList">
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('BASIC')">
                    <span class="small fw-semibold">BASIC</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('HRA')">
                    <span class="small fw-semibold">HRA</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('CONVEYANCE')">
                    <span class="small fw-semibold">CONVEYANCE</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('MEDICAL')">
                    <span class="small fw-semibold">MEDICAL</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('SPECIAL ALLOWANCE')">
                    <span class="small fw-semibold">SPECIAL ALLOWANCE</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('PF_EMPLOYER')">
                    <span class="small fw-semibold">PF EMPLOYER</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('ESIC_EMPLOYER')">
                    <span class="small fw-semibold">ESIC EMPLOYER</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                  <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('GROSS')">
                    <span class="small fw-semibold">GROSS</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                   <button class="list-group-item list-group-item-action d-flex justify-content-between align-items-center border-0 rounded-3 mb-1" onclick="addValue('CTC')">
                    <span class="small fw-semibold">CTC</span>
                    <i class="fa-solid fa-plus-circle text-muted small"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="modal-footer p-4 border-top bg-white">
          <div class="w-100 d-flex justify-content-between align-items-center">
             <div class="text-muted d-none d-md-block">
               <i class="fa-solid fa-circle-info me-1"></i> <span class="small">Click components to build formula sequentially.</span>
             </div>
             <div class="d-flex gap-2">
               <button type="button" class="btn btn-light px-4 rounded-pill fw-bold" data-bs-dismiss="modal">Cancel</button>
               <button type="button" class="btn btn-orange text-white px-5 rounded-pill shadow-sm fw-bold" onclick="saveCalculatorFormula()">
                 <i class="fa-solid fa-check-double me-2"></i> Save Formula
               </button>
             </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <style>
    /* Calculator Specific Styles */
    .formula-display-card {
      transition: all 0.3s ease;
    }
    .formula-input-wrapper {
      background: #fdfdfd;
      box-shadow: inset 0 2px 4px rgba(0,0,0,0.05);
      border: 1px solid #edf2f7 !important;
    }
    .grid-section-label {
      font-size: 10px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      color: #718096;
    }
    .calculator-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 8px;
    }
    .calculator-grid.columns-1 {
      grid-template-columns: 1fr;
    }
    .calc-btn {
      height: 48px;
      border: none;
      border-radius: 10px;
      font-weight: 700;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: all 0.2s;
      box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    }
    .btn-num {
      background-color: white;
      color: #2d3748;
    }
    .btn-num:hover {
      background-color: #edf2f7;
      transform: translateY(-2px);
    }
    .btn-opr {
      background-color: #f7fafc;
      color: #4a5568;
      font-size: 1.25rem;
    }
    .btn-opr:hover {
      background-color: #cbd5e0;
      color: #2d3748;
    }
    .btn-logic {
      background-color: #fffaf0;
      color: #dd6b20;
      font-size: 0.85rem;
    }
    .btn-logic:hover {
      background-color: #feebc8;
      transform: translateY(-2px);
    }
    .component-list-scroll::-webkit-scrollbar {
      width: 4px;
    }
    .component-list-scroll::-webkit-scrollbar-track {
      background: #f1f1f1;
    }
    .component-list-scroll::-webkit-scrollbar-thumb {
      background: #e2e8f0;
      border-radius: 10px;
    }
    .list-group-item:hover {
      background-color: #fff5eb !important;
      color: #E4520D !important;
    }
  </style>

  <!-- Configuration Field Modal -->
  <div class="modal fade" id="addConfigFieldModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Add Custom Field</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Field Label *</label>
            <input type="text" class="form-control" id="configFieldLabel" placeholder="e.g. Passport Number">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Field Type *</label>
            <select class="form-select" id="configFieldType">
              <option value="text">Text</option>
              <option value="number">Number</option>
              <option value="date">Date</option>
              <option value="select">Dropdown</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Placeholder</label>
            <input type="text" class="form-control" id="configFieldPlaceholder" placeholder="e.g. Enter passport number">
          </div>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="configFieldRequired">
            <label class="form-check-label" for="configFieldRequired">Mark as Required</label>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white" id="saveConfigFieldBtn">Save Field</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Configuration Document Modal -->
  <div class="modal fade" id="addConfigDocModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Add Document Requirement</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Document Name *</label>
            <input type="text" class="form-control" id="configDocLabel" placeholder="e.g. Medical Fitness Certificate">
          </div>
          <div class="mb-3">
            <label class="form-label fw-bold">Accepted Formats</label>
            <div class="d-flex gap-3">
              <label class="form-check small"><input type="checkbox" class="form-check-input" checked disabled>
                PDF</label>
              <label class="form-check small"><input type="checkbox" class="form-check-input" checked> JPG/PNG</label>
            </div>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="configDocRequired" checked>
            <label class="form-check-label" for="configDocRequired">Mark as Mandatory</label>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange text-white" id="saveConfigDocBtn">Save Requirement</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Reject Modal -->
  <div class="modal fade" id="rejectModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Reject Employee Application</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Reason for Rejection</label>
            <textarea class="form-control" rows="4" placeholder="Please provide a clear reason for rejection..."></textarea>
          </div>
          <div class="alert alert-soft-danger small">
            <i class="fa-solid fa-circle-info me-2"></i> This will notify the supervisor and move the employee to the Rejected list.
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-danger">Confirm Reject</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Send Back Modal -->
  <div class="modal fade" id="sendBackModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title fw-bold">Send Back for Correction</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="mb-3">
            <label class="form-label fw-bold">Correction Instructions</label>
            <textarea class="form-control" rows="4" placeholder="Describe what needs to be fixed..."></textarea>
          </div>
          <div class="alert alert-soft-info small">
            <i class="fa-solid fa-circle-info me-2"></i> The application will be returned to the supervisor for edits.
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-orange">Send Back</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Approval Details Modal -->
  <div class="modal fade" id="approvalDetailsModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header bg-light">
          <h5 class="modal-title fw-bold">Review Approval Request</h5>
          <button type="button" class="btn-close modal-close-btn" data-bs-dismiss="modal">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-4">
          <div class="row g-4">
            <div class="col-md-4 text-center border-end">
              <div id="appvAvatar" class="avatar-lg rounded-circle mx-auto d-flex align-items-center justify-content-center mb-3 text-white" 
                   style="width: 80px; height: 80px; font-size: 32px;"></div>
              <h5 id="appvName" class="fw-bold mb-1"></h5>
              <p id="appvId" class="text-muted small mb-3"></p>
              <div class="badge bg-soft-warning text-warning px-3 py-2 mb-3">Pending Approval</div>
            </div>
            <div class="col-md-8">
              <h6 class="fw-bold mb-3 d-flex align-items-center">
                <i class="fa-solid fa-user-gear text-orange me-2"></i> Employment Information
              </h6>
              <div class="row g-3 mb-4">
                <div class="col-6">
                  <div class="text-muted small">Contractor</div>
                  <div id="appvContractor" class="fw-bold"></div>
                </div>
                <div class="col-6">
                  <div class="text-muted small">Supervisor</div>
                  <div id="appvSupervisor" class="fw-bold"></div>
                </div>
                <div class="col-6">
                  <div class="text-muted small">Department</div>
                  <div id="appvDept" class="fw-bold"></div>
                </div>
                <div class="col-6">
                  <div class="text-muted small">Role/Position</div>
                  <div id="appvRole" class="fw-bold"></div>
                </div>
              </div>

              <h6 class="fw-bold mb-3 d-flex align-items-center">
                <i class="fa-solid fa-file-invoice text-orange me-2"></i> Documents Submitted
              </h6>
              <div class="document-list bg-light p-3 rounded">
                <div class="d-flex justify-content-between align-items-center mb-2 pb-2 border-bottom">
                  <div class="small"><i class="fa-solid fa-id-card me-2 text-primary"></i> Govt ID Proof (Aadhar/PAN)</div>
                  <a href="#" class="btn btn-sm btn-outline-primary py-0" style="font-size: 11px"><i class="fa-solid fa-download"></i> View</a>
                </div>
                <div class="d-flex justify-content-between align-items-center mb-2 pb-2 border-bottom">
                  <div class="small"><i class="fa-solid fa-graduation-cap me-2 text-success"></i> Educational Certificates</div>
                  <a href="#" class="btn btn-sm btn-outline-primary py-0" style="font-size: 11px"><i class="fa-solid fa-download"></i> View</a>
                </div>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="small"><i class="fa-solid fa-file-contract me-2 text-info"></i> Contractor Agreement</div>
                  <a href="#" class="btn btn-sm btn-outline-primary py-0" style="font-size: 11px"><i class="fa-solid fa-download"></i> View</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer bg-light">
          <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-outline-danger" onclick="confirmAction('reject')">Reject Request</button>
          <button type="button" class="btn btn-success px-4" onclick="confirmAction('approve')">Approve Now</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Formula Setup Modal (Refined) -->
  <div class="modal fade" id="formulaSetupModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content border-0 shadow-lg" style="border-radius: 15px; overflow: hidden;">
        <div class="modal-header bg-white border-bottom py-3 px-4">
          <div class="d-flex align-items-center">
            <div class="stat-icon bg-soft-orange text-orange me-3 mb-0" style="width: 40px; height: 40px;">
              <i class="fa-solid fa-square-root-variable"></i>
            </div>
            <div>
              <h5 class="modal-title fw-bold text-dark mb-0">Formula Configuration</h5>
              <p class="text-muted small mb-0">Define variables and calculations for <span id="formulaContextLabel" class="fw-bold text-orange">Main Formula</span></p>
            </div>
          </div>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
        <div class="modal-body p-0 d-flex" style="height: 70vh;">
          <!-- Main Content Area -->
          <div class="flex-grow-1 p-4" style="overflow-y: auto; scroll-behavior: smooth;" id="formulaModalBody">
            <div class="mb-4 px-2 border-bottom pb-4">
               <label class="form-label fw-bold small text-muted text-uppercase mb-2">Formula Information</label>
               <input type="text" class="form-control border-0 bg-light shadow-sm p-3 rounded-4" id="formFormulaName" placeholder="Enter Formula Name (e.g. salaryhead)" style="font-size: 14px;">
            </div>
            <!-- 1. Basic Details -->
            <section id="section-basic" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">1</span>
                Basic Details
              </h6>
              <div class="px-2">
                <div class="row g-2">
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-code"><label class="form-check-label small" for="bd-code">Employee Code</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-name"><label class="form-check-label small" for="bd-name">Name</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-mobile"><label class="form-check-label small" for="bd-mobile">Mobile</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-gender"><label class="form-check-label small" for="bd-gender">Gender</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-joining"><label class="form-check-label small" for="bd-joining">Joining Date</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-type"><label class="form-check-label small" for="bd-type">Employee Type</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-father"><label class="form-check-label small" for="bd-father">Father’s Name</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-aadhaar"><label class="form-check-label small" for="bd-aadhaar">Aadhar</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-address"><label class="form-check-label small" for="bd-address">Address</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-state"><label class="form-check-label small" for="bd-state">State</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-district"><label class="form-check-label small" for="bd-district">District</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-pincode"><label class="form-check-label small" for="bd-pincode">Pincode</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-bank-name"><label class="form-check-label small" for="bd-bank-name">Bank Name</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-bank-acc"><label class="form-check-label small" for="bd-bank-acc">Bank Account No</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-ifsc"><label class="form-check-label small" for="bd-ifsc">IFSC</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-dob"><label class="form-check-label small" for="bd-dob">DOB</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-uan"><label class="form-check-label small" for="bd-uan">UAN No</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-esic-no"><label class="form-check-label small" for="bd-esic-no">ESIC No</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="bd-corp-id"><label class="form-check-label small" for="bd-corp-id">Corporate Employee Id</label></div></div>
                </div>
              </div>
            </section>

            <!-- 2. Monthly Details -->
            <section id="section-monthly" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">2</span>
                Monthly Details
              </h6>
              <div class="px-2">
                <div class="row g-2">
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="md-ot"><label class="form-check-label small" for="md-ot">OT Hours</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="md-wd"><label class="form-check-label small" for="md-wd">Working Days</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="md-pres"><label class="form-check-label small" for="md-pres">Present</label></div></div>
                  <div class="col-md-3"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="md-lop"><label class="form-check-label small" for="md-lop">LOP</label></div></div>
                </div>
              </div>
            </section>

            <!-- 3. Earning Details -->
            <section id="section-earning" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">3</span>
                Earning Details
              </h6>
              <div class="mb-3">
                <div class="row g-3 px-2">
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="ed-basic"><label class="form-check-label small" for="ed-basic">BASIC</label></div></div>
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="ed-hra"><label class="form-check-label small" for="ed-hra">HRA</label></div></div>
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="ed-stipend"><label class="form-check-label small" for="ed-stipend">STIPEND</label></div></div>
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="ed-ot-amt"><label class="form-check-label small" for="ed-ot-amt">OT Amount</label></div></div>
                </div>
              </div>
              <div id="earningLabelsContainer" class="dynamic-rows-container mb-3"></div>
              <button class="btn btn-sm btn-white border shadow-sm rounded-pill px-3" onclick="addDynamicRow('earningLabelsContainer')">
                <i class="fa-solid fa-plus me-1 text-orange"></i> Add Earning Label
              </button>
            </section>

            <!-- 4. Deduction Details -->
            <section id="section-deduction" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">4</span>
                Deduction Details
              </h6>
              <div class="mb-3">
                <div class="row g-3 px-2">
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="dd-pf"><label class="form-check-label small" for="dd-pf">PF</label></div></div>
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="dd-esic"><label class="form-check-label small" for="dd-esic">ESIC</label></div></div>
                  <div class="col-auto"><div class="form-check custom-check"><input class="form-check-input" type="checkbox" id="dd-lwf"><label class="form-check-label small" for="dd-lwf">LWF</label></div></div>
                </div>
              </div>
              <div id="deductionLabelsContainer" class="dynamic-rows-container mb-3"></div>
              <button class="btn btn-sm btn-white border shadow-sm rounded-pill px-3" onclick="addDynamicRow('deductionLabelsContainer')">
                <i class="fa-solid fa-plus me-1 text-orange"></i> Add Deduction Label
              </button>
            </section>

            <!-- 5. Intermediate Variables -->
            <section id="section-intermediate" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">5</span>
                Intermediate Variables (Variables required for calculations)
              </h6>
              <div class="mb-3 px-2">
                <div id="iv-pf-wage-container" class="mb-2">
                  <div class="form-check custom-check d-flex align-items-center">
                    <input class="form-check-input me-2" type="checkbox" id="iv-pf-wage">
                    <label class="form-check-label small fw-bold" for="iv-pf-wage">PF WAGE</label>
                  </div>
                </div>
                <div id="iv-esic-wage-container" class="mb-2">
                  <div class="form-check custom-check d-flex align-items-center">
                    <input class="form-check-input me-2" type="checkbox" id="iv-esic-wage">
                    <label class="form-check-label small fw-bold" for="iv-esic-wage">ESIC WAGE</label>
                  </div>
                </div>
                <div id="iv-lwf-wage-container" class="mb-2">
                  <div class="form-check custom-check d-flex align-items-center">
                    <input class="form-check-input me-2" type="checkbox" id="iv-lwf-wage">
                    <label class="form-check-label small fw-bold" for="iv-lwf-wage">LWF WAGE</label>
                  </div>
                </div>
              </div>
              <div id="intermediateLabelsContainer" class="dynamic-rows-container mb-3"></div>
              <button class="btn btn-sm btn-white border shadow-sm rounded-pill px-3" onclick="addDynamicRow('intermediateLabelsContainer')">
                <i class="fa-solid fa-plus me-1 text-orange"></i> Add Variable
              </button>
            </section>

            <!-- 6. Fixed Input Details -->
            <section id="section-fixed" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">6</span>
                Fixed Input Details (HR)
              </h6>
              <div class="row g-3">
                <div class="col-md-6">
                  <div class="d-flex align-items-center p-3 border rounded-4 bg-light shadow-sm">
                    <div class="stat-icon bg-white text-dark me-3 mb-0" style="width: 35px; height: 35px;"><i class="fa-solid fa-coins"></i></div>
                    <span class="small fw-bold flex-grow-1">BASIC</span>
                    <span class="badge bg-soft-danger text-danger rounded-pill">Mandatory</span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="d-flex align-items-center p-3 border rounded-4 bg-light shadow-sm">
                    <div class="stat-icon bg-white text-dark me-3 mb-0" style="width: 35px; height: 35px;"><i class="fa-solid fa-house-chimney"></i></div>
                    <span class="small fw-bold flex-grow-1">HRA</span>
                    <span class="badge bg-soft-danger text-danger rounded-pill">Mandatory</span>
                  </div>
                </div>
              </div>
            </section>

            <!-- 7. Excel Input Details -->
            <section id="section-excel" class="mb-3">
              <h6 class="fw-bold mb-2 d-flex align-items-center text-dark" style="font-size: 13px;">
                <span class="bg-soft-orange text-orange rounded-circle d-inline-flex align-items-center justify-content-center me-2" style="width: 20px; height: 20px; font-size: 10px;">7</span>
                Excel Input Details
              </h6>
              <div class="row g-3 mb-3">
                <div class="col-md-6">
                  <div class="d-flex align-items-center p-3 border rounded-4 bg-soft-info-light">
                    <span class="small fw-bold flex-grow-1">Working Days</span>
                    <span class="badge bg-info text-white rounded-pill">Mandatory</span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="d-flex align-items-center p-3 border rounded-4 bg-soft-info-light">
                    <span class="small fw-bold flex-grow-1">Present</span>
                    <span class="badge bg-info text-white rounded-pill">Mandatory</span>
                  </div>
                </div>
              </div>
              <div id="inputExcelLabelsContainer" class="dynamic-rows-container mb-3"></div>
              <button class="btn btn-sm btn-white border shadow-sm rounded-pill px-3" onclick="addDynamicRow('inputExcelLabelsContainer')">
                <i class="fa-solid fa-plus me-1 text-orange"></i> Add Excel Label
              </button>
            </section>
          </div>
        </div>
        <div class="modal-footer bg-white border-top py-3 px-4">
          <button type="button" class="btn btn-light px-4 rounded-pill fw-medium" data-bs-dismiss="modal">Discard Changes</button>
          <button type="button" class="btn btn-orange text-white px-5 rounded-pill fw-bold shadow-sm" id="saveFormulaBtn">Confirm & Save Formula</button>
        </div>
      </div>
    </div>
  </div>