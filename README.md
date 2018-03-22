## 存放一些常用的docker組合

2018-03-22
A.新增php7.1 + mysql5.6(2個container)的
  dockerfile跟docker-compose yaml
  
  1. apache與mysql分開
  2. 已做好基本的安全性
  3. 會在上一層的目錄備份mysql的結構
  4. yaml可以設定是否要匯入設計好的db table
  5. 其餘請參考dockerfile與docker-compose相關文件