@echo off 
echo 开始部署博客... 
cd /d D:\myblog 
hexo clean 
hexo generate 
hexo deploy 
echo 部署完成！ 
pause 
