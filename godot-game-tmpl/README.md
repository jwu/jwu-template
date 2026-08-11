# MY_GODOT_GAME

基于 Godot 4.7 的最小 2D 游戏模板，保留可扩展的游戏工程结构。

## 快速开始

```bash
just init
godot --editor --path game
```

项目根目录位于 `game/`。默认场景为 `game/scenes/main.tscn`，运行后会显示并打印 `Hello, World!`。

## 常用命令

```bash
just test   # 验证 Godot 项目可以加载
just fmt    # 格式化 GDScript
just lint   # 校验 GDScript
just check  # 执行格式与静态检查
```

## 工程结构

```text
docs/               # 策划、设计与技术文档
game/
  addons/           # Godot 扩展
  tools/            # 项目工具
  share/            # 共享资源
  scenes/           # 入口场景
  entities/         # 实体、配置与占位符资源
  systems/          # 游戏系统
  levels/           # 游戏关卡
  assets/           # 美术、音效与特效资源
  playtests/        # 游戏体验测试
  tests/            # 单元测试
  project.godot
rules/              # 编码、提交与资源规则
```

新项目通常只需替换 `docs/` 和 `game/` 中的内容即可开始开发。更多协作规范见 [AGENTS.md](AGENTS.md)。
