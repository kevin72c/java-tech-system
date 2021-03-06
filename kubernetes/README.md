# Kubernetes on ubuntu

## ref
- https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
- https://www.jianshu.com/p/f2d4dd4d1fb1

## 下载安装 kubectl、kubeadm、kubelet
```
# 使得 apt 支持 ssl 传输
apt-get update && apt-get install -y apt-transport-https
# 下载 gpg 密钥
curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 
# 添加 k8s 镜像源
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF

apt-get update
# 下载 kubectl，kubeadm以及 kubelet
apt-get install -y kubelet kubeadm kubectl
```

```
kubeadm init \
--apiserver-advertise-address=192.168.180.217 \
--image-repository registry.aliyuncs.com/google_containers \
--pod-network-cidr=10.244.0.0/16
```

### 配置别名和自动补全
打开当前用户.bashrc文件，粘贴以下内容
```
# 配置别名为 k
alias k=kubectl
# 设置自动补全
source <(kubectl completion bash)
source <(kubectl completion bash | sed s/kubectl/k/g)
```
source ~/.bashrc  
安装bash-completion、执行bash_completion  
yum install bash-completion -y  
source /usr/share/bash-completion/bash_completion
