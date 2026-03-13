# Mini Task Management System

## Project Overview

The Mini Task Management System is a full-stack web application that allows users to manage tasks efficiently. The system supports user authentication, task creation, updating, deletion, filtering, sorting, and pagination. It is designed as a simple but complete task management application suitable for demonstrating full-stack development skills.

The backend is developed using Spring Boot and exposes REST APIs secured with JWT authentication. The frontend is developed using Next.js and communicates with the backend using Axios HTTP requests. All application data is stored in a MySQL database.

The system allows users to:

Register a new account
Login securely using email and password
Create tasks with priority, status, and due date
View tasks
Update tasks
Delete tasks
Mark tasks as completed
Filter tasks by status and priority
Sort tasks by due date or priority
Use pagination to navigate through tasks

The system also supports role-based access:

USER can manage their own tasks
ADMIN can view all tasks

This project demonstrates practical implementation of REST API development, authentication using JWT, database integration using JPA, and frontend-backend communication.

---

## Technology Stack

### Backend

Java
Spring Boot
Spring Security
Spring Data JPA
JWT Authentication
Maven
MySQL

### Frontend

Next.js
React
Axios
TailwindCSS

### Database

MySQL

## Database Configuration and JWT configuration

spring.application.name=taskmanagement

spring.datasource.url=jdbc:mysql://localhost:3307/taskdb
spring.datasource.username=root
spring.datasource.password=123456
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

server.port=8080

jwt.secret=VGhpc0lzQVN1cGVyU2VjdXJlSldUU2lnbmluZ0tleUZvclNwcmluZ0Jvb3Q=
jwt.expiration=86400000

## Setup Instructions

### Prerequisites

The following software must be installed:

Java 17 or later
Node.js 18 or later
MySQL Server
Maven

## Steps to Run the Backend Application

Clone the backend repository

Navigate to the backend directory

cd Task-Management-Backend

Build the project

mvn clean install

Run the application-mvn spring-boot:run

The backend server will start on:http://localhost:8080

## Steps to Run the Frontend Application

Clone the backend repository

cd task-management-frontend

Install required dependencies

Start the development server-npm run dev

The frontend application will start on:http://localhost:3000

## Task Management Workflow

After login, the user can:

Create new tasks
View tasks
Edit tasks
Delete tasks
Mark tasks as completed
Filter tasks by status or priority
Sort tasks by due date or priority
Navigate tasks using pagination

---

## Running the Full Application

1. Start the MySQL database server.
2. Run the backend application on port 8080.
3. Run the frontend application on port 3000.
4. Open a browser and navigate to:

http://localhost:3000

5. Register a new account and start managing tasks.

---

## Conclusion

This project demonstrates the development of a full-stack task management system using modern technologies. It shows how to design REST APIs, implement secure authentication using JWT, manage data with JPA and MySQL, and build a responsive frontend using Next.js and Axios. The system provides a clean and practical solution for managing tasks while showcasing essential full-stack development skills.
