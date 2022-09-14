DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id   int(5) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'ユーザー番号',
    name varchar(64) NOT NULL COMMENT '名前',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
