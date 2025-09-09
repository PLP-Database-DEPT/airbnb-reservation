-- ==========================================================
-- Airbnb Reservation Database Schema
-- ==========================================================

-- Create database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS airbnb_reservation;
USE airbnb_reservation;

-- ==========================================================
-- Table: user_account
-- Purpose: Store user details (hosts and guests)
-- ==========================================================
CREATE TABLE IF NOT EXISTS user_account (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

-- ==========================================================
-- Table: language
-- Purpose: Store supported languages
-- ==========================================================
CREATE TABLE IF NOT EXISTS language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL UNIQUE
);

-- ==========================================================
-- Table: user_language
-- Purpose: Join table mapping users to the languages they speak
-- ==========================================================
CREATE TABLE IF NOT EXISTS user_language (
    user_id INT NOT NULL,
    language_id INT NOT NULL,
    PRIMARY KEY (user_id, language_id),
    FOREIGN KEY (user_id) REFERENCES user_account(user_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);


