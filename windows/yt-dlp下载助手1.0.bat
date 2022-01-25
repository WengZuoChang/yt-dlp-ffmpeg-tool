@echo off
echo 
echo ************************************************************
echo                      yt-dlp 下载助手
echo                   一键下载YouTube油管视频
echo              码匠铺  https://www.wengzuochang.com
echo *************************************************************                                                           
set /p url=请输入视频地址：

if "%url%" == "" echo 提示：请输入视频完整地址 && goto end
echo 正在查询支持下载的格式列表.......
yt-dlp.exe -F %url%

echo 注意：audio only的行代表音频，video only的行代表视频
set /p dpi=请输入下载视频的分辨率(只能选video only)：
set /p audioFormat=请输入下载音频的格(只能选audio only)：
echo 正在下载，请稍后...
yt-dlp.exe %url% -f%dpi%+%audioFormat%

echo 下载完毕，按任意键退出!
pause > nul

