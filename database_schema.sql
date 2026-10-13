-- Users Table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    balance DECIMAL(12,2) DEFAULT 0.00,
    vip_level INT DEFAULT 1,
    turnover_amount DECIMAL(12,2) DEFAULT 0.00,
    referred_by VARCHAR(50) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Betting & Turnover History
CREATE TABLE betting_history (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    game_id VARCHAR(100),
    bet_amount DECIMAL(10,2),
    win_amount DECIMAL(10,2),
    status ENUM('win', 'loss', 'refund'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Payment Transactions (Auto Gateway)
CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    type ENUM('deposit', 'withdraw', 'bonus', 'voucher'),
    amount DECIMAL(10,2),
    gateway VARCHAR(50),
    trx_id VARCHAR(100) UNIQUE,
    status ENUM('pending', 'approved', 'rejected') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);