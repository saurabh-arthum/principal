package com.arthum.admin.controller.compliance.helper;

import java.time.LocalDate;

public class PaymentDetails {

    private LocalDate paymentDate;
    private String transactionId;

    public LocalDate getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDate paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }
}
