-- 用户表
CREATE TABLE `employee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '用户密码',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(32) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '邮箱',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  `memo` varchar(512) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='用户表';

-- 角色表
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `memo` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='角色表';

-- 权限表
CREATE TABLE `permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `permission_name` varchar(32) NOT NULL DEFAULT '' COMMENT '权限名称',
  `memo` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='权限表';

-- 权限+角色
CREATE TABLE `role_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  `permission_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限id',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='权限角色联合表';

-- 项目管理表
CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `project_source` tinyint(3) NOT NULL DEFAULT '0' COMMENT '项目来源',
  `project_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '项目类型',
  `project_name` varchar(64) NOT NULL DEFAULT '' COMMENT '项目名称',
  `project_memo` varchar(1024) NOT NULL DEFAULT '' COMMENT '项目描述',
  `level` tinyint(3) NOT NULL DEFAULT '0' COMMENT '级别',
  `start_time` char(8) NOT NULL DEFAULT '00000000' COMMENT '开始时间',
  `end_time` char(8) NOT NULL DEFAULT '00000000' COMMENT '结束时间',
  `project_manager` int(11) NOT NULL DEFAULT '0' COMMENT '项目经理',
  `project_employees` varchar(64) NOT NULL DEFAULT '' COMMENT '项目组成员',
  `total_working_time` double(11,2) NOT NULL DEFAULT '0.00' COMMENT '工作总时长',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='项目管理表';

-- 工时表
CREATE TABLE `registration_time` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `project_id` int(11) NOT NULL DEFAULT '0' COMMENT '项目id',
  `check_date` char(8) NOT NULL DEFAULT '00000000' COMMENT '登记日期',
  `working_time` double(11,2) NOT NULL DEFAULT '0.00' COMMENT '工作时长',
  `memo` varchar(512) NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='登记工时表';

-- 项目配置表
CREATE TABLE `config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `kind` tinyint(3) NOT NULL DEFAULT '0' COMMENT '配置类型 0:来源配置 1:人员配置',
  `description` varchar(64) NOT NULL DEFAULT '' COMMENT '配置描述',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0:启用 1:禁用',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) COMMENT='项目配置表';