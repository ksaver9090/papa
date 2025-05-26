CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 login VARCHAR(255) NOT NULL UNIQUE, -- логин пользователя
 email VARCHAR(255) NOT NULL UNIQUE, -- email пользователя
 password VARCHAR(255) NOT NULL,  -- пароль пользователя (рекомендуется использовать хеширование)
 fullname VARCHAR(255) NOT NULL,  -- полное имя пользователя
 phone VARCHAR(20)        -- номер телефона пользователя
);
CREATE TABLE apples (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,    -- название сорта яблок
 price DECIMAL(10, 2) NOT NULL,  -- цена за единицу товара
 image VARCHAR(255)        -- путь к изображению яблок
);
CREATE TABLE cart (
 id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT NOT NULL,       -- ID пользователя
 product_id INT NOT NULL,     -- ID товара (яблок)
 quantity INT NOT NULL DEFAULT 1, -- количество товара
 FOREIGN KEY (user_id) REFERENCES users(id),
 FOREIGN KEY (product_id) REFERENCES apples(id)
);
CREATE TABLE orders (
 id INT AUTO_INCREMENT PRIMARY KEY,
 user_id INT NOT NULL,
 status VARCHAR(255) NOT NULL DEFAULT 'Новый' -- или другой подходящий тип данных для статуса
);
