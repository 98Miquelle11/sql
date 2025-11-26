# [Part 2: Complex SELECT queries. Online bookstore.](https://www.youtube.com/watch?v=P2YT9PvflUM&list=PLOYHgt8dIdoymv-Wzvs8M-OsKFD31VTVZ&index=2)

*Experience shows that the success of programming course critically depends on the choice of presented examples.*

### What you should already know
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
It is the programmer's responsibility to provide a list of all relationships between the tables used in the query - this list should be placed after the **WHERE** clause.

# Practice
**Warning:** The exercise is executed using polish words and letters. If you want to use your own language and alphabet, it is recommended to choose specific collation (during the exercise).

## Preparation before exercise
Our database will be:
* relational,
* logically divided into:

  * **ksiazki** table,
  * **klienci** table,
  * **zamowienia** table.

* we will have 2 relations in out database: **idklienta** and **idksiazki**.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/32.jpg?raw=true" width="800">

## Course of the exercise

### Prepare the environment
1. Download files from [here](https://miroslawzelent.pl/kurs-mysql/zapytania-zlozone-select-wyjecie-danych-z-kilku-tabel/) (click **PLIKI DO ODCINKA**),
2. Run your **XAMPP Control Panel** like in the previous exercise (you should do it on the beginning of the exercise by default),
3. Open **phpMyAdmin** and create new database **ksiegarnia** (the same name as in our **dbconnect** file),
4. Click **Import** → **Choose file** (select **ksiegarnia.sql** from **ksiegarnia** catalog),
5. Move **ksiegarnia** catalog to `.../xampp/htdocs`,
6. Edit **zapytanie.txt** with Notepad ++ and open `http://localhost/ksiegarnia/` in your browser.

### Find in a database:

* *Books sorted alphabetically by title.*

`SELECT * FROM ksiazki ORDER BY tytul` - select **all columns** from table **ksiazki**, and order it alphabetically by their titles

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/33.jpg?raw=true" width="800">

* *The most expensive book.*

`SELECT * FROM ksiazki ORDER BY cena DESC LIMIT 1` - select **all columns** from table **ksiazki**, and order it in descending order by their prizes, then limit view of the records only to one row.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/34.jpg?raw=true" width="800">

* *All orders shipped.*

`SELECT * FROM zamowienia WHERE status = "wyslano"` - select **all columns** from table **zamowienia**, where string **"wyslano"** is obligatory in column **status**.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/35.jpg?raw=true" width="800">

* *Where all customers are with the last name "Rutkowski".*

`SELECT * FROM klienci WHERE nazwisko = "Rutkowski"` - select **all columns** from table **klienci**, where string **"Rutkowski"** is obligatory in column **nazwisko**.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/36.jpg?raw=true" width="800">

* *Books containing the phrase “PHP” in the title.*

`SELECT * FROM ksiazki WHERE tytul LIKE "%PHP%"` - select **all columns** from table **ksiazki**, where string in column **tytul** should have string **"PHP"** somewhere in an entire string.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/37.jpg?raw=true" width="800">

* *Orders sorted by most recent.*

`SELECT * FROM zamowienia ORDER BY data DESC` - select **all columns** from table **zamowienia**, and order it in descending order by data of placing an order.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/38.jpg?raw=true" width="800">

### Queries related to connecting the tables:

* *For all orders, include: full name of the customer placing the order, the order ID, and the order date.*

`SELECT klienci.imie, klienci.nazwisko,zamowienia.idzamowienia, zamowienia.data 
FROM klienci, zamowienia WHERE klienci.idklienta = zamowienia.idklienta` - we are including specific columns from specific tables and mentioning about relation between **idklienta** in **klienci** and **zamowienia** tables.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/39.jpg?raw=true" width="800">

* *For all orders, include: full name of the customer placing the order, the order ID, and the order date (but with aliases (nicknames) for tables).*

`SELECT k.imie, k.nazwisko,z.idzamowienia, z.data FROM klienci AS k, zamowienia AS z
WHERE k.idklienta = z.idklienta` - we changes columns' names to nicknames and mentioned, what they mean by command **AS**.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/39.jpg?raw=true" width="800">

* *The full names of people who have ever ordered book no. 2.*

`SELECT k.imie, k.nazwisko,z.idzamowienia, z.data FROM klienci AS k, zamowienia AS z
WHERE z.idksiazki = 2 AND z.idklienta = k.idklienta`

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/40.jpg?raw=true" width="800">

* *What books (title, author) did Jan Nowak order?*

`SELECT k.tytul, k.imieautora, k.nazwiskoautora 
FROM ksiazki AS k, zamowienia AS z
WHERE z.idklienta = 2 AND k.idksiazki = z.idksiazki`

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/41.jpg?raw=true" width="800">

* *Orders placed by persons with the surname Rutkowski, sorted by date from
the most recent (name and surname of the person placing the order, ID, date and status
of the order, title of the book ordered).*

`SELECT kl.imie, kl.nazwisko, ks.tytul, z.idzamowienia, z.data, z.status
FROM ksiazki AS ks, klienci AS kl, zamowienia AS z
WHERE kl.nazwisko = "Rutkowski" AND ks.idksiazki = z.idksiazki
AND kl.idklienta = z.idklienta ORDER BY z.data DESC` - it was better to search for "Rutkowski" by surname, not ID, because there is more than one Rutkowski.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/43.jpg?raw=true" width="800">

## Homework
* A pack of 10 questions to work through,
* Database: **car rental database**,
* Name of the database: **samochody**,
* Files to download [here](https://miroslawzelent.pl/kurs-mysql/zapytania-zlozone-select-wyjecie-danych-z-kilku-tabel/),
* Destination: `...\xampp\htdocs\samochody`.
