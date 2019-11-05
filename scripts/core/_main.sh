#!/usr/bin/env bash

set -euo pipefail

if ! ${DOT_MAIN_SOURCED:-false}; then
  source "$DOTFILES_PATH/scripts/core/args.sh"
  source "$DOTFILES_PATH/scripts/core/log.sh"
  source "$DOTFILES_PATH/scripts/core/documentation.sh"
  source "$DOTFILES_PATH/scripts/core/collections.sh"

  readonly DOT_MAIN_SOURCED=true
fi
