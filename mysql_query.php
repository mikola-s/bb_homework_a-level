<?php
$query = 

"CREATE id not null primary_key auto_increment, ";


 " CREATE TABLE `book` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(100) NOT NULL DEFAULT '',
	`autor` varchar(100) NOT NULL DEFAULT '',
	`genre` varchar(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |


-- //изменение строки с ид в таблице новости
UPDATE news SET 
	header = "{$post_data['header']}",
	description = "{$post_data['description']}",
	full_news = "{$post_data['full_news']}",
	date = "{$post_data['date']}" 
	WHERE news.id="{$post_data['id']}"
_QUERY_UPDATE;"

//добавление строки в таблицу новости
INSERT INTO news (id, header, description, full_news, date) 
VALUES (NULL, "{$post_data['header']}", "{$post_data['description']}", "{$post_data['full_news']}", "{$post_data['date']}")

CREATE table poligon (id int(11) not null primary key auto_increment);

// создание таблицы на уроке
"CREATE table book (
id int(11) not null auto_increcement primary key,
title varchar(256) not null default "",
year int(4)
);"
//замена имени столбца
ALTER TABLE book CHANGE id book_id INT(11) NOT NULL AUTO_INCREMENT;

//создание талицы автора
"CREATE table autor (
author_id int not null,
book_id int not null
);"

ALTER table athor_book add primary key (author_id, book_id);


--
mysqldump -uUSER -pPASSWORD DB_NAME > FILE_NAME_TO_SAVE
