package com.test.project.entity;

public class ProjectEntity {

    /** id */
    private Long id;
    /** 项目来源 */
    private Integer projectSource;
    /** 项目类型 */
    private Integer projectType;
    /** 项目名称 */
    private String projectName;
    /** 项目描述 */
    private String projectMemo;
    /** 级别 */
    private Integer level;
    /** 开始时间 */
    private String startTime;
    /** 结束时间 */
    private String endTime;
    /** 项目经理 */
    private Long projectManager;
    /** 项目组成员 */
    private String projectEmployees;
    /** 工作总时长 */
    private Double totalWorkingTime;
    /** 创建人 */
    private Long creatorId;
    /** 创建时间 */
    private String createtime;
    /** 修改时间 */
    private String modifytime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getProjectSource() {
        return projectSource;
    }

    public void setProjectSource(Integer projectSource) {
        this.projectSource = projectSource;
    }

    public Integer getProjectType() {
        return projectType;
    }

    public void setProjectType(Integer projectType) {
        this.projectType = projectType;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectMemo() {
        return projectMemo;
    }

    public void setProjectMemo(String projectMemo) {
        this.projectMemo = projectMemo;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Long getProjectManager() {
        return projectManager;
    }

    public void setProjectManager(Long projectManager) {
        this.projectManager = projectManager;
    }

    public String getProjectEmployees() {
        return projectEmployees;
    }

    public void setProjectEmployees(String projectEmployees) {
        this.projectEmployees = projectEmployees;
    }

    public Double getTotalWorkingTime() {
        return totalWorkingTime;
    }

    public void setTotalWorkingTime(Double totalWorkingTime) {
        this.totalWorkingTime = totalWorkingTime;
    }

    public Long getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Long creatorId) {
        this.creatorId = creatorId;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getModifytime() {
        return modifytime;
    }

    public void setModifytime(String modifytime) {
        this.modifytime = modifytime;
    }

}
