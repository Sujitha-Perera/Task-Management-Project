## API Documentation

This project uses Swagger (OpenAPI) to automatically generate API documentation.

After running the backend server, you can access the interactive API documentation at:

http://localhost:8080/swagger-ui/index.html

# Swagger allows you to:

View all available API endpoints

See request and response formats

Test API endpoints directly from the browser

Authenticate using JWT tokens to test protected APIs

# Main API Endpoints

POST /api/auth/register Register a new user
POST /api/auth/login Authenticate user and return JWT token
GET /api/tasks Retrieve all tasks
POST /api/tasks Create a new task
PUT /api/tasks/{id} Update a task
DELETE /api/tasks/{id} Delete a task
PATCH /api/tasks/{id}/complete Mark task as completed
