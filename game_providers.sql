CREATE TABLE game_providers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    provider_name VARCHAR(100) NOT NULL,
    api_endpoint VARCHAR(255) NOT NULL,
    secret_key VARCHAR(255) NOT NULL,
    status TINYINT(1) DEFAULT 1 -- 1 = Active, 0 = Maintenance/Disabled
);
