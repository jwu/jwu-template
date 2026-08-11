# AGENTS.md

用于 Godot 4.7 `MY_GODOT_GAME` 游戏模板。

## 技术栈

- **引擎：** Godot 4.7
- **渲染：** Compatibility renderer
- **脚本：** GDScript
- **开发工具：** just、Cocogitto、gdscript-formatter

## 入口

```text
game/project.godot       ← Godot 项目配置
game/scenes/main.tscn    ← 默认运行场景
game/scenes/main.gd      ← Hello World 脚本
```

## 常用命令

```bash
just init   # 安装工具并启用 Git hooks
just test   # 验证项目可以加载
just fmt    # 格式化 GDScript
just lint   # 校验 GDScript
just check  # 完整检查
```

## 目录结构

```text
project/
  ├── .git/                         # Git 版本管理（本地）
  ├── .githooks/                    # 已版本控制的 Git hooks
  ├── .pi/                          # Pi agent 项目配置
  ├── rules/                        # 编码、提交与资源规则
  ├── docs/                         # 策划、设计与技术文档
  ├── game/                         # Godot 项目
  │   ├── .godot/                   # Godot 本地缓存（不提交）
  │   ├── addons/                   # Godot 扩展
  │   ├── tools/                    # 项目工具
  │   ├── share/                    # 共享资源
  │   ├── scenes/                   # 入口场景
  │   ├── entities/                 # 游戏实体与占位符资源
  │   ├── systems/                  # 游戏系统
  │   ├── levels/                   # 游戏关卡
  │   ├── assets/                   # 美术、音效与特效资源
  │   ├── playtests/                # 游戏体验测试
  │   ├── tests/                    # 单元测试
  │   └── project.godot
  ├── .editorconfig
  ├── .gitattributes
  ├── .gitignore
  ├── AGENTS.md
  ├── CHANGELOG.md
  ├── cog.toml
  ├── justfile
  ├── README.md
  └── WORKFLOW.md
```

## 协作规则

### 编辑

- 修改前先读文件，不要凭推测编辑。
- 优先小步编辑，避免大改结构或覆盖大量原文。
- 编辑 GDScript 时遵守 `rules/coding.md`。
- 美术资源遵守 `rules/assets.md`，并放在 `game/assets/`。
- Markdown 文档使用简洁中文；嵌套列表的子级使用 4 空格缩进。

### 搜索

- 默认不全库扫描，按任务读取相关代码、文档和资源。
- 搜索文件内容优先使用 tool `grep`、`find` 和 `ls`。
- 获取互联网信息优先使用 tool `webfetch`。
- Godot 相关问题优先查阅 `~/docs/godot-docs/`；涉及具体引擎行为时，再查阅 `~/src/godot@godotengine/`。

### 提交

- Git commit message 使用 Conventional Commits 格式：`type(scope): 中文描述`。
- 提交前运行 `just check`。
- 未经用户明确要求，不要提交 Git 或执行 `git push`。

### 以下操作必须先征求用户同意

- 大规模移动、重命名文件。
- 删除文件。
- 覆盖大量原始内容。
- 引入新的目录体系或第三方插件。
- 批量重构。
- 修改 `game/project.godot` 或 `game/.godot/` 下的文件。
