# Dotfiles

这是我的个人配置文件仓库，包含各种开发工具和终端的配置文件，旨在提升开发效率和使用体验。

## 目录结构

- **debian**: Debian系统相关配置
- **kitty**: [Kitty终端](https://sw.kovidgoyal.net/kitty/)的主题配置文件
- **software**: 各种软件的配置文件
  - **book**: 书籍模板
  - **clion**: JetBrains CLion配置
  - **nvim**: [Neovim](https://neovim.io/)配置文件
  - **sublime-text-3**: Sublime Text 3配置
  - **vim**: Vim编辑器配置
- **terminal**: 终端相关配置
  - **tmux.conf**: [Tmux](https://github.com/tmux/tmux)配置
  - **zshrc**: [Zsh](http://zsh.sourceforge.net/)配置
  - **themes**: 终端主题脚本

## 使用说明

### Neovim配置

Neovim的配置文件位于`software/nvim`目录下，包括以下内容：

- `init.lua`: 主配置文件
- `lua/options.lua`: 设置Neovim选项
- `lua/colorscheme.lua`: 配置颜色主题
- `lua/plugins.lua`: 插件管理

### Kitty终端主题

Kitty终端的主题配置文件位于`kitty`目录下，包括多种流行主题，如Monokai、Gruvbox、VSCode等。

### 终端主题脚本

`terminal/themes`目录包含多个终端主题脚本，可以轻松切换不同主题。每个脚本都定义了颜色变量并调用`apply_theme`函数来应用主题。

## 安装指南

1. 克隆仓库到本地：
   ```bash
   git clone https://gitee.com/iyongliang/dotfiles.git
   ```

2. 根据需要复制或链接配置文件到相应位置。例如，要使用Neovim配置：
   ```bash
   ln -s /path/to/dotfiles/software/nvim ~/.config/nvim
   ```

3. 对于终端主题脚本，可以直接运行脚本来应用主题：
   ```bash
   bash /path/to/dotfiles/terminal/themes/gruvbox-dark.sh
   ```

## 贡献指南

欢迎贡献新的配置文件或改进现有配置。请提交Pull Request并确保遵循现有风格。

## 许可证

本项目采用MIT许可证。详情请查看[LICENSE](LICENSE)文件。
