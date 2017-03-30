/*
Navicat SQL Server Data Transfer

Source Server         : 本地SQL Server
Source Server Version : 130000
Source Host           : localhost:1433
Source Database       : yii2
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 130000
File Encoding         : 65001

Date: 2017-03-29 19:58:05
*/


-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE [dbo].[auth_assignment]
GO
CREATE TABLE [dbo].[auth_assignment] (
[item_name] nvarchar(64) NOT NULL ,
[user_id] int NOT NULL ,
[created_at] int NULL 
)


GO

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'开发者', N'2', N'1486454864')
GO
GO

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE [dbo].[auth_item]
GO
CREATE TABLE [dbo].[auth_item] (
[name] nvarchar(64) NOT NULL ,
[type] int NOT NULL ,
[description] nvarchar(MAX) NULL ,
[rule_name] nvarchar(64) NULL ,
[data] nvarchar(MAX) NULL ,
[created_at] int NULL ,
[updated_at] int NULL 
)


GO

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/#', N'2', null, null, null, N'1486454180', N'1486454180')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/#', N'2', null, null, null, N'1490084593', N'1490084593')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/assignment/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/assignment/assign', N'2', null, null, null, N'1490061110', N'1490061110')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/assignment/index', N'2', null, null, null, N'1490061110', N'1490061110')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/assignment/revoke', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/assignment/view', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/default/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/default/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/create', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/delete', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/update', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/menu/view', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/assign', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/create', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/delete', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/remove', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/update', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/permission/view', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/assign', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/create', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/delete', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/remove', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/update', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/role/view', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/assign', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/create', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/refresh', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/route/remove', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/*', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/create', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/delete', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/index', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/update', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/rule/view', N'2', null, null, null, N'1482483058', N'1482483058')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/admin/update', N'2', null, null, null, N'1490084045', N'1490084045')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/#', N'2', null, null, null, N'1490086051', N'1490086051')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/*', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/create', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/delete', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/index', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/update', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/upload', N'2', null, null, null, N'1490326508', N'1490326508')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/back/view', N'2', null, null, null, N'1490085960', N'1490085960')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/datecontrol/*', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/datecontrol/parse/*', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/datecontrol/parse/convert', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/db-explain', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/download-mail', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/index', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/toolbar', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/debug/default/view', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii', N'2', null, null, null, N'1490061106', N'1490061106')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/action', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/diff', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/index', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/preview', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gii/default/view', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gridview/*', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gridview/export/*', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/gridview/export/download', N'2', null, null, null, N'1486454092', N'1486454092')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/image/*', N'2', null, null, null, N'1490084047', N'1490084047')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/image/index', N'2', null, null, null, N'1490084047', N'1490084047')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/image/upload', N'2', null, null, null, N'1490084047', N'1490084047')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/site/*', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/site/error', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/site/index', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/site/login', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'/site/logout', N'2', null, null, null, N'1482483059', N'1482483059')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'开发者', N'1', N'开发者拥有最高管理权限', N'YII', null, N'1486453370', N'1486454081')
GO
GO
INSERT INTO [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'开发者权限', N'2', N'开发者拥有最高权限', N'YII', null, N'1486454954', N'1487665265')
GO
GO

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE [dbo].[auth_item_child]
GO
CREATE TABLE [dbo].[auth_item_child] (
[parent] nvarchar(64) NOT NULL ,
[child] nvarchar(64) NOT NULL 
)


GO

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/#')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/#')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/assignment/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/assignment/assign')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/assignment/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/assignment/revoke')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/assignment/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/default/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/default/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/delete')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/menu/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/assign')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/delete')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/remove')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/permission/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/assign')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/delete')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/remove')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/role/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/assign')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/refresh')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/route/remove')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/delete')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/rule/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/admin/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/#')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/create')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/delete')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/update')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/back/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/datecontrol/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/datecontrol/parse/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/datecontrol/parse/convert')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/db-explain')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/download-mail')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/toolbar')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/debug/default/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/action')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/diff')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/preview')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gii/default/view')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gridview/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gridview/export/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/gridview/export/download')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/image/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/image/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/image/upload')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/site/*')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/site/error')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/site/index')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/site/login')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者权限', N'/site/logout')
GO
GO
INSERT INTO [dbo].[auth_item_child] ([parent], [child]) VALUES (N'开发者', N'开发者权限')
GO
GO

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE [dbo].[auth_rule]
GO
CREATE TABLE [dbo].[auth_rule] (
[name] nvarchar(64) NOT NULL ,
[data] nvarchar(MAX) NULL ,
[created_at] int NULL ,
[updated_at] int NULL 
)


