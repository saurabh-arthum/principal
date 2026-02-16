package com.arthum.admin.controller.helper;

public class ContractorListDTO {

    private String image;
    private String name;
    private String email;
    private String type;
    private String factoryName;
    private int noOfFactoryAssociated;
    private String gst;
    private String status;
    private String contractorId;

    public ContractorListDTO() {
		super();
	}

	public ContractorListDTO(String image, String name, String email,
                             String type, String factoryName,
                             int noOfFactoryAssociated,
                             String gst, String status,
                             String contractorId) {

        this.image = image;
        this.name = name;
        this.email = email;
        this.type = type;
        this.factoryName = factoryName;
        this.noOfFactoryAssociated = noOfFactoryAssociated;
        this.gst = gst;
        this.status = status;
        this.contractorId = contractorId;
    }

    @Override
    public String toString() {
        return "ContractorListDTO{" +
                "image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", type='" + type + '\'' +
                ", factoryName='" + factoryName + '\'' +
                ", noOfFactoryAssociated=" + noOfFactoryAssociated +
                ", gst='" + gst + '\'' +
                ", status='" + status + '\'' +
                ", contractorId=" + contractorId +
                '}';
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFactoryName() {
        return factoryName;
    }

    public void setFactoryName(String factoryName) {
        this.factoryName = factoryName;
    }

    public int getNoOfFactoryAssociated() {
        return noOfFactoryAssociated;
    }

    public void setNoOfFactoryAssociated(int noOfFactoryAssociated) {
        this.noOfFactoryAssociated = noOfFactoryAssociated;
    }

    public String getGst() {
        return gst;
    }

    public void setGst(String gst) {
        this.gst = gst;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContractorId() {
        return contractorId;
    }

    public void setContractorId(String contractorId) {
        this.contractorId = contractorId;
    }
}
