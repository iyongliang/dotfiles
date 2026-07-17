# NVIM HELP

## install for ubuntu

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```

## install for debian

```bash
echo "deb https://ppa.launchpadcontent.net/neovim-ppa/stable/ubuntu focal main" > /etc/apt/sources.list.d/nvim-focal.list
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 9DBB0BE9366964F134855E2255F96FCF8231B6DD
sudo apt update
sudo apt install neovim
```

## optional

```bash
sudo apt install lua5.1 luarocks
sudo apt install python3-neovim
sudo apt install git
```

## update alternative

```bash
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
```
