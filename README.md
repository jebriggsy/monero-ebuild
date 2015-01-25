# monero-ebuild
A Gentoo ebuild script to automate the installation of the Monero cryptocoin wallet, daemon, and simple miner.

## To install:
- Create a local overlay using this guide: https://wiki.gentoo.org/wiki/Overlay/Local_overlay
- *mkdir -p /usr/local/portage/net-p2p*
- *cd /usr/local/portage/net-p2p*
- *git clone https://github.com/jebriggsy/monero-ebuild.git*
- *mv monero-ebuild monero*
- *chown -R portage:portage monero*
- *emerge net-p2p/monero*

## To use
- *cd ~*
- *sudo /etc/init.d/bitmonerod start*
- *simplewallet*

## To start daemon on boot
- *sudo rc-update add bitmonerod default*
