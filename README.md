#Description
Use JDBC Driver to connect to Oracle in Dynamic Web Project ,insert data and search data in your database. You have to add the correct ojdbc.jar for your version of Oracle in WEB-INF/lib. You can use any database if you have a jdbc library.

###Useful Oracle SQL Plus command
connect oracle command in SQL Plus : 
conn [account]/ [password]

If you don't know system account password, try this command : 
conn /as sysdba
alter user system identified by [new password]
