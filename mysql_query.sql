
 

CREATE id not null primary_key auto_increment, ";


 " CREATE TABLE `book` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(100) NOT NULL DEFAULT '',
	`autor` varchar(100) NOT NULL DEFAULT '',
	`genre` varchar(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |


-- изменение строки с ид в таблице новости
UPDATE news SET 
	header = "{$post_data['header']}",
	description = "{$post_data['description']}",
	full_news = "{$post_data['full_news']}",
	date = "{$post_data['date']}" 
	WHERE news.id="{$post_data['id']}"
_QUERY_UPDATE;

--добавление строки в таблицу новости
INSERT INTO news (id, header, description, full_news, date) 
VALUES (NULL, "{$posshow databasest_data['header']}", "{$post_data['description']}", "{$post_data['full_news']}", "{$post_data['date']}")

CREATE table poligon (id int(11) not null primary key auto_increment);

--создание таблицы на урок

CREATE table book (
id int(11) not null auto_increcement primary key,
title varchar(256) not null default "",
year int(4)
);

--создание связующей таблицы


ALTER TABLE author_book ADD primary key (author_id, book_id);


-- переименование таблицы

RENAME TABLE autor TO author;

--CREATE три варианта инсертов
	--добавление 1 записи
	INSERT INTO book SET title="Хоббит или туда и обратно", year=1937;

	--добавление нескольких записей
	INSERT into book (title) values ("пикник на обочине"), ("12 стульев"), ("1944");

--добавление с select
INSERT INTO book (title) SELECT title FROM book;

--UPDATE записи
UPDATE book SET year=1983 WHERE book_id="2";


--DELETE

DELETE FROM book WHERE  ;

DELETE FROM book;

TRUNCATE TABLE book;

--добавление поля
ALTER TABLE `table` ADD `new_field` INT( 11 ) NOT NULL AFTER `some_field`




-------------------------------------------
SELECT title, year, fullname, birth AS date_of_birth FROM author LEFT JOIN author_book USING (book_id) WHERE 


GRANT ALL PRIVILEGIES ON mysql.* TO 'mikola'@'%';


-- вывести все кодировки utf8
SHOW collation LIKE 'utf8%';

 utf8_general_ci

-- показывает переменные с началом character
 show variables like 'character%';

 select distinct name from author a inner join author_book ab on a.author_id=ab.author_id;


INSERT INTO user (name, pwd, email, gender) value
 ('Vasya', '21341234qwfsdf', 'mmm@mmail.com', 'm'),
 ('Alex', '21341234', 'mmm@gmail.com', 'm'),
 ('Alexey', 'qq21341234Q', 'alexey@gmail.com', 'm'),
 ('Helen', 'MarryMeee', 'hell@gmail.com', 'f'),
 ('Jenny', 'SmakeMyb', 'eachup@gmail.com', 'f'),
 ('Lora', 'burn23', 'tricks@gmail.com', 'f');


select * from user;




 select concat('We have ', count(gender), ' boys') as 'Gender information:' from user where gender = 'm' 
 union
 select concat('We have ', count(gender), ' girls') as 'Gender information:' from user where gender = 'f';

select concat('This is ', name, ' he has email ', email) as 'info' from user where gender = 'm'
union 
select concat('This is ', name, ' she has email ', email) as 'info' from user where gender = 'f'
;

select concat('This is ', name, if(gender='m', 'he', 'she') , ' has email ', email) as 'info' from user where gender = 'm'
;





select concat('This is ', name, ,has email ', email) as 'info' from user;
