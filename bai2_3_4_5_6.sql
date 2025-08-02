create database session_09;
use session_09;

CREATE TABLE category (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    cate_name VARCHAR(100) NOT NULL,
    description TEXT
);
INSERT INTO category (cate_name, description) VALUES
('Rau củ', 'Các loại hạt giống rau củ'),
('Lá xanh', 'Hạt giống cho cây lá xanh'),
('Trái cây', 'Hạt giống cây ăn trái');


CREATE TABLE seeds (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    seed_name VARCHAR(100) UNIQUE,
    quantity INT,
    category_id BIGINT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);
-- Thêm 5 bản ghi mẫu vào bảng seeds
INSERT INTO seeds (seed_name, quantity, category_id) VALUES 
('Hạt Giống Cà Chua', 100, 1),
('Hạt Giống Cải Bó Xôi', 80, 2),
('Hạt Giống Dưa Hấu', 150, 3),
('Hạt Giống Ớt Chuông', 120, 1),
('Hạt Giống Xà Lách', 90, 2);
