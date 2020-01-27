USE sakila;

-- 3A
ALTER TABLE actor ADD description blob;

-- 3B
ALTER TABLE actor DROP description;