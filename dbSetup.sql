CREATE TABLE IF NOT EXISTS accounts (
    id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'primary key',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    name VARCHAR(255) COMMENT 'User Name',
    email VARCHAR(255) UNIQUE COMMENT 'User Email',
    picture VARCHAR(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE chores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    isComplete BOOLEAN DEFAULT false,
    difficulty TINYINT UNSIGNED NOT NULL
)

INSERT INTO
    chores (
        name,
        description,
        difficulty,
        isComplete
    )
VALUES (
        "Clean kitchen",
        "Clean dishes and toaster!",
        6,
        true
    ),
    (
        "Fold Clothes",
        "Make sure to fold the cats clothes also!",
        3,
        false
    ),
    (
        "Yard Work",
        "Make sure to mow the lawn and trim the bush!",
        8,
        true
    )

SELECT * FROM chores

DELETE FROM chores WHERE id = 2

DROP TABLE chores

SELECT * FROM chores WHERE id = 2

SELECT * FROM chores WHERE difficulty <= 7

UPDATE chores SET name = "Laundry" WHERE id = 3