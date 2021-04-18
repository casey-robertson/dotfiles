#!/usr/bin/env bash
debug=${1:-false}

# Load help lib if not already loaded.
if [ -z ${libloaded+x} ]; then
  source ./lib.sh
fi;

# Set install flag to false
brewinstall=false

bot "Install Homebrew and all required apps."

ask_for_confirmation "\nReady to install apps? (get a coffee, this takes a while)";

# Flag install to go if user approves
if answer_is_yes; then
  ok
  brewinstall=true
else
  cancelled "Homebrew and applications not installed."
fi;

if $brewinstall; then
  # Prevent sleep.
  caffeinate &

  action "Installing Homebrew"
  # Check if brew installed, install if not.
  if ! hash brew 2>/dev/null; then
    # note: if your /usr/local is locked down (like at Google), you can do this to place everything in ~/.homebrew
    # mkdir "$HOME/.homebrew" && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
    # then add this to your path: export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    print_result $? 'Install Homebrew.'
  else
    success "Homebrew already installed."
  fi;

  running "brew update + brew upgrade"
  # Make sure we’re using the latest Homebrew.
  brew update

  # Upgrade any already-installed formulae.
  brew upgrade

  # CORE

  running "Installing apps"
  # Install GNU core utilities (those that come with macOS are outdated).
  # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
  brew install coreutils

  # Install some other useful utilities like `sponge`.
  brew install moreutils
  # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
  brew install findutils
  # Install GNU `sed`, overwriting the built-in `sed`.
  brew install gnu-sed --with-default-names

  # Install Bash 4.
  # Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
  # running `chsh`.
  brew install bash
  brew install bash-completion2

  # Switch to using brew-installed bash as default shell
  if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
    echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
    chsh -s /usr/local/bin/bash;
  fi;

  # zsh
  brew install zsh
  # brew install zsh-completion

  # Install `wget` with IRI support.
  brew install wget

  # Install GnuPG to enable PGP-signing commits.
  brew install gnupg

  # Install more recent versions of some native macOS tools.
  brew install perl
  brew install vim --with-override-system-vi
  brew install grep
  brew install nano
  brew install openssh
  brew install screen

  # Key tools.
  brew install git
  brew install z

  # OTHER USEFUL UTILS
  brew install advancecomp
  brew install brew-cask-completion
  brew install cloc
  brew install cmake
  brew install diff-so-fancy
  brew install fzf
  brew install gibo && gibo -l
  brew install git-delta
  brew install git-extras
  brew install git-lfs
  brew install git-quick-stats
  brew install graphviz
  brew install grc
  brew install httpie
  brew install hub
  brew install icdiff
  brew install jq
  brew install m
  brew install mas
  brew install mtr
  brew install ngrep
  brew install nmap
  brew install p7zip
  brew install pidof
  brew install pigz
  brew install pv
  brew install readline
  brew install reattach-to-user-namespace
  brew install rename
  brew install roundup
  brew install spaceman-diff
  brew install spark
  brew install speedtest-cli
  brew install ssh-copy-id
  brew install svn
  brew install terminal-notifier
  brew install the_silver_searcher
  brew install trash-cli
  brew install tree
  brew install unrar
  brew install vbindiff
  brew install wifi-password
  brew install zopfli

  # BACKUP
  brew install mackup

  # DEVELOPMENT
  brew install adr-tools
  brew install asdf
  # brew install n
  brew install yarn
  brew install go
  # brew install homebrew/php/php56 --with-gmp
  brew install pyenv
  brew install pyenv-virtualenv

  # DATABASES
  brew install postgresql
  brew install mysql@5.7
  brew install redis

  # DEVOPS
  brew install awscli
  brew install pulumi

  # docker
  # brew install docker
  # brew install docker-compose
  # brew install docker-machine
  # brew install xhyve
  # brew install docker-machine-driver-xhyve
  # brew install boot2docker

  # WEBFONT TOOLS
  running "Installing webfont tools"

  brew tap bramstein/webfonttools

  brew install sfnt2woff
  brew install sfnt2woff-zopfli
  brew install woff2

  # FONTS
  running "Installing fonts"

  brew tap homebrew/cask-fonts

  brew install --cask font-domine
  brew install --cask font-droid-sans
  brew install --cask font-droid-sans-mono
  brew install --cask font-fira-code
  brew install --cask font-fira-sans
  brew install --cask font-fontawesome
  brew install --cask font-inconsolata
  brew install --cask font-lato
  brew install --cask font-open-sans
  brew install --cask font-roboto
  brew install --cask font-source-code-pro
  brew install --cask font-source-sans-pro
  brew install --cask font-ubuntu

  running "Installing cask apps"

  # APPLICATIONS
  brew tap homebrew/cask
  brew tap homebrew/cask-versions

  # Security
  brew install --cask dashlane
  brew install --cask keybase
  brew install --cask gpgtools
  brew install --cask tunnelblick

  # General
  brew install --cask caffeine
  brew install --cask diskwave
  brew install --cask dropbox
  brew install --cask firefox
  brew install --cask g-desktop-suite
  brew install --cask google-chrome
  brew install --cask grammarly
  brew install --cask iterm2
  brew install --cask slack
  brew install --cask spectacle
  brew install --cask spotify
  brew install --cask vlc
  # brew install --cask zoomus

  # Design
  brew install --cask abstract
  # brew install --cask sketch
  # brew install --cask zeplin

  # Development
  brew install --cask dash
  brew install --cask google-chrome-canary
  brew install --cask graphiql
  brew install --cask imagealpha
  brew install --cask imageoptim
  brew install --cask ngrok
  brew install --cask sequel-pro
  brew install --cask visual-studio-code

  # DevOps
  brew install --cask aws-vault

  # VM
  # brew install --cask virtualbox
  # brew install --cask vagrant

  # Quicklook
  brew install --cask qlcolorcode
  brew install --cask qlstephen
  brew install --cask qlmarkdown
  brew install --cask quicklook-json
  brew install --cask qlprettypatch
  brew install --cask quicklook-csv
  # brew install --cask betterzipql
  # brew install --cask qlimagesize
  brew install --cask webpquicklook
  # brew install --cask suspicious-package
  brew install --cask quicklookase
  brew install --cask qlvideo

  # Install Mac App Store Applications.
  # requires: brew install mas
  # mas install 1254981365 # Contrast
  # mas install 1234952668 # FlagTimes
  # mas install 1225570693 # Ulysses
  # TODO: install pixelsnap

  running "brew cleanup"
  # Remove outdated versions from the cellar.
  brew cleanup

  # turn off prevent sleep.
  killall caffeinate
fi;
