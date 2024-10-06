#!/bin/bash

# /my-monorepo
#   ├── /apps
#   │   ├── /frontend        // 前端应用
#   │   ├── /backend         // 后端应用
#   │   └── /mobile-app      // 手机应用
#   ├── /packages
#   │   ├── /ui              // UI 组件库
#   │   ├── /db              // 数据库交互模块
#   │   ├── /layouts         // 布局模块
#   │   ├── /utils           // 工具类
#   │   ├── /interfaces       // 接口定义
#   │   └── /types           // 类型定义
#   ├── /scripts             // 脚本文件
#   ├── package.json         // 根配置文件
#   └── tsconfig.json        // TypeScript 配置文件（如果使用 TypeScript）


yarn init -y
mkdir apps
mkdir packages

components=("ui db layouts utils interfaces types")
mkdir apps/backend
mkdir apps/frontend

for loop in ${components[@]}
do
echo "正在创建:" $loop
mkdir packages/$loop
done
