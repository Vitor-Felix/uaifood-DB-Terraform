-- Tabela de clientes
CREATE TABLE customer (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(255) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Tabela de produtos
CREATE TABLE product (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DOUBLE PRECISION NOT NULL,
    category VARCHAR(255) NOT NULL,
    image_url VARCHAR(255)
);

-- Tabela de pedidos
CREATE TABLE food_order (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(20) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    customer_cpf VARCHAR(14)
);

-- Tabela de pagamentos
CREATE TABLE payment (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    payment_id VARCHAR(255),
    status VARCHAR(20) NOT NULL,
    qr_code TEXT,
    amount DOUBLE PRECISION NOT NULL,
    order_id BIGINT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES food_order(id)
);

-- Tabela de junção para relacionamento muitos-para-muitos entre pedidos e produtos
CREATE TABLE food_order_product (
    food_order_id BIGINT NOT NULL,
    product_id VARCHAR(36) NOT NULL,
    PRIMARY KEY (food_order_id, product_id),
    FOREIGN KEY (food_order_id) REFERENCES food_order(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
