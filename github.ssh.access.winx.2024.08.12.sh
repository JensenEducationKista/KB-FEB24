#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# The requested operation requires elevation.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# The requested operation is successful. Changes will not be effective until the system is rebooted.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "emrah"
New password: "0000"
Retype new password: "0000"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/aliz/.hushlogin file.
# aliz@AliZ:~$

# - Open WSL
sudo apt update
[sudo] password for emrah: "0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:3 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [1947 kB]
# [...]
# Reading package lists... DoneHit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Fetched 9500 kB in 2s (4720 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# All packages are up to date.

sudo apt upgrade
# # Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bsdutils amd64 1:2.37.2-4ubuntu3.4 [80.9 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 coreutils amd64 8.32-4.1ubuntu1.2 [1437 kB]
# [...]

# - install python
sudo apt install python3-pip
# #Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
# # [...]
Do you want to continue? [Y/n] "y"

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# pwgen is already the newest version (2.08-2build1).
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
pwgen -y -n 40
# # Roorae8he8eeh7aiph2Quie9CoozoMee;z2oofeo
# ohboosooghoht8einah6Ki"w9ju-va3eil9iKee;
# eeCh)ei9quu+l~eewai{tiesh9iCes4ohraevood
# yei'gohthal?ee&peil7er)ahoa8Wiequou1kai%
# oosiec'aetae%g1sheeChif7nueco$axie7Yieng
# queirisaic6Phohz9EXee0che8Yae{zu9sha6aen
# ahweicah4daeg0eikoKa6pohthay~ahc1ooh0zei
# quoo/yoobee6ut0ahN9aech8Nie_v3IziW8iekai
# nae(joh?tan7iaXeephuch!ie+qu1ojah_c/a6te
# ko3oy5iedaew_aeQuii2EneiD1aimohcheJ7quee
# da<itoh5aac!ei$z@o7wiu1Vaewaiy7aeBie2Heo
# toochae6riugha6ahKu2Ie`p3foonotahyooz7oh
# zai2coh3bee3Akughit3aS1aiGi^z4vec[ah&w9r
# ceegiu4chaem1shiaM6nu,uki4foi6Haeb8phuQu
# tha{waeg9oobiezee`Hei1eH7gah9OD0Lai7aJ3a
# ahghai5oud+ohpa"i7auXai}F~oulae)tie2do4X
# thae1Haen0HieRahthigeh0eeg3Seiquoh`H(o5w
# joo3ozaequ~ahneeCh8up;oo0ifohshaeboghie6
# aelohyeiK1ke3ad8geo3eeboh,ngah6aip3kai5e
# IJ3ie7luu6uNgohngoh8oriewei|ghaesuukosie

# - check if ssh service is running
sudo service ssh status
#ssh: unrecognized service
sudo apt install openssh-server
# #Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
# Suggested packages:
#   molly-guard monkeysphere ssh-askpass
# The following NEW packages will be installed:
#   libwrap0 ncurses-term openssh-server openssh-sftp-server ssh-import-id
# 0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
# Need to get 799 kB of archives.
# After this operation, 6157 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/hp.envy
Enter passphrase (empty for no passphrase): " ko3oy5iedaew_aeQuii2EneiD1aimohcheJ7quee"
Enter same passphrase again: "jie5ahF" " ko3oy5iedaew_aeQuii2EneiD1aimohcheJ7quee"
# Your identification has been saved in /home/aliz/.ssh/hp.envy
# Your public key has been saved in /home/aliz/.ssh/hp.envy.pub
# The key fingerprint is:
# SHA256:Un3e+5u2Pg7E1jljVztwc1GXWVzi5NZ0JBDfgDu0VPs aliz@AliZ
# The key's randomart image is:
# +---[RSA 4096]----+
# |            o=*+#|
# |         .  += @=|
# |        . .o.+*o=|
# |       .   o=o+.*|
# |      . S   .=.OE|
# |       .    o ..=|
# |             ..  |
# |              .+.|
# |              +*=|
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# * Starting OpenBSD Secure Shell server sshd                         [ OK ]
sudo ufw allow ssh
# Rules updated
# Rules updated (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

cat .ssh/hp.envy.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDr/UeVt8Y2hvYAOJZxOTJQgJEDtFcGxzIDwZ/TGE64qlbdDS4zsedXAIBaUcqSrIgJwCdeJz/hplJ5Bq8x4mWWHi1i992vsasNrLus81gdNtTGNDrChcsGzALzF6sirkJL2H7FXZ3xrg2lfz44Q8nvj/Hrfzfj/oWyt4KMl3iRzrHCKz3EZPAdQ2XZ0HkHYEleCRPD7DqJ7pF1Huyc3VPpcNhKnKCwY5Wz8as+gR++UeHh6Rz8TE0Ew0ISzlfX56sejx9JYQ8gfJNzDDT1pz1rXcBmbOeR8ONUM46bqfsz2suOFSXCWAw7yPM/pwwgrYZMDKsoKRATMeudYrQXDJA437QuMWjb1Cf2DcSuN3ZvoJO1DhVu/TRzAvVFrKBPBrbEQ1nNcYvyAAObMQnS/pUHWHP+lh2Mp9fSwFIbBL0BHfG2PxM9ay4prjfu+8GeiFz8TnvK9w21mLXxWAgMSWponphdigg7fTpnKoA4dDEi+AEHkxP7iiXwY414NjXgGEZGREXhedy3KzwsO4tVpz4Xm/Jd/rNfhwkNYTDLpVCqOMdrOFG3A73+PmbIe6QboVq6mZ8w8aZrR0u1HHCwj/soNrY4PT/F+10N/TdMeop62uyklmN9yEj9mSEuhwYRMBIEJCTfxijzD4kSqFuJDnRAxjXIxgACgaLmianz6aeg8w== emrah@emrahaltun

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"hp.envy"

# Key type
"[Authentication Key↕]"

# Key
"****************"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/hp.envy
EOF

# - Create source directory
cd
mkdir src
cd src

##########################################################
# clone and push to github
##########################################################

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
Cloning into 'KB-FEB24'...
# The authenticity of host 'github.com (140.82.121.3)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/emrah/.ssh/hp.envy': " ko3oy5iedaew_aeQuii2EneiD1aimohcheJ7quee"
# remote: Enumerating objects: 49, done.
# remote: Counting objects: 100% (49/49), done.
# remote: Compressing objects: 100% (42/42), done.
# remote: Total 49 (delta 19), reused 21 (delta 3), pack-reused 0 (from 0)
# Receiving objects: 100% (49/49), 29.27 KiB | 389.00 KiB/s, done.
# Resolving deltas: 100% (19/19), done.cd KB-FEB24
mkdir emrah
cd emrah
cd
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

cd emrah
git checkout -b "emrah_doc_verification"
# Switched to a new branch 'emrah_doc_verification'

# - IMPORTANT:
# - Create a file with "nano" or "vi", paste this documentation there

# - then add newly created file
