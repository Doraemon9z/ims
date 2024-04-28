# 粮食产品库存管理系统后端

## 项目介绍
这是一个基于Spring Boot和Vue.js开发的粮食产品库存管理系统后端，旨在帮助粮食相关企业进行库存管理。

## 技术栈
- Spring Boot 2.6.11
- Spring Data JPA
- Spring Security
- MySQL 8
- Maven
- Java 8
- Vue.js
- Node.js

## 安装说明
1. 确保已安装Java 8、Maven和MySQL 8，并配置好环境变量。
2. 创建名为`ims`的MySQL数据库，并导入ims.sql`中的初始数据。
3. 打开项目，修改`application.properties`中的数据库连接信息。
4. 使用Maven构建项目。
5. 运行项目：`启动ImsApplication.java`。

## 配置说明
- `application.properties`包含了数据库连接信息和端口设置，可以根据需要进行配置调整。

## 使用说明
1. 使用管理员账号登录系统，默认管理员账号为`admin`，密码为`123456`。
2. 系统包含了粮食产品的增删改查功能，以及粮食产品入库出库的库存管理功能。