GO

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO [dbo].[auth_rule] ([name], [data], [created_at], [updated_at]) VALUES (N'YII', N'O:30:"backend\components\ArticleRule":3:{s:4:"name";s:3:"YII";s:9:"createdAt";i:1486453215;s:9:"updatedAt";i:1486453215;}', N'1486453215', N'1486453215')
GO
GO

-- ----------------------------
-- Table structure for dics
-- ----------------------------
DROP TABLE [dbo].[dics]
GO
CREATE TABLE [dbo].[dics] (
[type] varchar(255) NOT NULL ,
[id] smallint NOT NULL ,
[name] varchar(255) NOT NULL DEFAULT '' 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'dics', 
'COLUMN', N'type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'dics'
, @level2type = 'COLUMN', @level2name = N'type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'dics'
, @level2type = 'COLUMN', @level2name = N'type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'dics', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'dics'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'dics'
, @level2type = 'COLUMN', @level2name = N'id'
GO

-- ----------------------------
-- Records of dics
-- ----------------------------
INSERT INTO [dbo].[dics] ([type], [id], [name]) VALUES (N'后台管理员类型', N'1', N'开发者')
GO
GO

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE [dbo].[menu]
GO
CREATE TABLE [dbo].[menu] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] nvarchar(128) NOT NULL ,
[parent] int NULL ,
[route] nvarchar(255) NULL ,
[order] int NULL ,
[data] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[menu]', RESEED, 12)
GO

