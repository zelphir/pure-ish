# `pure-ish` Fish Shell Theme

Yet another port of the [ZSH pure prompt](https://github.com/sindresorhus/pure) to [fish shell](https://github.com/fish-shell/fish-shell) 🐟 with a few tweaks, hence **pure-ish**

## Usage

### Install

With [Fisher](https://github.com/jorgebucaran/fisher):
```fish
fisher add zelphir/pure-ish
```
_NOTE: Requires fish version >= `3.0`._

### OSX compatibility

Out of the box this theme will not work because OSX uses a BSD version of the `stat` command but the theme uses an option from the GNU/Linux version of `stat`. This is easily fixed if you're willing to use the GNU coreutils by default (which I recommend anyway):

1. Install [homebrew](https://brew.sh/) if you haven't already.
1. Before you install the theme or from a bash shell, install GNU coreutils:
    ```sh
    brew install coreutils
    ```
1. From a fish shell, add the new coreutils to your PATH (before the existing paths):
    ```sh
    set --universal fish_user_paths (brew --prefix coreutils)/libexec/gnubin $fish_user_paths
    ```
