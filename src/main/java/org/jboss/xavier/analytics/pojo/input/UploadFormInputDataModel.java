package org.jboss.xavier.analytics.pojo.input;

/**
 * This class was automatically generated by the data modeler tool.
 */

import org.kie.api.definition.type.Label;

public class UploadFormInputDataModel implements java.io.Serializable {

    @Label("Customer ID")
    private String customerId;

    @Label("Source payload file name")
    private String fileName;

    @Label("Number of ESXi hypervisors found")
    private Integer hypervisor;

    @Label("Total disk space used found ")
    private Long totalDiskSpace;

    private Integer sourceProductIndicator;

    private Double year1HypervisorPercentage;

    private Double year2HypervisorPercentage;

    private Double year3HypervisorPercentage;

    private Double growthRatePercentage;

    private int dealIndicator = 1;

    private int openStackIndicator = 1;

    public UploadFormInputDataModel() {
    }

    public String getCustomerId() {
        return this.customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Integer getHypervisor() {
        return this.hypervisor;
    }

    public void setHypervisor(Integer hypervisor) {
        this.hypervisor = hypervisor;
    }

    public Long getTotalDiskSpace() {
        return this.totalDiskSpace;
    }

    public void setTotalDiskSpace(Long totalDiskSpace) {
        this.totalDiskSpace = totalDiskSpace;
    }

    public Integer getSourceProductIndicator() {
        return this.sourceProductIndicator;
    }

    public void setSourceProductIndicator(Integer sourceProductIndicator) {
        this.sourceProductIndicator = sourceProductIndicator;
    }

    public Double getYear1HypervisorPercentage() {
        return this.year1HypervisorPercentage;
    }

    public void setYear1HypervisorPercentage(
            Double year1HypervisorPercentage) {
        this.year1HypervisorPercentage = year1HypervisorPercentage;
    }

    public Double getYear2HypervisorPercentage() {
        return this.year2HypervisorPercentage;
    }

    public void setYear2HypervisorPercentage(
            Double year2HypervisorPercentage) {
        this.year2HypervisorPercentage = year2HypervisorPercentage;
    }

    public Double getYear3HypervisorPercentage() {
        return this.year3HypervisorPercentage;
    }

    public void setYear3HypervisorPercentage(
            Double year3HypervisorPercentage) {
        this.year3HypervisorPercentage = year3HypervisorPercentage;
    }

    public Double getGrowthRatePercentage() {
        return this.growthRatePercentage;
    }

    public void setGrowthRatePercentage(
            Double growthRatePercentage) {
        this.growthRatePercentage = growthRatePercentage;
    }

    public UploadFormInputDataModel(String customerId,
                                    String fileName, Integer hypervisor,
                                    Long totalDiskSpace, Integer sourceProductIndicator,
                                    Double year1HypervisorPercentage,
                                    Double year2HypervisorPercentage,
                                    Double year3HypervisorPercentage,
                                    Double growthRatePercentage) {
        this.customerId = customerId;
        this.fileName = fileName;
        this.hypervisor = hypervisor;
        this.totalDiskSpace = totalDiskSpace;
        this.sourceProductIndicator = sourceProductIndicator;
        this.year1HypervisorPercentage = year1HypervisorPercentage;
        this.year2HypervisorPercentage = year2HypervisorPercentage;
        this.year3HypervisorPercentage = year3HypervisorPercentage;
        this.growthRatePercentage = growthRatePercentage;
    }

}
