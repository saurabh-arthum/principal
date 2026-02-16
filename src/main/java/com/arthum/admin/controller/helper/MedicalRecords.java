package com.arthum.admin.controller.compliance.helper;

import java.time.LocalDate;

public class MedicalRecords {
    String name;
    LocalDate completeDate;
    LocalDate dueDate;
    Boolean status;
    String note;

    @Override
    public String toString() {
        return "MedicalRecords{" +
                "name='" + name + '\'' +
                ", completeDate=" + completeDate +
                ", dueDate=" + dueDate +
                ", status=" + status +
                ", note='" + note + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getCompleteDate() {
        return completeDate;
    }

    public void setCompleteDate(LocalDate completeDate) {
        this.completeDate = completeDate;
    }

    public LocalDate getDueDate() {
        return dueDate;
    }

    public void setDueDate(LocalDate dueDate) {
        this.dueDate = dueDate;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
