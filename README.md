# QuizHub

## Installation Guide

### Backend (PHP Laravel)

1. **Clone the Backend Repository**
    - Clone the provided backend repository (`quizGame-backend`) to your preferred directory.
    ```
    git clone https://github.com/Nathu03/quizGame-backend.git
    ```

2. **Navigate to the Backend Directory**
    ```
    cd quizGame-backend
    ```

3. **Install PHP Dependencies using Composer**
    - Ensure you have Composer installed. If not, download it from [https://getcomposer.org/download/](https://getcomposer.org/download/) and follow the installation instructions for your operating system.
    - Run the following command to install dependencies.
    ```
    composer install
    ```
    This will create a `vendor` directory and install all required PHP dependencies.

4. **Set Up Environment Configuration**
    - Create a copy of the `.env.example` file and name it `.env`.
    ```
    cp .env.example .env
    ```
    - Configure the `.env` file with your specific environment settings such as database connection, app key, etc.

5. **Run the Backend Server**
    ```
    php artisan serve
    ```
    This command will start the Laravel development server.

### Frontend (React)

1. **Clone the Frontend Repository**
    - Clone the provided frontend repository (`quizGame-frontend`) to your preferred directory.
    ```
    git clone https://github.com/Nathu03/quizGame-frontend.git
    ```

2. **Navigate to the Frontend Directory**
    ```
    cd quizGame-frontend
    ```

3. **Install Frontend Dependencies**
    - Ensure you have Node.js and npm installed.
    ```
    npm install
    ```
    This will install all the required frontend dependencies.

4. **Run the Frontend Application**
    ```
    npm start
    ```
    This command will start the frontend development server.

### MySQL Database Setup

1. **Import MySQL Database**
    - Locate the MySQL database file named `laravel_react_auth.sql` in the backend's `public` directory.
    - Use a MySQL client (like phpMyAdmin or MySQL Workbench) to import the database file. Create a new database named `laravel_react_auth` and import the SQL file into this database.

    **Note**: You can import the database using the following command in MySQL terminal:
    ```
    CREATE DATABASE laravel_react_auth;
    USE laravel_react_auth;
    SOURCE /path/to/laravel_react_auth.sql;
    ```

---

Replace `/path/to/backend` and `/path/to/frontend` with the actual paths where you've cloned the backend and frontend repositories respectively.

### Repositories

- Frontend Repository: [quizGame-frontend](https://github.com/Nathu03/quizGame-frontend.git)
- Backend Repository: [quizGame-backend](https://github.com/Nathu03/quizGame-backend.git)

