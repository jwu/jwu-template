# JWU Template

用于快速创建游戏项目的模板集合。

## 模板

### Bevy

[`bevy-tmpl/`](bevy-tmpl/) 是一个基于 Bevy 0.19、Rust 2024 的最小游戏模板。

```bash
cp -R bevy-tmpl my-bevy-game
cd my-bevy-game
./scripts/init.sh
cargo run
```

模板默认包名为 `MY_BEVY_GAME`。如需改名，请同步更新 `Cargo.toml`、`Cargo.lock` 和 `README.md`。

更多说明见 [`bevy-tmpl/README.md`](bevy-tmpl/README.md)。

### Godot 插件

[`godot-addon-tmpl/`](godot-addon-tmpl/) 是一个基于 Godot 4.7 的最小编辑器插件模板，默认插件名为 `MY_GODOT_ADDON`。

```bash
cp -R godot-addon-tmpl my-godot-addon
```

使用 Godot 4 打开复制后的项目，在 **项目 → 项目设置 → 插件** 中启用 **MY_GODOT_ADDON**。插件启用时会在编辑器输出中打印 `Hello, World!`。

更多说明见 [`godot-addon-tmpl/README.md`](godot-addon-tmpl/README.md)。

## 约定

- 每个模板可独立复制和使用。
- 请在新项目中按需替换默认项目名、作者信息和许可证信息。
- 模板内的 `AGENTS.md` 包含对应技术栈的协作规则与常用命令。
