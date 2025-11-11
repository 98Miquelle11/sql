# [Part 1: Databases. First SELECT queries.](https://www.youtube.com/watch?v=99JAI24Zd24&list=PLOYHgt8dIdoymv-Wzvs8M-OsKFD31VTVZ&index=1)

*Success is a progressive realization of a valuable idea within a patient time frame.*

# Theory

## Database
Simply put, database is a collection of information. Less simply, it's a structured collection of data (information), typically organized as a set of tables linked by relationships. 

**Examples**: a telephone directory, a library catalog, or a portal's user database.

## Table
Table is a container for data. A collection of related information, usually presented as an arrangement of horizontal rows and vertical columns. A single database can contain many tables, and in such cases, logical connections (relations) exist between them.

**Column** - a feature (attribute) of the object, the attribute is e.g.: *name*.

**Row** - a value of selected features of a specific object in the database.

### Record
Single row in a table, e.g., a set of fields appearing in it. For example, a set of characteristics for a given student (user).

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/1.jpg?raw=true" width="250">

The record **does not have to** contain ALL features of the object. It can be, for example, just a name and surname.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/3.jpg?raw=true" width="250">

### Field
Part of a table that stores individual data, e.g. the name of a specific person in the table.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/2.jpg?raw=true" width="250">

### Primary key
One or more fields whose value uniquely identifies each record in a table. This characteristic of a key is called uniqueness. E.g **ID number**.

**Example**: book nr 4 is a copy of "Pan Tadeusz".

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/4.jpg?raw=true" width="250">

**The database system** should ensure that the ID value is **never duplicated**. To achieve this, the **ID field can be designated as the primary key**.

**Redundancy (repetition)** - a phenomenon that we want to avoid when creating a relational model in databases.

## DBMS
Database Management System. **MySQL**, PostgreSQL, Firebird, Oracle Database are the examples of such system.

**A model is** an (abstract, virtual) representation of a fragment of the real world (e.g. in a bookstore). It is a transfer of real matters to zeros and ones stored in a computer.

**Data model** – an integral set of rules describing data and the relationships between them and defining constraints imposed on both the data and the operations performed on them.

**The data model** fulfills **3 basic roles**:
* **Structural** - defining how data is stored (in an orderly manner),
* **Integral** - ensuring the stability of the data storage system,
* **Manipulative** - ensuring the possibility of safe data modification and possible changes to the data structure.

**Data structures** are advanced containers for data that collect and organize it in an appropriate way:
* Their diversity is enormous, and many uses have been found for each,
* It is common to use one data structure to process information stored in another,
* They are a fundamental tool for a programmer and knowledge of them is essential for professional programming.

**Database models**:
* **Homogeneous model** - uses only one data set (e.g., table, file, list, catalog). This model is conceptually simple, but its drawbacks include the difficulty of finding some data and possible redundancy associated with attempts to streamline the search for records or attributes (e.g., a book catalog),

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/5.jpg?raw=true" width="350">

* **The hierarchical model** is based on tree-like (hierarchical) data structures characterized by the use of parent-child relationships. A disadvantage of this model is its lack of flexibility in data operations, such as inserting child records,

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/6.jpg?raw=true" width="350">

* **Object model** – based on the approach we know from **object-oriented programming**: reality is represented by objects, which we understand as **class instances**,

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/7.jpg?raw=true" width="350">

* **Network** – in this model, individual elements can connect with others and create a framework. This model can be a visualization of the organization of document flow,

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/8.jpg?raw=true" width="450">

* **Relational** – its basis is storing data in a table (or tables) called relations, consisting of rows and columns. A characteristic of this model is the close relationship between the fields that make up the rows and the columns that define the content of those fields. **MySQL** uses the relational database model.


*An example of a relational model in the form of a single table.*
<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/9.jpg?raw=true" width="550">

*An example of a relational model in the form of two related tables.*
<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/10.jpg?raw=true" width="550">

## SQL
Structured Query Language. *query* – a query to a database. 

**Types of queries**: 
* inserting,
* searching,
* changing,
* deleting,
* changing the structure of tables or databases.

When creating complex queries, you must provide a list of all relationships that exist between the tables used in the query!

**MySQL** uses a **relational database model**. In this model, we divide the database data into tables and define fields within the tables, known as keys. Relationships between tables are then defined, combining the data into a **logical whole** that is understandable to those using the database.

### Relationship
A logical connection between two tables, implemented using a primary key, a foreign key, or a special table (a linking table). Each relationship is described by a relationship type. We distinguish the following types of relationships: one-to-one, one-to-many, and many-to-many.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/11.jpg?raw=true" width="700">

### Data types
Each column of a table in the database stores data of the same type

| Type       | Size                         | Description                                                                 |
|------------|------------------------------|-----------------------------------------------------------------------------|
| CHAR[x]    | x bytes                      | Field storing from 0 up to max. **255 characters**                         |
| VARCHAR[x] | String length x + 1 byte     | Variable-length text field                                                  |
| TEXT       | String length + 2 bytes      | String with a maximum length of **65,535 characters**                      |
| LONGTEXT   | String length + 4 bytes      | String with a maximum length of **4,294,967,295 characters**              |
| INT        | 4 bytes                      | Numbers in the range from **-2,147,483,648 to 2,147,483,647**              |
| FLOAT      | 4 bytes                      | Real number, floating-point                                                 |
| DATE       | 3 bytes                      | Date in the format **YYYY-MM-DD**                                           |
| TIME       | 3 bytes                      | Time in the format **HH:MM:SS**                                             |

### PHP
PHP is an acronym for *PHP: Hypertext Preprocessor*. It is a widely-used, open source scripting language, which scripts are executed on the server. PHP files can contain **text, HTML, CSS, JavaScript**, and **PHP** code.

