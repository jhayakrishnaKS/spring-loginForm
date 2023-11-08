# Spring Login Form Project

This project is a simple Spring MVC application that demonstrates user authentication and registration using a MySQL database.

## Features

- **Login Functionality:** Allows users to log in with their credentials.
- **Registration:** Provides a user registration form with fields such as name, username, age, password, etc.
- **Database Integration:** Uses MySQL to store user data securely.

## Technologies Used

- **Spring MVC:** Framework for building Java-based enterprise applications.
- **MySQL:** Database management system for data storage.
- **HTML, CSS, Bootstrap:** Front-end technologies for a clean and responsive user interface.

## Project Structure

- `src/main/java/com/jk/controller`: Contains the Spring MVC controllers.
- `src/main/java/com/jk/userdao`: Manages database operations for user authentication and registration.
- `src/main/java/com/jk/dbconnection`: Handles the database connection.
- `src/main/java/com/jk/model`: Defines the User model.
- `src/main/webapp/WEB-INF/views`: Stores the JSP views for login, registration, and home pages.

## Setup

1. **Database Configuration:**
    - Update the database connection details in `Dbconnection.java`.

2. **Run the Application:**
    - Use an IDE like IntelliJ or Eclipse to run the application.

3. **Access the Application:**
    - Open a web browser and navigate to `http://localhost:8080` to access the login form.

## Usage

- Visit the login page to log in with existing credentials.
- Click on the registration link to create a new account.

