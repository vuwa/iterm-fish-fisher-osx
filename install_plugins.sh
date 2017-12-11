#!/usr/bin/env fish
#title          :install_plugins.sh
#description    :This script will install and configure themes and plugins for Oh My Fish.
#author         :ghaiklor
#date           :2017-12-11
#version        :0.1
#usage          :curl -s https://raw.githubusercontent.com/ghaiklor/iterm-fish-omf-osx/master/install_plugins.sh | fish
#fish_version   :2.7.0
#===================================================================================

# Plugins Configuration
brew install jq thefuck
omf install spark license battery await hash errno brew node-binpath pj thefuck
set -U PROJECT_PATHS ~/Library/Projects

# Theme Configuration
brew install --with-default-names gnu-sed
brew install coreutils
set -U fish_user_paths /usr/local/opt/coreutils/libexec/gnubin $fish_user_paths
set -U fish_key_bindings fish_vi_key_bindings
set -U budspencer_nogreeting
set -U budspencer_nobell
fish_update_completions
omf install budspencer
