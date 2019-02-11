### 数据库

```
CREATE SCHEMA `mvc_boot` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'mvcboot'@'localhost' IDENTIFIED BY 'mvcboot@zhulin.com';
GRANT ALL PRIVILEGES ON mvc_boot.* TO 'mvcboot'@'localhost' WITH GRANT OPTION;
```