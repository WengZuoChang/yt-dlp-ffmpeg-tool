#!/bin/bash


  # 安装yt-dlp
if [[ ! -e yt-dlp ]];
then
    echo "正在安装yt-dl..."
    wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
    sudo chmod a+rx ./yt-dlp
fi

# 安装Ffmpeg
if [[ ! -e ffmpeg ]];
then
    # 下载Ffmpeg
    wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
    # 解压Ffmpeg
    xz -d ffmpeg-git-amd64-static.tar.xz
    tar -xvf ffmpeg-git-amd64-static.tar
    # 删除压缩包
    rm -rf ffmpeg-git-amd64-static.tar
    # 重命名
    mv ffmpeg-git-20220108-amd64-static ffmpeg
fi

# 添加配置文件
if [[ ! -e yt-dlp.conf ]]; 
then
    touch yt-dlp.conf
    echo '## Download directory' >> yt-dlp.conf
    echo '--output ~/video/%(uploader)s/%(title)s-%(resolution)s.%(ext)s' >> yt-dlp.conf
    echo '--console-title --progress-template "%(uploader)s/download-title:%(info.id)s-%(progress.eta)s"' >> yt-dlp.conf
    echo '## Video Format Options'  >> yt-dlp.conf
    echo '--merge-output-format mp4' >> yt-dlp.conf
    echo '## Subtitle Options' >> yt-dlp.conf
    echo '--sub-langs all,-live_chat' >> yt-dlp.conf
    echo '--embed-thumbnail' >> yt-dlp.conf
    echo '--convert-subs srt' >> yt-dlp.conf
    echo "--ffmpeg-location `pwd`/ffmpeg/ffmpeg" >> yt-dlp.conf
    echo "创建完成"
fi

echo ============================================================
echo ====================== yt-dlp 下载助手 ======================
echo ================== 一键下载YouTube油管视频 ===================
echo ============ 码匠铺 https://www.wengzuochang.com ============
echo =============================================================

# 可以进行删除 stty erase '^H'
stty erase '^H'
while true
do
    read -p "请输入视频地址：" url
    if [ $url ]; 
    then
        break
    fi
done

echo "正在查询支持下载的格式列表..."
yt-dlp -F $url
echo "注意：audio only的行代表音频，video only的行代表视频"
while true
do
    read -p "请输入下载视频的分辨率(只能选video only)：" dpi
    if [ $dpi ]; 
    then
        break
    fi
done

while true
do
    read -p "请输入下载音频的格(只能选audio only)：" audioFormat
    if [ $audioFormat ]; 
    then
        break
    fi
done

echo 正在下载，请稍后...
yt-dlp ${url} -f${dpi}+${audioFormat}
read -p 下载完毕，按任意键退出!


