#!/bin/bash
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global init.defaultBranch main
exec "$@"