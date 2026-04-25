#!/bin/bash
mkdir -p "$HOME/backup"
tar -cjf "$HOME/backup/script_backup.tar.bz2" "$0"
