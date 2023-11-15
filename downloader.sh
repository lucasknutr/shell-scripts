#!/bin/bash

# This is a simple script created by /lucasknutr (check me out on GitHub). It is used to stack a series of download links and download them sequentially. If you want to learn more about shell scripting or discuss Linux and automation in general, feel free to contact me at: lucasclaudinocc@gmail.com

#
# USE NEOVIM
#
# Function to download a file using wget

download_file() {
	local url=$1
	wget "$url"
}

# List of download links, change here whenever you want new links

download_links=(
	"https://dl3.downloadly.ir/Files/Elearning/Udemy_NEW_Master_Spring_Boot_3_Spring_Framework_6_with_Java_2023_8.part3_Downloadly.ir.rar"
	"https://dl3.downloadly.ir/Files/Elearning/Udemy_NEW_Master_Spring_Boot_3_Spring_Framework_6_with_Java_2023_8.part4_Downloadly.ir.rar"
	"https://dl3.downloadly.ir/Files/Elearning/Udemy_NEW_Master_Spring_Boot_3_Spring_Framework_6_with_Java_2023_8.part5_Downloadly.ir.rar"
	)

for link in "${download_links[0]}"; do
	echo "Baixando agora: $link"
	download_file "$link"
	echo "Download concluído: $link"
done

echo "Todos os downloads foram concluídos. As threads do terminal estão livres, Lucas!"
