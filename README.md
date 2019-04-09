### 数据库

```
CREATE SCHEMA `big_tree` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'bigtree'@'localhost' IDENTIFIED BY 'bigtree@zhulin.com';
GRANT ALL PRIVILEGES ON big_tree.* TO 'bigtree'@'localhost' WITH GRANT OPTION;
```