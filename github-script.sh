#!/bin/bash

mkdir ~/meus-repositorios-git
cd meus-repositorios-git

repositorios=$(curl -s https://api.github.com/users/SEU-USUARIO-DO-GITHUB/repos |awk '/ssh_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

for repositorio in $repositorios
do
	git clone $repositorio
done