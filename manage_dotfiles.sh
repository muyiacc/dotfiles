#!/bin/bash

# dotfiles具体存放的目录
dotfiles_root_dir="$HOME/dotfiles"

# 判断dotfiles目录是否存在
if [[ ! -d $dotfiles_root_dir ]]; then
  mkdir -p $dotfiles_root_dir
  echo "Created root directory $dotfiles_root_dir"
fi

# 应用程序名字
program_name="$2"

# 创建应用程序默认配置目录到dotfiles目录
mkdir_program_dotfiles_dir() {
  program_dotfiles_dir="$dotfiles_root_dir/$program_name/.config/$1"
  mkdir -p "$program_dotfiles_dir"
  echo "Created directory: $program_dotfiles_dir"
}

# 移动应用程序默认配置到dotfiles对应的目录
move_program_config_dir() {
  program_dotfiles_dir="$dotfiles_root_dir/$program_name/.config/"
  program_config_source_dir="$HOME/.config/$1"
  mv $program_config_source_dir $program_dotfiles_dir
  echo "Moved directory: $program_config_source_dir To $program_dotfiles_dir"
}

# 复制应用程序默认配置到dotfiles对应的目录
copy_program_config_dir() {
  program_dotfiles_dir="$dotfiles_root_dir/$program_name/.config/$1"
  program_config_source_dir="$HOME/.config/$1"
  cp -r $program_config_source_dir/* $program_dotfiles_dir
  echo "Copy directory: $program_config_source_dir To $program_dotfiles_dir"
}

case $1 in
"mkdir")
  mkdir_program_dotfiles_dir $2
  ;;
"move")
  move_program_config_dir $2
  ;;
"copy")
  copy_program_config_dir $2
  ;;
"mcopy")
  mkdir_program_dotfiles_dir $2
  copy_program_config_dir $2
  ;;
"mmove")
  mkdir_program_dotfiles_dir $2
  move_program_config_dir $2
  ;;
"mms")
  mkdir_program_dotfiles_dir $2
  move_program_config_dir $2
  stow $2
  ;;
*)
  echo "Usage: $0 <mkdir|move|copy|mcopy|mmove|mms> program"
  exit 1
  ;;
esac
