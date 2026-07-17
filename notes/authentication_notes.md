# Authentication Notes
## Daily Learning Tracker
### Date: 17 July

# Authentication

## What is Authentication?

Authentication is the process of verifying the identity of a user before allowing access to an application.

Example:

User enters:
- Email
- Password

The server checks whether the credentials are correct.

If they are correct:
- User is logged in.
- A session is created.

If they are incorrect:
- An error message is shown.

--------------------------------------------------

## Authentication Flow

Sign Up
↓
User account is created
↓
Login
↓
Password is verified
↓
Session is created
↓
User can access protected pages
↓
Logout
↓
Session is destroyed

--------------------------------------------------

# HTTP Request & Response

HTTP (HyperText Transfer Protocol) is the communication method between the browser and the Rails server.

## Request

A request is sent from the browser to the server.

Example:

GET /login

The browser asks the server to display the Login page.

## Response

The server processes the request and sends data back to the browser.

Example:

The Login page is displayed.

--------------------------------------------------

# HTTP Methods

GET
- Fetch or display data.

POST
- Create new data.

PATCH
- Update existing data.

DELETE
- Delete existing data.

Example in my project:

GET    -> Show Learning Entries
POST   -> Create Entry
PATCH  -> Update Entry
DELETE -> Delete Entry

--------------------------------------------------

# Cookies

A Cookie is a small piece of data stored in the user's browser.

Purpose:
- Remember the user.
- Store session information.
- Maintain login status.

Example:

session_id = abc123xyz

The browser automatically sends this cookie with every request.

--------------------------------------------------

# Sessions

A Session stores user information on the server.

Example:

session[:user_id] = @user.id

This tells Rails which user is currently logged in.

When the user logs out:

session[:user_id] = nil

or

reset_session

This removes the user's login session.

--------------------------------------------------

# Difference Between Cookies and Sessions

Cookies
- Stored in the browser.
- Store small pieces of data.
- Sent with every request.

Sessions
- Stored on the server.
- Store logged-in user information.
- More secure than storing user data directly in cookies.

--------------------------------------------------

# Authentication Process

1. User signs up.
2. User account is stored in the database.
3. User logs in.
4. Password is verified.
5. Session is created.
6. User accesses protected pages.
7. User logs out.
8. Session is destroyed.

--------------------------------------------------

# Slim Template Introduction

Slim is a template engine used in Ruby on Rails.

Advantages:

- Cleaner syntax
- Less HTML code
- Better readability
- No closing HTML tags
- Easy to maintain

Example:

ERB

<div class="container">
  <h1>Login</h1>
</div>

Slim

.container
  h1 Login

--------------------------------------------------

# ERB vs Slim

ERB

- Uses HTML tags.
- Uses <% %> and <%= %>.
- Requires closing tags.

Slim

- Uses indentation.
- Uses "=" for output.
- Uses "-" for Ruby code.
- No closing tags.

--------------------------------------------------

# Key Points Learned Today

✓ Authentication verifies the user's identity.

✓ HTTP is used for communication between the browser and server.

✓ Cookies are small piece of data stored in the browser.

✓ Sessions are the user's data stored on the server.

✓ Sessions help keep users logged in.

✓ Slim provides cleaner and shorter view templates.

✓ Authentication should first be implemented from scratch before using gems like Devise.

--------------------------------------------------

# Summary

Today I learned the basic concepts required to build authentication from scratch in Ruby on Rails.

I understood:

- Authentication
- HTTP Request & Response
- Cookies
- Sessions
- Authentication Flow
- Slim Template basics
- Difference between ERB and Slim

These concepts will be used to implement Sign Up, Login, Logout, and Session Management in the next phase of the project.

### Date: 18 July
# Password Hashing

## What is Password Hashing?

Password hashing is the process of converting a plain password into an unreadable string (hash) before storing it in the database.

Example:

Plain Password

hello123

↓

Hash Function

↓

$2a$12$ksjdhf82398jsjd82...

Only the hashed password is stored in the database.

## Why do we use Password Hashing?

- Passwords remain secure.
- Plain passwords are never stored.
- Even if the database is leaked, the original password is difficult to recover.
- Improves application security.

## Authentication Flow

User
↓
Enter Password
↓
Server
↓
Hash Password
↓
Store Hash
↓
Database

## Login Flow

User
↓
Enter Password
↓
Hash Password
↓
Compare with Database Hash
↓
Login Successful

## Plain Password vs Hashed Password

Without Hashing

Email: sima@gmail.com

Password: hello123

With Hashing

Email: sima@gmail.com

Password: $2a$12$ksjdhf82398jsjd82...

## Summary

Today I understood:

- What Password Hashing is
- Why passwords should never be stored in plain text
- How password hashing improves security
- Authentication flow during Sign Up
- Authentication flow during Login

Implementation will be done later while building Sign Up and Login functionality.