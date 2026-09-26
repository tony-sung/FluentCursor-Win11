# Fluent Cursor

[简体中文](#中文说明) | [English](#English)

---

# 中文说明

## 项目简介

Fluent Cursor 是一个为 Windows 11 设计的用户级光标方案安装包。

本项目基于原始光标作品重新封装，采用更现代的安装方式：

- 无需管理员权限
- 不写入 `C:\Windows\Cursors`
- 安装到当前用户配置目录
- 不修改系统资源
- 支持浅色与深色两套方案
- 易于安装、升级与卸载

---

## 特性

- Windows 11 风格设计
- 支持 Light / Dark 两套方案
- 支持 HiDPI 高分辨率显示器
- 支持 125%、150%、175%、200% 等缩放比例
- 用户级安装
- 无需管理员权限
- 不修改系统目录
- 易于升级与卸载

## 可用方案

安装后将注册以下鼠标方案：

```text
Fluent Cursor Light
Fluent Cursor Dark
```

可通过系统鼠标设置自由切换。

---

## 安装位置

光标文件安装到：

```text
%LOCALAPPDATA%\Microsoft\Windows\Cursors\FluentCursor
```

例如：

```text
C:\Users\<User>\AppData\Local\Microsoft\Windows\Cursors\FluentCursor
```

目录结构：

```text
FluentCursor
│
├─ LightCursors
└─ DarkCursors
```

---

## 安装

运行：

```powershell
.\install.ps1
```

安装程序将：

1. 创建用户级安装目录
2. 复制 Light 与 Dark 光标文件
3. 注册以下方案：

```text
Fluent Cursor Light
Fluent Cursor Dark
```

---

## 使用

打开：

```text
控制面板
→ 鼠标
→ 指针
→ 方案
```

选择：

```text
Fluent Cursor Light
```

或：

```text
Fluent Cursor Dark
```

然后点击：

```text
应用
```

即可启用。

---

## 卸载

卸载前请先切换到其它鼠标方案。

例如：

```text
Windows Aero
Windows Black
```

随后运行：

```powershell
.\uninstall.ps1
```

卸载程序将：

- 删除 Fluent Cursor Light
- 删除 Fluent Cursor Dark
- 删除安装目录中的光标文件

---

## 特性

与传统 INF 光标包相比：

| 项目 | 本项目 |
|--------|--------|
| 管理员权限 | 不需要 |
| 写入 Windows 目录 | 否 |
| 系统文件修改 | 否 |
| 用户隔离 | 是 |
| 易于卸载 | 是 |
| Windows 11 兼容 | 是 |

---

## 致谢

本项目使用的光标作品并非由本项目作者创作。

原始光标作品作者：

**Jepri Creations**

原始作品：

**Windows 11 Cursors Concept HDPI**

本项目仅重新设计安装方式，使其更加符合现代 Windows 11 用户级部署模式。

所有光标设计、美术资源及版权归原作者所有。

特别感谢 Jepri Creations 创作并分享这套优秀的光标作品。

---

# English

## Overview

Fluent Cursor is a user-level cursor scheme package designed for Windows 11.

This project repackages the original cursor artwork with a modern installation model:

- No administrator privileges required
- Does not write to `C:\Windows\Cursors`
- Installed inside the current user's profile
- No system resource modification
- Includes both Light and Dark schemes
- Easy installation, upgrade and removal

---

## Features

- Windows 11 Fluent design
- Light and Dark cursor schemes
- HiDPI display support
- Optimized for 125%, 150%, 175% and 200% scaling
- User-level installation
- No administrator privileges required
- No modification of system cursor files
- Easy upgrade and removal

## Available Schemes

The installer registers the following cursor schemes:

```text
Fluent Cursor Light
Fluent Cursor Dark
```

You may switch between them at any time.

---

## Installation Location

Cursor files are installed to:

```text
%LOCALAPPDATA%\Microsoft\Windows\Cursors\FluentCursor
```

Example:

```text
C:\Users\<User>\AppData\Local\Microsoft\Windows\Cursors\FluentCursor
```

Structure:

```text
FluentCursor
│
├─ LightCursors
└─ DarkCursors
```

---

## Installation

Run:

```powershell
.\install.ps1
```

The installer will:

1. Create user-level installation folders
2. Copy Light and Dark cursor sets
3. Register:

```text
Fluent Cursor Light
Fluent Cursor Dark
```

---

## Usage

Open:

```text
Control Panel
→ Mouse
→ Pointers
→ Scheme
```

Select:

```text
Fluent Cursor Light
```

or:

```text
Fluent Cursor Dark
```

Then click:

```text
Apply
```

---

## Uninstallation

Before uninstalling, switch to another cursor scheme such as:

```text
Windows Aero
Windows Black
```

Then run:

```powershell
.\uninstall.ps1
```

The uninstaller will:

- Remove Fluent Cursor Light
- Remove Fluent Cursor Dark
- Remove all installed cursor files

---

## Features

Compared with traditional INF-based cursor packages:

| Feature | Fluent Cursor |
|----------|----------|
| Administrator Required | No |
| Writes to Windows Folder | No |
| Modifies System Files | No |
| User-Level Isolation | Yes |
| Easy Removal | Yes |
| Windows 11 Friendly | Yes |

---

## Credits

The cursor artwork included in this package was not created by the maintainer of this project.

Original cursor artwork by:

**Jepri Creations**

Original work:

**Windows 11 Cursors Concept HDPI**

This project only redesigns the installation method to better fit modern Windows 11 user-profile deployment.

All artwork, design and visual assets remain the property of the original creator.

Special thanks to **Jepri Creations** for creating and sharing the original cursor set.