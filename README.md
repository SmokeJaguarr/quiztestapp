# Quiz Test application
This is an application where users can do tests. Answers and final result is saved to MySQL database. It's possible to store unlimited amount of tests/questions/answers in database. Application is created in MVC design pattern.

# Application setup on XAMPP
1) Create "quiztestapp" in xampp/htdocs folder (can choose different name of Folder but then changes to path will be required)
2) Open CMD and cd in to created folder and clone repository
```
git clone https://github.com/SmokeJaguarr/quiztestapp .
```
3) Set up Config file. Go to app/config/config.php
```
    // DB Params
    define('DB_HOST', 'localhost'); // Fill DB HOST
    define('DB_USER', '_DB_USERNAME_'); // Fill DB username
    define('DB_PASS', '_DB_PASSWORD_'); // Fill DB password
    define('DB_NAME', '_DB_NAME'); // Fill DB name
    // App Root
    define('APPROOT', dirname(dirname(__FILE__)));
    // URL Root
    define('URLROOT', 'http://localhost/quiztestapp'); // Change URL ROOT if root have changed
```

4) (OPTIONAL) If directory folder name differs from "quiztestapp" then changes to Apache .htaccess file have to be made.
    Go to public/.htaccess and change path
    ```
      RewriteBase /quiztestapp/public
    ```
5) Create database if not created (make sure database name is set up ar config.php file) and import testapp.sql file into the database.
6) You are ready to go.

# Key Features
- User Registration system
- Taking a Test. Every answer and final result is stored in database.
- Unlimited amount of test questions and answers can be added to database
- Final result is saved in database only when all test is finished.
