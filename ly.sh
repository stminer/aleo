#!/bin/bash
while true
do
echo -e "\033[32m=======Aleo鱼池挖矿助手======\033[0m"
echo -e "\033[32m|         \033[0m1.安装内核        \033[32m|\033[0m"
echo -e "\033[32m|         \033[0m2.开始挖矿        \033[32m|\033[0m"
echo -e "\033[32m|         \033[0m3.更新内核        \033[32m|\033[0m"
echo -e "\033[32m|         \033[33mCTRL+C退出        \033[32m|\033[0m"
echo -e "\033[32m=============================\033[0m"
read num
case $num in
1)
if [ `ls|grep -x aleo|wc -l` == 0 ];then
	mkdir aleo 
	{
		apt install -y curl unzip
		wget --no-check-certificate --content-disposition https://codeload.github.com/stminer/aleo/zip/refs/heads/main
		unzip aleo-main.zip
		unzip -d aleo aleo-main/Aleominer.tar.gz
		rm -rf aleo-mai*
		chmod +x aleo/*
	} >/dev/null 2>&1
else
	echo -e "\033[31m安装目录aleo已存在，停止安装...
	  请重新选择\033[0m"
fi
;;
2) if [ `ls|grep -x aleo|wc -l` == 0 ];then echo -e "\033[31m安装目录aleo不存在，请安装\033[0m" ;fi
echo -e "\033[36m请填写钱包地址：\033[0m"
read url
#echo "`pwd`/aleo/aleo-prover-cuda -a $url -p aleo2.damominers.com:8080"
echo -e "\033[33m启动成功!正在为鱼池账户名:\033[0m $url \033[33m挖矿中...\033[0m"
`pwd`/aleo/aleo-prover-cuda -a $url -p aleo2.damominers.com:8080
;;
3) rm -rf aleo
if [ `ls|grep -x aleo|wc -l` == 0 ];then
	mkdir aleo 
	{
		apt install -y curl unzip
		wget --no-check-certificate --content-disposition https://codeload.github.com/stminer/aleo/zip/refs/heads/main
		unzip aleo-main.zip
		unzip -d aleo aleo-main/Aleominer.tar.gz
		rm -rf aleo-mai*
		chmod +x aleo/*
	} >/dev/null 2>&1
else
	echo "安装目录aleo已存在，停止安装"
fi
;;
esac
done
