package com.arthum.admin.controller.compliance.helper;

import java.time.LocalDate;

public class AttendanceDto {
    LocalDate date;
    Integer totalWorkforce;
    Integer present;

    @Override
    public String toString() {
        return "AttendanceDto{" +
                "date=" + date +
                ", totalWorkforce=" + totalWorkforce +
                ", present=" + present +
                '}';
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Integer getTotalWorkforce() {
        return totalWorkforce;
    }

    public void setTotalWorkforce(Integer totalWorkforce) {
        this.totalWorkforce = totalWorkforce;
    }

    public Integer getPresent() {
        return present;
    }

    public void setPresent(Integer present) {
        this.present = present;
    }
}