PHP can:
* generate dynamic page content,
* collect form data,
* send and receive cookies,
* add, delete, modify data in your database,
* be used to control user-access,
* encrypt data.

With PHP you are not limited to output HTML. You can output images or PDF files. You can also output any text, such as XHTML and XML.

### **MySQLi** and **PDO** PHP functions
They allow a PHP script to send a query to the database. They support **prepared statements, transactions** and **better security** (e.g., against SQL injection).

**MySQLi - example:**

`$mysqli = new mysqli("localhost", "user", "pass", "db");`

`$result = $mysqli->query("SELECT * FROM users");`

**PDO (PHP Data Objects) - example:**

`$pdo = new PDO("mysql:host=localhost;dbname=db", "user", "pass");`

`$stmt = $pdo->query("SELECT * FROM users");`

### SQL search query
`SELECT * FROM questions WHERE id=15`

- **SELECT** (select),
- "*" (all columns),
- **FROM** (from the table),
- **questions** (about this name),
- **WHERE** (where),
- **id=15** (this condition occurs).

### Logic
* **AND** is true when **both conditions** are met at the same time,
* **OR** is true when **at least one condition** is met.

### Sorting
Sorting records means arranging them according to some criterion. The criterion is the name or names of the fields by which the sorting is performed.

*For example:* It can be an **ascending sort** (sorts values in ascending order from A to Z, or from 0 to 9) or a **descending sort** (sorts values in descending order from Z to A, or from 9 to 0).

### Sorting in SQL
`SELECT * FROM questions ORDER BY content ASC`

- **SELECT** (select),
- "*" (all columns),
- **FROM** (from the table),
- **questions** (about this name),
- **ORDER BY** (and sort by),
- **content** (this field),
- **ASC** (ascending - or DESC *descending*).

### BETWEEN clause
`SELECT content FROM questions WHERE id BETWEEN 10 AND 12`

- **SELECT** (select),
- **content** (this column),
- **FROM** (from the table),
- **questions** (about this name),
- **WHERE** (where),
- **id** ("id" field value),
- **BETWEEN** ("is between"),
- **10 AND 12** (values: 10 and 12).

### LIKE (similar to) clause
`SELECT * FROM questions WHERE content LIKE "Jaki%"`

- **SELECT** (select),
- "*" (all columns),
- **FROM** (from the table),
- **questions** (about this name),
- **WHERE** (where),
- **content** (this field),
- **LIKE** (is similar to),
- **Jaki%** (this phrase, which means it is started with "Jaki" and is followed by anything - *including nothing*).

# Practice

### How to update your local files
`git pull origin (your branch)`

### How to initiate MySQL on VS Code
1. You need to install **XAMP Control Panel** and switch on actions on **Apache** (a standalone web server used for hosting websites) and **MySQL** modules,
2. Open VS Code, go to **Extensions**, then install SQL tools - **SQLTools** by Matheus Teixeira and **SQLTools MySQL/MariaDB Driver**,
3. Go to `http://localhost/phpmyadmin` > **User accounts**, and select **Edit priviligies** in a row when *User name = root* and *Host name = localhost*,
4. Click **Change password** and set it,
5. In Command Palette type `SQLTools Management: Add New Connection`,
6. Choose **MariaDB** (is fully compatible with most MySQL commands and structure, its driver will connect successfully to your XAMPP database engine),
7. Fill the connection info:
   
   * **Connection name**: e.g. `xampp-mysql` (or anything),
   * **Connection group**: (you can leave it blank or put something like `local` or `xampp`),
   * **Connect using**: `Server and Port` (already selected),
   * **Server Adress**: `localhost`,
   * **Port**: `3306` (default for MariaDB/MySQL),
   * **Database**: `mysql` (just connect this default system database called, if you don't have a custom database yet),
   * **Username**: `root`,
   * **Password mode**: (Leave as `SQLTools Driver Credentials`),
   * **Authentication Protocol**: `default` (leave it as-is unless connection fails),
   * **SSL**: `Disabled` (good for local development),
   * **Connection Timeout**: (optional) Leave blank or set `10000` (10 seconds),
   * **Show records default limit**: `50` (default is fine).

8. Click **Test Connection** → if successful, click **Save Connection**, then **Connect now**
   
   (now you can use **VS Code** environment instead of **phpMyAdmin**, if you prefer),
   
10. Create a `.sql` file, write your SQL commands, then right-click and choose **Run Query** or use `Ctrl+Alt+E`.

### Working with MySQL on VS Code
* `SQLTools internal: Attach connection to this file` binds your open `.sql` file to database connection (like `xampp-mysql`),
* If you want to run all queries, click **Run on active connection** inside your file window,
* If you want to run selected query, highlight it, enter command pallete and run `SQLTools Connection: Run Selected Query`.

### Working with phpMyAdmin
* Go to `http://localhost/phpmyadmin`,
* When you are making a table inside your selected database, select **PRIMARY** Index, where you want your Name to be **Primary key**,
* If we (for example) used phpMyAdmin on the internet hosting we purchased, we would first have to log in to the system. But for the purposes of this course, we are using local host (local server), which is visible only for us,
* If local host will demand username and passowrd from you to log in, open `\xampp\phpMyAdmin\config.inc.php` file (whenever it is located), find the line `$cfg['Servers'][$i]['auth_type'] = 'cookie';`, then change it to:

`$cfg['Servers'][$i]['auth_type'] = 'config';`

`$cfg['Servers'][$i]['user'] = 'root';`

`$cfg['Servers'][$i]['password'] = '';`

And make sure the `$i = 1;` server definition exists above it — it means “This is server number 1 in the list”. Then save the file and reload your local host.

* 
