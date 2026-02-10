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