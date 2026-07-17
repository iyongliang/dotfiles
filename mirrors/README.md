# China mirrors

## rust

### install

```bash
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
curl --proto '=https' --tlsv1.2 -sSf https://rsproxy.cn/rustup-init.sh | sh
```

### set mirror

```bash
mkdir $HOME/cargo
mv mirrors/cargo/config.toml $HOME/cargo/
```

## python

### install

```bash
sudo apt install python3-pip
```

### set mirror

```bash
cat > $HOME/.config/pip/pip.conf << EOF
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host = pypi.tuna.tsinghua.edu.cn
EOF
```

### other mirrors

- 清华大学：https://pypi.tuna.tsinghua.edu.cn/simple
- 阿里云：https://mirrors.aliyun.com/pypi/simple/
- 腾讯云：https://mirrors.cloud.tencent.com/pypi/simple/
- 华为云：https://repo.huaweicloud.com/repository/pypi/simple

## go

### set mirror

```bash
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
```