package com.test.user.entity;

/**
 * 描述：项目配置表
 *
 * @author wangzl
 *
 */
public class EmployeeEntity {

    /** id */
    private Long id;
    /** 用户名 */
    private String username;
    /** 用户密码 */
    private String password;
    /** 姓名 */
    private String name;
    /** 手机 */
    private String phone;
    /** 邮箱 */
    private String email;
    /** 角色id */
    private Long roleId;
    /** 备注 */
    private String memo;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
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
