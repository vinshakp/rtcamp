# rtcamp
Wordpress files for simple Home page files. It includes wordpress files and database

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development.

### Prerequisites
Wamp or lamp in your local machine, or install the same in any live hosting


### Installing

Clone the files into your wamp servers folder(as alias or in www)
from your command prompt git clone https://github.com/vinshakp/rtcamp
Or download the files and insert into folder, and configure in local server.

You will get rtpanel-migrate-20180727070919.sql file in your downloaded folder, 
Create a database, 
import this sql file
update your url in wp_options table 
Search for “siteurl” within the “option_name” column and click the “Edit” link on the same row.
Change home url too with your link
For more details : https://www.hostdime.com/resources/change-wordpress-site-url-via-phpmyadmin/

### And coding wp-config file

In your wp-config.php in root
add your database name
username,and password, and host for privilleged user in this database
update table prefix if you want to
Sample in my local:
/** The name of the database for WordPress */
define('DB_NAME', 'rtpanel');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

##creating user

To create an admin privilleged user follow links from below steps

https://www.wpbeginner.com/wp-tutorials/how-to-add-an-admin-user-to-the-wordpress-database-via-mysql/

## accessing your site

To access your site , take the url itself,
To access the backend of website : siteurl/wp-admin/
with created username and password log in to admin area
save permalinks from settings option as first step
Check wheather links working properly.
Thats all, your site is now live,

Update pages, post, use widgets in Appearance to edit the footer section.
USe theme option to edit bottom side of footer. 

## External libraries used

Bxslider used to create sliders section. 
Option tree plugin used to add some theme option



