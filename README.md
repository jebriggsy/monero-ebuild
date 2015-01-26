# monero-ebuild
A Gentoo ebuild script to automate the installation of the Monero cryptocoin wallet, daemon, and simple miner.

## Installation
- Create a local overlay using this guide: https://wiki.gentoo.org/wiki/Overlay/Local_overlay
- *mkdir -p /usr/local/portage/net-p2p*
- *cd /usr/local/portage/net-p2p*
- *git clone https://github.com/jebriggsy/monero-ebuild.git*
- *mv monero-ebuild monero*
- *mkdir -p /usr/local/portage/licenses*
- *mv monero/monero /usr/local/portage/licenses/*
- *chown -R portage:portage /usr/local/portage* 
- *emerge net-p2p/monero*

## Usage
- *cd ~*
- *sudo /etc/init.d/bitmonerod start*
- *simplewallet*

## Start bitmonerod on boot
- *sudo rc-update add bitmonerod default*

## Bitmonerod config
- Edit /etc/conf.d/bitmonerod
