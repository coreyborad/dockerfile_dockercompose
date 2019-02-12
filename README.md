## 存放一些常用的docker相關的程式碼

##### 對照表格 #####
Folder name   | Content
--------------|---------
patch_1       | php71+mysql56
patch_2       | php71+mysql56+mosquitto+mongodb
patch_3       | 依照docker-compose config 匯出 docker image的 shell scripts 

##### 如何安裝docker與docker-compose #####

##### 安裝 docker #####
```
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'

sudo apt-get update

sudo apt-get install -y docker-engine

sudo systemctl status docker

sudo usermod -aG docker $(whoami)

sudo reboot
```
##### 安裝 docker-compose #####
```
sudo apt-get install -y curl

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```

##### 常用指令 #####

build dockerfile
```
docker build -t <imagetag> -f <dockfilepath> .
```
run docker-compose
```
docker-compose up -d
```

##### 2019-02-12 #####
A.修改 php71_mysql56 資料夾名稱 為 patch_1
B.新增 對照表至上方
C.新增 patch_3
##### 2018-06-13 #####
A.新增 patch_2
  
  內容: php71+mysql56+mosquitto+mongodb
##### 2018-04-10 #####
A.修改php7.1 + mysql5.6(2個container)的
  dockerfile跟docker-compose yaml
  
  1. 新增crontab
  2. 將web的docker CMD移動到shell script執行
##### 2018-03-22 #####
A.新增php7.1 + mysql5.6(2個container)的
  dockerfile跟docker-compose yaml
  
  1. apache與mysql分開
  2. 已做好基本的安全性
  3. 會在上一層的目錄備份mysql的結構
  4. yaml可以設定是否要匯入設計好的db table
  5. 其餘請參考dockerfile與docker-compose相關文件

  建議先build完web，記得參照image tag