# Installing Postgres

## Postgres

### Installing Postgres Mac

 You should have homebrew installed then run:
 `brew install postgresql`

### Installing Postgres Ubuntu

     `sudo apt-get install postgresql postgresql-contrib`
     `sudo -u postgres createuser YOUR_SYSTEM_USER_NAME`
     If you get the message 'shall this user be a superuser Y/n?',
     then enter Y and you are done otherwise continue to the next step.
     `sudo /etc/init.d/postgresql reload`
     `sudo -u postgres psql -d template1`
     psql (9.3.4)
     Type "help" for help.
     template1=# `ALTER ROLE pete WITH CREATEDB;`
     ALTER ROLE
     template1=# `\q`
     `sudo /etc/init.d/postgresql reload`

## Further Reading

* [http://rvm.io/](http://rvm.io/)
* [http://www.postgresql.org/docs/](http://www.postgresql.org/docs/)
* [Home Brew - http://brew.sh/](http://brew.sh/)

## Sources

* [http://rvm.io/rvm/install](http://rvm.io/rvm/install)
* [https://help.ubuntu.com/community/PostgreSQL](https://help.ubuntu.com/community/PostgreSQL)
* [http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/](http://www.moncefbelyamani.com/how-to-install-postgresql-on-a-mac-with-homebrew-and-lunchy/)
