BEGIN;
CREATE TABLE account (
    id INT PRIMARY KEY,
    nickname VARCHAR(30) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    header_image VARCHAR(100),
    status TINYINT DEFAULT 1 NOT NULL,
    created_time DATETIME,
    updated_time DATETIME
);
CREATE TABLE message (
    id BIGINT PRIMARY KEY,
    type VARCHAR(12),
    content VARCHAR(1000),
    source VARCHAR(10),
    is_deleted TINYINT DEFAULT 0,
    created_time DATETIME,
    updated_time DATETIME
);
CREATE TABLE message_index (
    id BIGINT PRIMARY KEY,
    message_id BIGINT,
    send_uid INT,
    receive_uid INT,
    box_type TINYINT
);
COMMIT;