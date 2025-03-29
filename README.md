# Dotfiles

## How to use 

### Prepare

Archlinux

```shell
paru -Syu stow
```

### No any config

```shell
git clone https://github.com/muyiacc/dotfiles .
cd ~/dotfiles
stow <program_config_dir>
```

### Haved config?

```shell
git clone https://github.com/muyiacc/dotfiles .
cd ~/dotfiles
./manager_dotfiles.sh mms <program_config_dir>
```

It will be  

- `mkdir ~/dotfiles/<program_config_dir>/.config/`
- `mv ~/.config/<program_config_dir>  ~/dotfiles/<program_config_dir>/.config/<program_config_dir>`
- `stow <program_config_dir>`


