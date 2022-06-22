#!/usr/bin/env bash

m(){
PACKAGES=(
  bat curl clang exa git imagemagick
  inotify-tools lf mpd mpc neovim
  neofetch termux-api tmux zsh ruby
  python jq wget
)

echo -e "📦 Menginstall package\n"
for x in ${PACKAGES[@]}; do
  apt-get install ${x} -y
done
}

help()
{
  cat << EOF
make setup => menginstall bahan
make run   => menjalankan tools
make rp    => kontak author
EOF
}
i(){
  trap "rm -rf main.out" INT SIGINT
  gcc main.c -o main.out
}
help
#echo "silakan ketik -> make setup && make run"
