# Dotfiles

## How to use 

### Prepare

Archlinux

```shell
paru -Sy stow
```

### First use

```shell
git clone https://github.com/muyiacc/dotfiles .
cd ~/dotfiles
./manager_dotfiles.sh mms <program_config_dir>
```

It will be  

- `mv ~/.config/<program_config_dir> to  ~/dotfiles/<program_config_dir>/.config/<program_config_dir>`
- `stow <program_config_dir>`
