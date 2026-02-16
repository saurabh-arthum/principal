package com.arthum.admin.controller.helper;

import java.math.BigDecimal;
import java.time.LocalDate;

public class TrainingDto {
    String name;
    Boolean Status;
    LocalDate completeDate;
    BigDecimal score;
    LocalDate dueDate;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getStatus() {
        return Status;
    }

    public void setStatus(Boolean status) {
        Status = status;
    }

    public LocalDate getCompleteDate() {
        return completeDate;
    }

    public void setCompleteDate(LocalDate completeDate) {
        this.completeDate = completeDate;
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public LocalDate getDueDate() {
        return dueDate;
    }

    public void setDueDate(LocalDate dueDate) {
        this.dueDate = dueDate;
    }

    @Override
    public String toString() {
        return "TrainingDto{" +
                "name='" + name + '\'' +
                ", Status=" + Status +
                ", completeDate=" + completeDate +
                ", score=" + score +
                ", dueDate=" + dueDate +
                '}';
    }
}
