# vim-pss-syntax

**vim-pss-syntax** is a syntax highlighting plugin for Vim, designed to support the Portable Stimulus Specification (PSS) language. It highlights PSS keywords, types, constants, and comments, making it easier for developers to work with PSS files in Vim.

## Features

- Syntax highlighting for PSS keywords, types, constants, and comments.
- Supports both `//` and `/* */` comment styles.
- Compatible with Vim plugin managers like `vim-plug`.

## Installation

### Using vim-plug

1. Add the following line to your `.vimrc` file:

   ```vim
   Plug 'pratikparvati/vim-pss-syntax'
   ```
2.	Run the following command in Vim to install the plugin

   ```vim
   :PlugInstall
   ```
3. Manual Installation (Optional)

If you don’t use a plugin manager, you can manually install the plugin by cloning this repository into your Vim's `~/.vim` directory:

    ```bash
    git clone https://github.com/pratikparvati/vim-pss-syntax.git ~/.vim/pack/plugins/start/vim-pss-syntax
    ```
This ensures the plugin’s syntax files are available to Vim.

## Usage

Once installed, Vim will automatically apply syntax highlighting for `.pss` files. The plugin highlights PSS-specific keywords, types, constants, and other elements. It also properly formats both single-line comments (`//`) and block comments (`/* */`). You can now easily read and edit PSS code with enhanced visual cues for better development experience.
