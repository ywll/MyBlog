@echo off
echo ��ʼ����...
hexo clean && hexo g && hexo d
echo �������
echo ���ڱ��ݵ�githubԶ�ֿ̲�
./update.sh
echo �������
echo �����������
pause
exit