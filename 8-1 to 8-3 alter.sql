-- Active: 1747559888393@@127.0.0.1@5432@foodheaven
-- SELECT * FROM users;
ALTER TABLE users
  ADD COLUMN email VARCHAR(25) DEFAULT 'mithun@gmail.com' NOT NULL;

SELECT * FROM users;

INSERT INTO users VALUES(2, 'Rakib', 'Tanzim', '1990-02-05');


INSERT INTO users VALUES(3, 'Motalib', 'Hossain', '1991-02-05', 'motalib@gmail.com');

ALTER TABLE users
  DROP COLUMN email;

ALTER TABLE users
  RENAME COLUMN dob to date_of_birth;

ALTER TABLE users
  ALTER COLUMN first_name TYPE VARCHAR(100);

ALTER TABLE users
  ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE users
  ALTER COLUMN first_name DROP NOT NULL;

ALTER TABLE users
  ADD constraint unique_users_date_birth UNIQUE(date_of_birth)

ALTER TABLE users
  DROP CONSTRAINT unique_users_date_birth; 


TRUNCATE TABLE users;

DROP TABLE users;

