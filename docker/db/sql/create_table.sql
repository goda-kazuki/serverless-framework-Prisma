DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id   int         NOT NULL AUTO_INCREMENT COMMENT 'ユーザー番号',
    name varchar(64) NOT NULL COMMENT '名前',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS cars;
CREATE TABLE cars
(
    id      int unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '車番号',
    user_id int         NOT NULL COMMENT 'オーナー番号',
    name    varchar(64) NOT NULL COMMENT '名前',
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
