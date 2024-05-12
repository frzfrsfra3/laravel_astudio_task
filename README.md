# ASTUDIO LARAVEL TASK

Instructions to run the app:

composer install

copy .env.example .env

php artisan key:generate

php artisan migrate:fresh --seed or you can import the sql file I attached "laravel_assessment.sql"

As mentioned in the documents, all routes are wrapped under the auth middleware

You can retrieve an auth token by signing in using the auth routes

All users seeded have the same password `password`

Instructions to run the API:

Authentication:

- Authentication method: Token-based (using Laravel Sanctum)
- Obtain API token by logging in or registering through the application.

If you are using Postman you can Obtain API token by using the authentication endpoints as following:

Authentication Endpoints:

Login:

    Method: POST
    Endpoint: /api/login
    Description: Authenticates a user and returns an authentication token.
    Request Body: { "email": "user@example.com", "password": "password" }
    Response: { 
         "user": {...},
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..." }

Register:
    Method: POST
    Endpoint: /api/register
    Description: Creates a new user account.
    Request Body: { 
        "first_name": "mhd feras",
        "last_name": "zaiter",
        "gender": "male",
        "date_of_birth": "1997-01-01",
        "email": "user@example.com", "password": "password" }
    Response: {  
        "user": {...},
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..." }

Logout:
    Method: POST
    Endpoint: /api/logout
    Description: Invalidates the user's authentication token.
    Authorization Header: Bearer <token>
    Response: { 
        "message": "Logged out successfully"
        }

Request Headers:

- Content-Type: application/json
- Authorization: Bearer <API Token>

Please use the provided API token in the Authorization header for authentication when making requests to the API
endpoints.

Other Endpoints:

1. GET /api/user - Retrieve user records
2. GET /api/user/{id} - Bring the user data
3. POST /api/user/{id}/update - Update an existing user
4. POST /api/user/{id}/delete - Delete a user
5. GET /api/project - Retrieve project records
6. GET /api/project/{id} - Bring the project data
7. POST /api/project/{id}/update - Update an existing project
8. POST /api/project/{id}/delete - Delete a user
9.  GET /api/timesheet - Retrieve timesheet records
10. GET /api/timesheet/{id} - Bring timesheet data
11. POST /api/timesheet/{id}/update - Update an existing timesheet
12. POST /api/timesheet/{id}/delete - Delete a timesheet

If you encounter any issues or need further assistance, feel free to contact me at mhd.feras97@gmail.com.

Thank you,
Mhd Feras
