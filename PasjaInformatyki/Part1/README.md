# [Chapter 1: Databases. First SELECT queries.](https://www.youtube.com/watch?v=99JAI24Zd24&list=PLOYHgt8dIdoymv-Wzvs8M-OsKFD31VTVZ&index=1)

*Success is a progressive realization of a valuable idea within a patient time frame.*

### How to  update your local files
`git pull origin (your branch)`

## Database
Simply put, database is a collection of information. Less simply, it's a structured collection of data (information), typically organized as a set of tables linked by relationships. 

**Examples**: a telephone directory, a library catalog, or a portal's user database.

## Table
Table is a container for data. A collection of related information, usually presented as an arrangement of horizontal rows and vertical columns. A single database can contain many tables, and in such cases, logical connections (relations) exist between them.

### Record
Single row in a table, e.g., a set of fields appearing in it. For example, a set of characteristics for a given student (user).

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/1.jpg?raw=true" width="250">

The record **does not have to** contain ALL features of the object. It can be, for example, just a name and surname.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/3.jpg?raw=true" width="250">

### Field
Part of a table that stores individual data, e.g. the name of a specific person in the table.

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/2.jpg?raw=true" width="250">

### Primary key
One or more fields whose value uniquely identifies each record in a table. This characteristic of a key is called uniqueness.

**Example**: book nr 4 is a copy of "Pan Tadeusz".

<img src="https://github.com/98Miquelle11/sql/blob/main/PasjaInformatyki/images/4.jpg?raw=true" width="250">

**The database system** should ensure that the ID value is never duplicated. To achieve this, the ID field can be designated as the primary key.

**Redundancy (repetition)** - a phenomenon that we want to avoid when creating a relational model in databases.

## DBMS
Database Management System. **MySQL** is an example of such system.

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
* 

### SQL
Structured Query Language. *query* – a query to a database. **Types of queries**: inserting, searching, changing, deleting, and changing the structure of tables or databases.

When creating complex queries, you must provide a list of all relationships that exist between the tables used in the query!
