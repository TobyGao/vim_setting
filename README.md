# vim_setting

This repository contains my personal Vim configuration and setup scripts.

With this configuration, Vim provides the following features:

1. Highlights the current cursor line for better focus.
2. Displays a highlighted line number for the current line.
3. Stores up to 100 command history entries.
4. Displays tabs and whitespace with visible symbols.
5. Automatically completes symbols such as:
   - `()`
   - `{}`
   - `[]`
   - `""`
   - `''`
6. Converts tabs into **4 spaces**.
7. Installs and manages Vim plugins using Vundle.

---

# Installed Vim Plugins

1. [NERDTree](https://github.com/preservim/nerdtree)
   - File explorer for Vim
   - Press `Ctrl + f` to toggle it

2. [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
   - Intelligent auto-completion engine for Vim

---

# Installation

## 1. Run the install script

```bash
./install.sh
```

---

## 2. Install Vim plugins

Open Vim and execute:

```vim
:PluginInstall
```

Wait until all plugins are installed.

---

## 3. Build YouCompleteMe

Move to the plugin directory:

```bash
cd ~/.vim/bundle/YouCompleteMe
```

---

## 4. Compile YouCompleteMe

### Recommended (C/C++ support with clangd)

```bash
python3 install.py --clangd-completer
```

### Install all completers

```bash
python3 install.py --all
```

This installs support for multiple languages including:

- C/C++
- Python
- Go
- Rust
- JavaScript
- TypeScript

---

# Useful Vim Commands

## Insert Mode

### Auto-completion

```text
Ctrl + n
```

Trigger Vim auto-completion suggestions.

---

## Command Mode

### Cut lines

```vim
#dd
```

Cut `#` lines starting from the current cursor line.

Example:

```vim
5dd
```

Cuts 5 lines.

---

### Copy lines

```vim
#yy
```

Copy `#` lines starting from the current cursor line.

Example:

```vim
3yy
```

Copies 3 lines.

---

### Paste text

```vim
p
```

Paste copied or cut text after the cursor.

---

# Reference

- https://blog.csdn.net/Vintage_1/article/details/21557277
