@echo off
echo 开始发布...
hexo clean && hexo g && hexo d
echo 发布完成
echo 正在备份到github远程仓库
update.sh
echo 备份完成
echo 按任意键结束
pause
exit