##Please set up the  data base befroe using this api.
##Please see the database_setup file for setting database.  

# REST API #

## Installation ##
To run this application, you will require [NodeJS](https://nodejs.org/en/download/).

If you have NodeJS already installed, clone this repo using git and run `npm install` in the root directory, otherwise, follow the instructions to install NodeJS:

* [Windows](http://blog.teamtreehouse.com/install-node-js-npm-windows)
* [Mac](http://blog.teamtreehouse.com/install-node-js-npm-mac)
* [Linux](https://nodejs.org/en/download/package-manager/)

Once NodeJS is installed and working, install the project dependencies:

```
npm install
```
##Before Starting the starting the api you need to change the username and password for the database(I used mysql workbench as my database).
 ```
  var conn = mysql.createConnection({
  host: 'localhost',
  user: 'you username',
  password: 'userpassword',
  database: 'back-end',
  insecureAuth : true,
  dateStrings: true
 });
 ```
## If you are using MySQL 8.0, you might face issue while connecting as it uses different hasing methods for password
## You can use ALTER USER command for fixing this issue or by setting the password to "standard" rather than "sha password"

## Starting the API ##

To start the REST API server, run the following command in the root directory:

```
node routes.js
```

The output should be:

```
Connected to Database!
Server is started and running on 3000
```

## API ##
This ExpressJS app exposes a very simple REST API.

There are four endpoints, 2 can used to PUT and 2 can be used to GET data.

### PUT /sitepower ###
Updates a random value between(0-1000) for the coloumn power in the table site_power and returns rows affected in console.

##Note : once started this will run every second untill stopped manually.


### PUT /dsuspower ###
Updates aggregated value coloumn power as total_power in dsu_power returns successfull message in console.

##Note : once started this will run every second untill stopped manually.



#### Parameters ####
You dont have to worry about the parameter since an auto generaated random value is getting inserted with the current time.



### FOR Testing the put method ###

There are 2 different GET method which will return all the rows from both the table seperatly.To the test put please run
## main.html in getmy folder


The output should be:

```
2 Tables displaying values from the table and if you refresh the page you will see different values and time inserted everytime.
```

