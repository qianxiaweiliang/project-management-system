package com.test.config.entity;

/**
 * 描述：项目配置表
 *
 * @author wangzl
 *
 */
public class ConfigEntity {

    /** id */
    private Long id;
    /** 配置类型 0:来源配置 1:人员配置 */
    private Integer kind;
    /** 配置描述 */
    private String description;
    /** 状态 0:启用 1:禁用 */
    private Integer status;
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

    public Integer getKind() {
        return kind;
    }

    public void setKind(Integer kind) {
        this.kind = kind;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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