-- ----------------------------
-- Records of menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[menu] ON
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'1', N'权限管理', null, N'/#', N'99', N'{"icon": "fa fa-key"}')
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'2', N'用户列表', N'1', N'/admin/user/index', N'1', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'3', N'权限分配', N'1', N'/admin/assignment/index', N'2', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'4', N'角色管理', N'1', N'/admin/role/index', N'3', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'5', N'权限列表', N'1', N'/admin/permission/index', N'4', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'6', N'路由列表', N'1', N'/admin/route/index', N'5', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'7', N'规则列表', N'1', N'/admin/rule/index', N'6', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'8', N'菜单列表', N'1', N'/admin/menu/index', N'7', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'9', N'Gii使用', null, N'/gii', N'100', N'{"icon": "fa fa-magnet"}')
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'10', N'Gii Model', N'9', N'/gii/default/index', N'1', null)
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'11', N'后台管理', null, N'/back/#', N'97', N'{"icon": "fa fa-user-secret"}')
GO
GO
INSERT INTO [dbo].[menu] ([id], [name], [parent], [route], [order], [data]) VALUES (N'12', N'管理员', N'11', N'/back/index', N'1', null)
GO
GO
SET IDENTITY_INSERT [dbo].[menu] OFF
GO

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE [dbo].[user]
GO
CREATE TABLE [dbo].[user] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] varchar(255) NOT NULL DEFAULT '' ,
[auth_key] varchar(32) NOT NULL DEFAULT '' ,
[password_hash] varchar(255) NOT NULL ,
[password_reset_token] varchar(255) NULL ,
[email] varchar(255) NOT NULL DEFAULT '' ,
[status] smallint NOT NULL DEFAULT ((1)) ,
[created_at] int NOT NULL DEFAULT ((0)) ,
[updated_at] int NOT NULL DEFAULT ((0)) ,
[logo] varchar(255) NOT NULL DEFAULT '' ,
[type] smallint NOT NULL DEFAULT ((1)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[user]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'logo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'logo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'头像'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'logo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'user', 
'COLUMN', N'type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'user'
, @level2type = 'COLUMN', @level2name = N'type'
GO

-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO
INSERT INTO [dbo].[user] ([id], [username], [auth_key], [password_hash], [password_reset_token], [email], [status], [created_at], [updated_at], [logo], [type]) VALUES (N'2', N'yii', N'', N'214123ee53d545f486e071fa9a23cadf', N'', N'', N'1', N'1490086189', N'1490169541', N'', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO

-- ----------------------------
-- Indexes structure for table auth_assignment
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_assignment
-- ----------------------------
ALTER TABLE [dbo].[auth_assignment] ADD PRIMARY KEY ([item_name], [user_id])
GO

-- ----------------------------
-- Indexes structure for table auth_item
-- ----------------------------
CREATE INDEX [rule_name] ON [dbo].[auth_item]
([rule_name] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO
CREATE INDEX [idx-auth_item-type] ON [dbo].[auth_item]
([type] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table auth_item
-- ----------------------------
ALTER TABLE [dbo].[auth_item] ADD PRIMARY KEY ([name])
GO

-- ----------------------------
-- Triggers structure for table auth_item
-- ----------------------------
DROP TRIGGER [dbo].[name]
GO
CREATE TRIGGER [dbo].[name]
ON [dbo].[auth_item]
AFTER DELETE
AS
BEGIN
  delete from auth_item_child where child in (select name from deleted)
END
GO

-- ----------------------------
-- Indexes structure for table auth_item_child
-- ----------------------------
CREATE INDEX [child] ON [dbo].[auth_item_child]
([child] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table auth_item_child
-- ----------------------------
ALTER TABLE [dbo].[auth_item_child] ADD PRIMARY KEY ([parent], [child])
GO

-- ----------------------------
-- Indexes structure for table auth_rule
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table auth_rule
-- ----------------------------
ALTER TABLE [dbo].[auth_rule] ADD PRIMARY KEY ([name])
GO

-- ----------------------------
-- Indexes structure for table dics
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dics
-- ----------------------------
ALTER TABLE [dbo].[dics] ADD PRIMARY KEY ([type], [id])
GO

-- ----------------------------
-- Indexes structure for table menu
-- ----------------------------
CREATE INDEX [parent] ON [dbo].[menu]
([parent] ASC) 
WITH (STATISTICS_NORECOMPUTE = ON)
GO

-- ----------------------------
-- Primary Key structure for table menu
-- ----------------------------
ALTER TABLE [dbo].[menu] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD UNIQUE ([email] ASC)
GO
ALTER TABLE [dbo].[user] ADD UNIQUE ([password_reset_token] ASC)
GO
ALTER TABLE [dbo].[user] ADD UNIQUE ([username] ASC)
GO

-- ----------------------------
-- Triggers structure for table user
-- ----------------------------
DROP TRIGGER [dbo].[id_del]
GO
CREATE TRIGGER [dbo].[id_del]
ON [dbo].[user]
AFTER DELETE
AS
BEGIN
delete from auth_assignment where user_id in (select id from deleted)
END
GO
DROP TRIGGER [dbo].[id_update]
GO
CREATE TRIGGER [dbo].[id_update]
ON [dbo].[user]
AFTER UPDATE
AS
if update(id)
begin
 declare @b_id int  --修改之前的
 declare @s_id int  --修改之后的
 
 SELECT @s_id= id FROM INSERTED --从更新后的副本表(临时表)里面 获得要修改后的状态
 
 select @b_id=id from deleted  --从之前删掉的临时表里面获取原来的值
 UPDATE auth_assignment SET user_id = @s_id WHERE user_id=@b_id
end

GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[auth_assignment]
-- ----------------------------
ALTER TABLE [dbo].[auth_assignment] ADD FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[auth_assignment] ADD FOREIGN KEY ([item_name]) REFERENCES [dbo].[auth_item] ([name]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[auth_item]
-- ----------------------------
ALTER TABLE [dbo].[auth_item] ADD FOREIGN KEY ([rule_name]) REFERENCES [dbo].[auth_rule] ([name]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[auth_item_child]
-- ----------------------------
ALTER TABLE [dbo].[auth_item_child] ADD FOREIGN KEY ([child]) REFERENCES [dbo].[auth_item] ([name]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[auth_item_child] ADD FOREIGN KEY ([parent]) REFERENCES [dbo].[auth_item] ([name]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[menu]
-- ----------------------------
ALTER TABLE [dbo].[menu] ADD FOREIGN KEY ([parent]) REFERENCES [dbo].[menu] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
