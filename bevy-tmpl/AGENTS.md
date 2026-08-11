# AGENTS.md

用于基于 Bevy 0.19 的 Rust 游戏项目。

## 技术栈

- **引擎：** Bevy 0.19
- **语言：** Rust（Edition 2024）
- **工具链：** Rust 1.95.0（由 `rust-toolchain.toml` 固定）
- **渲染：** Bevy 默认渲染器（wgpu）
- **依赖管理与构建：** Cargo
- **提交规范：** Cocogitto / Conventional Commits

## 快速上手

### 项目初始化

```bash
./scripts/init.sh               # 安装检查工具并启用项目 hooks
```

### 入口

```text
src/main.rs                     ← Bevy 应用入口与插件注册
```

### 常用命令

```bash
cargo run                       # 构建并运行游戏
cargo check                     # 快速类型检查
cargo test                      # 运行测试
cargo fmt                       # 格式化代码
cargo fmt --check               # 检查格式化
cargo clippy --all-targets --all-features -- -D warnings  # 静态检查，警告视为错误
cog verify "feat: add player"                             # 校验单条提交信息
cog check                       # 校验提交历史
```

## 目录结构

```text
project/
  ├── .git/                     # Git 版本管理（本地）
  ├── .githooks/                # 已版本控制的 Git hooks
  ├── scripts/                  # 项目维护脚本
  │   └── init.sh               # 安装工具并启用 Git hooks
  ├── src/                      # Rust 源码
  │   └── main.rs               # Bevy 应用入口
  ├── target/                   # Cargo 构建产物（不提交）
  ├── .gitignore                # Git 忽略规则
  ├── AGENTS.md                 # Agent 的协作规则
  ├── Cargo.lock                # 依赖锁定文件
  ├── Cargo.toml                # Cargo 包与依赖配置
  ├── cog.toml                  # Cocogitto 配置与 Git hook 定义
  └── rust-toolchain.toml       # Rust 工具链版本
```

## 协作规则

### 编辑

- 修改前先读文件，不要凭推测编辑。
- 优先小步编辑，避免大改结构或覆盖大量原文。
- Rust 代码必须通过 `cargo fmt`，遵循 Rust API Guidelines 与 Bevy 官方惯例。
- 代码注释使用英文；没有必要时不要新增解释性注释。
- 优先复用已有的 Bevy 插件、资源、组件与系统模式，避免引入不必要的依赖。
- Markdown 文档使用简洁英文。
    - 嵌套列表的子级使用 4 空格缩进。
    - 引用文件夹时统一使用 `文件夹名/` 形式。

### 搜索

- 默认不全库扫描，按任务读取相关代码、配置和资源。
- 搜索文件内容优先使用 tool `grep`、`find` 和 `ls`。
- 获取互联网信息优先使用 tool `webfetch`。
- 以上 tool 失败后，再考虑使用 `gh` 获取 GitHub 仓库信息。
- Bevy 相关资料：
    - 官方学习资料与迁移指南：<https://bevy.org/learn/>
    - Rust API 文档：<https://docs.rs/bevy/0.19.0/bevy/>
    - 本地已下载源码：`~/.cargo/registry/src/` 下的 `bevy-0.19.0/`。
- 遇到 Bevy API、ECS 调度或渲染行为相关问题时，先查官方文档；涉及具体实现或版本行为时，再查本地 Bevy 源码。不确定时先提问，不要做大范围猜测性修改。

### 提交

- Git commit message 使用 Conventional Commits 格式：`type(scope): English description`。
- 支持的默认 type 包括 `build`、`chore`、`ci`、`docs`、`feat`、`fix`、`perf`、`refactor`、`revert`、`style` 和 `test`。
- 本地 `commit-msg` hook 会通过 Cocogitto 自动校验提交信息；`pre-commit` hook 会执行 `cargo fmt --check` 与 `cargo clippy --all-targets --all-features -- -D warnings`。克隆项目后，执行 `./scripts/init.sh` 安装所需工具并启用这些 hooks。
- commit message 的描述部分使用英文描述。
- 按改动内容分批次提交，避免把无关改动混进同一个 commit。
- 如果实现来自 GitHub Issue，并且该改动完成了对应 issue，提交前必须明确关闭策略：
    - 直接提交到默认分支时，在 commit body 中写入 `Closes #N`；多个 issue 逐行列出。
    - 通过 PR 合并时，在 PR body 中写入对应 `Closes #N`。
    - 如果 issue 不应关闭，最终回复中必须说明原因。
- 不要默认编辑或关闭远程 issue；只有用户明确要求时才使用 `gh issue close` 等远程操作。

### 严禁

- 未经确认，不要引入新的目录体系或第三方 crate。
- 未经确认，不要批量重构、批量移动或重命名文件。
- 未经确认，不要删除文件。

### 以下操作必须先征求用户同意

- 大规模移动、重命名文件。
- 删除文件。
- 覆盖大量原始内容。
- 引入新的目录体系。
- 添加或升级 Cargo 依赖。
- 批量重构。
- 提交 Git。
- 修改 `Cargo.toml`、`Cargo.lock` 或 `rust-toolchain.toml`。
