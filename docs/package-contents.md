# Package contents

Full package contents listing for [my dotfiles](https://github.com/aaronbates/dotfiles).

## Core

### Bash

Bash 4 and auto-completion

- `.bashrc` — loader
- `.bash_profile` — handles bash config
- `.exports` — `$EDITOR` is vim
- `.path` — pre-configured and deduped path
- `.bash_prompt` — smart prompt
- `.aliases` — helpful aliases
- `.functions` — useful functions
- `.inputrc` — better readline config
- `z` for a better smarter `cd`

### ack

- `.ackrc` — ack config

### Curl

- `.curlrc` — curl config

### Editor

- `.editorconfig` — consistent settings for code editors
- `.prettierrc` — prettier syntax config
- `.stylelintrc` — prettier syntax config

### Git

- aliased to `g` with bash completion
- `.gitattributes`
- `.gitconfig` — aliases, settings and shorthands
- `.gitignore` — global ignore list
- `git-friendly`
- `hub` with bash completion

### iTerm2

- Solarized Dark Theme
- Solarized Dark High Contrast Theme

### Nano

- `.nanorc` — nano syntax config

### Screen

- `.screenrc` — screen config

### Shell

- `.dircolors` — better `ls` colours
- `.hushlogin` — quiet server welcomes

### Terminal

- Solarized Dark Theme (256 colours)

### Vim

- `.vimrc` — vim config with backups, swaps and undo
- `vim-pathogen`
- `vim-colors-solarized`
- `vim-sensible` plugin
- `nerdtree` plugin
- `ctrlp.vim` plugin

### Wget

- `.wget` — wget theme

### Other

- **Xcode Command Line Tools**
- **Homebrew** — with bash completion
- **Homebrew Cask** — with bash completiton

## Installed via Homebrew

### Core utils

- `coreutils`
- `moreutils`
- `findutils`
- `gnu-sed --with default names`
- `bash`
- `bash-completion2`
- `zsh`
- `zsh-completion`
- `wget --with-iri`
- `gnupg`
- `perl`
- `vim --with-override-system-vi`
- `grep`
- `nano`
- `openssh`
- `screen`
- `git`
- `z`

### Other useful utils

- `ack`
- `brew-cask-completion`
- `cloc`
- `diff-so-fancy`
- `fzf`
- `gibo && gibo -l`
- `git-extras`
- `git-lfs`
- `grc`
- `httpie`
- `hub`
- `icdiff`
- `imagemagick --with-webp`
- `jp2a`
- `jq`
- `libgit2`
- `mas`
- `mtr`
- `ngrep`
- `nmap`
- `p7zip`
- `pidof`
- `pigz`
- `pv`
- `readline`
- `reattach-to-user-namespace`
- `rename`
- `roundup`
- `spaceman-diff`
- `spark`
- `speedtest-cli`
- `ssh-copy-id`
- `terminal-notifier`
- `the_silver_searcher`
- `trash-cli`
- `tree`
- `ttygif`
- `unrar`
- `vbindiff`
- `wifi-password`
- `youtube-dl`
- `zopfli`

### Backup tools

- `mackup`

### Development tools

- `yarn`
- `n`
- `go`
- `homebrew/php/php56 --with-gmp`
- `pyenv`
- `pyenv-virtualenv`

### Databases

- `postgresql`
- `mongodb`
- `redis`

### DevOps tools

- `awscli` — `$AWS_PROFILE` is 'read-only'
- `heroku`
- `nginx`

### Webfont tools
`tap cask/webfonttools`

- `snt2woff`
- `sfnt2woff-zopfli`
- `woff2`

### Fonts

`tap caskroom/fonts`

- `font-fira-code`
- `font-droid-sans`
- `font-droid-sans-mono`
- `font-fontawesome`
- `font-inconsolata`
- `font-open-sans`
- `font-pt-sans`
- `font-source-code-pro`
- `font-source-sans-pro`
- `font-ubuntu`

## Applications installed via Homebrew Cask

`tap caskroom/cask`

### Security

- `dashlane`
- `keybase`
- `gpgtools`
- `aws-vault`

### General

- `caffeine`
- `diskwave`
- `dropbox`
- `google-chrome`
- `grammarly`
- `iterm2`
- `licecap`
- `macdown`
- `oversight`
- `slack`
- `spectacle`
- `spotify`
- `vlc`

### Design

- `fontbase`
- `framer`
- `iconjar`
- `sketch`

### Development

- `google-chrome-canary`
- `imagealpha`
- `imageoptim`
- `ngrok`
- `vscode`

### DevOps

- `aws-vault`

### Quicklook plugins

- `qlcolorcode`
- `qlstephen`
- `qlmarkdown`
- `quicklook-json`
- `qlprettypatch`
- `quicklook-csv`
- `betterzipql`
- `qlimagesize`
- `webpquicklook`
- `suspicious-package`
- `quicklookase`
- `qlvideo`
	
### Mac App Store Applications
Installed using `mas`:

- [Contrast](https://usecontrast.com/)
- [Ulysses](https://www.ulyssesapp.com)

## Node

- `n` to manage Node versions (latest and LTS installed)
- `.npmrc` — Node config

### Global modules

- `create-react-app`
- `caniuse-cmd`
- `doctoc`
- `git-open`
- `git-recent`
- `gulp-cli`
- `imgur-uploader-cli`
- `is-up-cli`
- `moro`
- `npm-check`
- `npm-home`
- `npm-name-cli`
- `remote-share-cli`
- `speed-test`
- `surge`
- `svgo`
- `trash-cli`
- `viewport-list-cli`
- `vtop`

## Handy binary scripts
`/bin`

- `battery`
- `branch`
- `changelog`
- `colordump`
- `db-up`
- `git-autofixup`
- `git-big-file`
- `git-chromecheckout`
- `git-delete-merged-branches`
- `git-longest-message`
- `git-move-branch`
- `git-overwritten`
- `git-pr`
- `git-rank-contributers`
- `git-resolve`
- `git-sync`
- `git-thanks`
- `git-unpushed-branches`
- `git-unreleased`
- `git-where`
- `git-where-pr`
- `gitio`
- `ipsum`
- `pair`
- `ports`
- `rebase-authors`
- `release-tag`

## Mac OS

- [Mac OS X sensible defaults](../README.md#sensible-mac-os-x-defaults)
- [Quick Look plugins](#quicklook-plugins)

## Mackup

- [Mackup for backup](../README.md#mackup-for-backup)
- `.mackup.cfg` — mackup config
- `/.mackup` — individual app config for mackup
