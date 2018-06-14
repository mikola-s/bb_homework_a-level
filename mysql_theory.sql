-- ПОЛЬЗОВАТЕЛЬ
	-- create создать пользователя
		CREATE USER user_name@host IDENTIFIED BY user_password;
		CREATE USER test IDENTIFIED BY '123';

	-- read
		SELECT user,host,password FROM mysql.user;

	-- update 
		 UPDATE mysql.user SET user='tester', password=PASSWORD('123') WHERE user='test';  

	-- delete
		 DROP USER 'mikola'@'%';
		 DROP USER 'user_name'@'host';
		 DROP USER tester@'%';

--=====================================
--привилегии пользователя
	--обновить привилегги послде изменения
		FLUSH PRIVILEGES;
	--CREATE 
		--все привилегии пользователю mik
		GRANT all ON *.* TO mik;
		GRANT ALL PRIVILEGES ON *.* TO 'mik'@'%' IDENTIFIED BY PASSWORD '123';
	-- read
		SHOW GRANTS FOR mik;
		-->
			GRANT ALL PRIVILEGES ON *.* TO 'mik'@'%' IDENTIFIED BY PASSWORD '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257' |
			GRANT ALL PRIVILEGES ON `books`.* TO 'mik'@'%'
	-- update 

	-- delete 
		-- забрать все привилегии во всех БД у пользователя mik
		REVOKE all ON *.* FROM mik;
			-->
			GRANT USAGE ON *.* TO 'mik'@'%' IDENTIFIED BY PASSWORD '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257' |
			GRANT ALL PRIVILEGES ON `books`.* TO 'mik'@'%'

--====================================
-- база даных
-- create
	CREATE database;
-- read
	SHOW databases;
	-- загрузка бд из дампа	
	USE pr_fin;
	SOURCE pr_fin_dump.sql;
-- update 
	
-- delete 


--====================================
-- таблица
-- create
	CREATE TABLE имя_таблицы (
		имя_строки тип_строки [NOT NULL] [PRIMARY KEY] [AUTO_INCREMENT] [CHARSET=utf8])

	`id` int(11) NOT NULL AUTO_INCREMENT,
	CREATE TABLE `book` (
	`title` varchar(100) NOT NULL DEFAULT '',
	`autor` varchar(100) NOT NULL DEFAULT '',
	`genre` varchar(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	--Если нужно сделать дамп только одной или нескольких таблиц
	MYSQLDUMP -u USER -pPASSWORD DATABASE TABLE1 TABLE2 TABLE3 
-- read
	-- посмотреть структуру таблицы
		DESC имя_таблицы;
	-- посмотреть содержимое таблицы
		SELECT * FROM имя_таблицы;
-- update 

-- delete 
	DROP TABLE poligon;

--====================================
-- поле
-- create
	ALTER TABLE table_name ADD field_name parameters;
-- read
	SELECT name FROM book;
-- update 
	
-- delete 

--====================================
-- строка 
-- create
	-- одна строка
	INSERT INTO book SET title="Хоббит или туда и обратно", year=1937;
	-- много строк
	INSERT INTO author_book (author_id, book_id) VALUES
    -> (1, 3), (2, 4), (3, 1), (4, 1), (5, 2), (6, 2);
    
-- read
	SELECT 
-- update 
	UPDATE author SET bod='1987-03-12' WHERE author_id>1;
	UPDATE news SET 
	header = "{$post_data['header']}",
	description = "{$post_data['description']}",
	full_news = "{$post_data['full_news']}",
	date = "{$post_data['date']}" 
	WHERE news.id="{$post_data['id']}";

-- delete 
	DELETE FROM book WHERE year = '2017'; -- удаление строк с годом 2017
	DELETE FROM book WHERE book_id > 10; -- удаление строк ИД которыйх больше 10

--====================================
-- запись (ячейка) 
-- create
	INSERT INTO book SET title="Хоббит или туда и обратно";
-- read
	SELECT name FROM author WHERE author_id=1;
-- update 
	UPDATE book SET year=1983 WHERE book_id="2";
-- delete 


--=============================================

-- JOINS

-- left join
	SELECT name, title FROM author a LEFT JOIN book b ON a.author_id=b.book_id;
-- right join

-- inner join

-- outer join





create table parents (
id int(11) not null AUTO_INCREMENT PRIMARY KEY,
fullname varchar(110) NOT NULL DEFAULT "",
parent_id int(11) not null default 0
);

SELECT fullname FROM parents WHERE id = 1;

SELECT fullname FROM parents p1 JOIN parents p2 on (p1.id=p2.parent_id)

