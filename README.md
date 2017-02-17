# Tournament-Results-Database-Schema

Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

* tournament.sql  - This file is used to set up the database schema.

* tournament.py - This file is used to provide access to the database via a library of functions which can add, delete or query data in your database to another python program.

* tournament_test.py - This is a client program which will use the functions written in the tournament.py module. This is written to test client program and if the implementation of functions in tournament.py works fine.

## How to run the project

  1. Clone the project (git clone https://github.com/balusus/Tournament-Results-Database-Schema.git)
  2. Install virtual box + vagrant on your pc
  3. Inside your virtual machine move to /vagrant/tournament directory
  4. Load Database SQL schema by writing in the console:    <em>psql tournament < tournament.sql
  5. To test client program run the tournament_test.py file
