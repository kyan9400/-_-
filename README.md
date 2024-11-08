# Offers Management Application

This is a simple Offers Management application built using PHP, MySQL, and HTML/JavaScript for front-end interaction. The project demonstrates how to build a basic API and fetch data from a MySQL database to display on a webpage.

## Features

- API endpoint for fetching offers data from the MySQL database.
- Display the list of offers dynamically on a webpage using JavaScript.
- Responsive HTML and CSS for a clean user interface.

## Prerequisites

- XAMPP (Apache, MySQL, PHP)
- A web browser
- Basic knowledge of PHP and MySQL

## Project Structure

## Setup Instructions

1. **Install XAMPP**:
   Ensure that Apache and MySQL are running in XAMPP.

2. **Create the Database**:
   - Open `phpMyAdmin` and create a database named `offer_management`.
   - Run the following SQL script to create the `offers` table:
     ```sql
     CREATE TABLE `offers` (
       `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
       `offer_name` VARCHAR(255) NOT NULL,
       `email` VARCHAR(255) NOT NULL,
       `phone` VARCHAR(15) NOT NULL,
       `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
       PRIMARY KEY (`id`),
       UNIQUE (`email`)
     ) ENGINE=InnoDB;
     ```
   - Populate the table with test data:
     ```sql
     INSERT INTO `offers` (`offer_name`, `email`, `phone`, `created_at`) VALUES
     ('Exclusive Deal', 'exclusive1@example.com', '1234567890', CURRENT_TIMESTAMP),
     ('Holiday Special', 'holiday@example.com', '9876543210', CURRENT_TIMESTAMP),
     ('New Year Offer', 'newyear@example.com', '1234598765', CURRENT_TIMESTAMP),
     ('Winter Wonderland', 'winter@example.com', '5678912340', CURRENT_TIMESTAMP);
     ```

3. **Set Up the Project Files**:
   - Place the `offers_api.php` and `index.html` files in the `htdocs` directory of your XAMPP installation.
   - Create a `css` folder inside `htdocs` and add `styles.css`.

4. **Configure the API**:
   Update the database connection in `offers_api.php`:
   ```php
   $conn = new mysqli('127.0.0.1', 'root', '', 'offer_management');







