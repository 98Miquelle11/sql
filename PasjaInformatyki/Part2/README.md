# [Part 2: Complex SELECT queries. Online bookstore.](https://www.youtube.com/watch?v=P2YT9PvflUM&list=PLOYHgt8dIdoymv-Wzvs8M-OsKFD31VTVZ&index=2)

*Experience shows that the success of programming course critically depends on the choice of presented examples.*

### what you should already know
* topics from [part1](https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/Part1/README.md).

### What will you learn:
* How to design a database to support the store,
* To create complex queries, i.e. those in which we extract data from several tables.

# Theory

## Bloom's taxonomy
Knowledge → Understanding → Application → Analysis → Synthesis → Evaluation

## SELECT queries

### Simple SELECT query
We extract data from only one table.

### Complex SELECT query
The data we want to extract from the database is in more than one table. This can be problematic because there are relationships between the tables.

When creating complex queries, you must provide a list of all relationships that exist between the tables used in the query! The mere similarity of names is not enough, because such a similarity could occur by chance.

## The principle of creating complex queries
It is the programmer's responsibility to provide a list of all relationships between the tables used in the query - this list should be placed after the WHERE clause.

# Practice
**Warning:** The exercise is executed using polish words and letters. If you want to use your own language and alphabet, it is recommended to choose specific collation (during the exercise).

## Preparation before exercise
Our database will be:
* relational,
* logically divided into:

  * **ksiazki** table,
  * **klienci** table,
  * **zamowienia** table.

* we will have 2 relations in out database: **idklenta** and **idksiazki**.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/32.jpg?raw=true" width="800">

## Course of the exercise

### Prepare the environment
1. Download files from [here](https://miroslawzelent.pl/kurs-mysql/zapytania-zlozone-select-wyjecie-danych-z-kilku-tabel/) (click **PLIKI DO ODCINKA**),
2. Run your **XAMPP Control Panel** like in the previous exercise (you should do it on the beginning of the exercise by default),
3. Open **phpMyAdmin** and create new database **ksiegarnia** (the same name as in our **dbconnect** file),
4. Click **Import** → **Choose file** (select **ksiegarnia.sql** from **ksiegarnia** catalog),
5. Move **ksiegarnia** catalog to `.../xampp/htdocs`,
6. Edit **zapytanie.txt** with Notepad ++ and open `http://localhost/ksiegarnia/` in your browser.



## Homework
* A pack of 10 questions to work through,
* Database: **car rental database**,
* Name of the database: **samochody**,
* Files to download [here](https://miroslawzelent.pl/kurs-mysql/zapytania-zlozone-select-wyjecie-danych-z-kilku-tabel/),
* Destination: `...\xampp\htdocs\samochody`.
