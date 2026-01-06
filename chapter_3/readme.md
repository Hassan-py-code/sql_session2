


# Simple Blog Database (MySQL)

This project is a simple MySQL database for a blog system where multiple users can write posts.  
It demonstrates basic SQL concepts such as databases, tables, primary keys, foreign keys, and JOINs.

---

## 🛠 Technologies Used
- MySQL
- MySQL Workbench

---

##  Database Structure

### 1️ User Table
Stores users who can write posts.

- `id_user` (Primary Key)
- `first_name`
- `last_name`

### 2️ Post Table
Stores blog posts written by users.

- `id_post` (Primary Key)
- `title`
- `content`
- `id_user` (Foreign Key → user.id_user)

---


# join
