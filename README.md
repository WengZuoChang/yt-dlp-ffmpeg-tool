# yt-dlp 一键下载YouTube油管视频


yt-dlp官方地址：https://github.com/yt-dlp/yt-dlp

## 名词解释

**ID**：表示将要下载的视频或音频ID

**EXT**：表示视频的扩展名

**FILESIZE**：储存大小

**ACODEC**：表示视频格式

**VCODEC**：表示音频格式

**video only**：表示支持该下载的视频格式

**audio only**：表示支持该视频下载的音频格式



## 配置

修改conf文件

--output 为下载指定地址

**特别注意**：yt-dlp.conf 配置文件中不能有任何中文字符，否则会报错。





#### 更新及安装组件

```shell
apt update -y          # Debian/Ubuntu 命令
apt install -y curl    #Debian/Ubuntu 命令
apt install -y socat    #Debian/Ubuntu 命令
```

```shell
yum update -y          #CentOS 命令
yum install -y curl    #CentOS 命令
yum install -y socat    #CentOS 命令
```



## Window版本

1. 双击运行下载助手，输入YouTube油管视频地址，查询视频支持的下载格式

![](https://github.com/WengZuoChang/yt-dlp-ffmpeg-tool/blob/main/img/1.jpg)

2. 根据列出的视频信息列表，选择输入video only 行视频分辨率ID，例如：137
3. 根据列出的视频信息列表，选择输入audio only 行音频 ID，例如：251

![](https://github.com/WengZuoChang/yt-dlp-ffmpeg-tool/blob/main/img/2.jpg)

4. 最后等待下载完成。

## Linux版本

1. 执行命令

~~~shell
bash <(curl -L -s https://raw.githubusercontent.com/WengZuoChang/yt-dlp-ffmpeg-tool/main/linux/yoububeDown.sh)
~~~

![](https://github.com/WengZuoChang/yt-dlp-ffmpeg-tool/blob/main/img/3.jpg)

2. 根据列出的视频信息列表，选择输入video only 行视频分辨率ID，例如：137
3. 根据列出的视频信息列表，选择输入audio only 行音频 ID，例如：251

![](https://github.com/WengZuoChang/yt-dlp-ffmpeg-tool/blob/main/img/4.jpg)

最后等待下载完成。