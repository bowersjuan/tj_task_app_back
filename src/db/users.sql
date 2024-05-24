CREATE TABLE IF NOT EXISTS users (  
  id SERIAL PRIMARY KEY,   
  employee_number INTEGER NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,   
  email VARCHAR(255) NOT NULL UNIQUE,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  employment_status VARCHAR(255) NOT NULL,
  employee_rank VARCHAR(255) NOT NULL,
  task_id INT REFERENCES tasks(id),
  clocked_in BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT NOW(),   
  updated_at TIMESTAMP DEFAULT NOW()
);