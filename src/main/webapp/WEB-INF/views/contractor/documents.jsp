 <div class="tab-pane fade" id="documents" role="tabpanel">
              <h5 class="mb-3">Document Management</h5>

                  <div class="container-fluid" style="overflow: scroll;">
                <table class="table table-hover align-middle" style="font-size: 12px">
                  <thead class="table-light">
                    <tr>
                      <th>
                        Contractor Name</th>
                      <!-- Financial Documents -->
                      <th>Current Year Turnover (BS & P&L)</th>
                      <th>Last Year Turnover (BS & P&L)</th>
                      <th>Bank Statements (6 months)</th>
                      <th>Second Bank Account</th>
                      <th>ITR (2 Years)</th>
                      <!-- Registration & Compliance -->
                      <th>GST Certificate</th>
                      <th>PAN Card</th>
                      <th>Address Proof</th>
                      <th>MOA & AOA</th>
                      <th>Directors List</th>
                      <th>LLP Agreement</th>
                      <!-- Tax & Statutory -->
                      <th>TDS (Form 26AS)</th>
                      <!-- Last 6 Months Filings -->
                      <th>GST Returns (3M)</th>
                      <th>ESIC Returns (3M)</th>
                      <th>
                        Actions</th>
                    </tr>
                  </thead>
                  <tbody id="contractorDocumentsTable">
                    <!-- Contractor 1: Ramesh Kumar -->
                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>

                    <tr>
                      <td>
                        <div class="d-flex align-items-center">
                          <img src="https://i.pravatar.cc/150?img=10" class="rounded-circle me-2"
                            style="width: 32px; height: 32px" />
                          <div>
                            <div class="fw-bold">Ramesh Kumar</div>
                            <div class="text-muted small">ID: CTR001</div>
                          </div>
                        </div>
                      </td>
                      <!-- Financial Documents -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('current_year_bs.pdf')"
                          title="Current_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('last_year_bs.pdf')"
                          title="Last_Year_Balance_Sheet.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('bank_statements.pdf')"
                          title="Bank_Statements_6M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Available</span>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('itr_2years.pdf')" title="ITR_2_Years.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Registration & Compliance -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_certificate.pdf')"
                          title="GST_Certificate.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pan_card.pdf')" title="PAN_Card.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('address_proof.pdf')"
                          title="Address_Proof.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('moa_aoa.pdf')" title="MOA_AOA.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('directors_list.pdf')"
                          title="Directors_List.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <span class="badge bg-secondary">Not Applicable</span>
                      </td>
                      <!-- Tax & Statutory -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('tds_26as.pdf')" title="TDS_Form26AS.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- Last 6 Months Filings -->
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('gst_returns.pdf')"
                          title="GST_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('esic_returns.pdf')"
                          title="ESIC_Returns_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td>
                      <!-- <td class="text-center doc-cell">
                        <div class="doc-file-badge" onclick="viewDocument('pf_challans.pdf')"
                          title="PF_Challans_3M.pdf">
                          <i class="fa-solid fa-file-pdf text-danger me-1"></i>
                          <span>File</span>
                        </div>
                      </td> -->
                      <td style="background: white;">
                        <button class="btn btn-sm btn-light" onclick="downloadAllDocs('ramesh')" title="Download All">
                          <i class="fa-solid fa-download"></i>
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
    </div>
      </div>