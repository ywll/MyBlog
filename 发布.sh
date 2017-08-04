@echo off
echo 开始发布...
hexo clean && hexo g && hexo d
echo 发布完成
pause 
exit