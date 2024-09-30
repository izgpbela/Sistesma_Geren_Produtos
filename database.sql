-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 08:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0


-- Criação do banco de dados (substitua 'seu_banco_de_dados' pelo nome desejado)
CREATE DATABASE Produtos;

-- Use o banco de dados criado
USE Produtos;

-- Criação das tabelas
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    tipo ENUM('fisico', 'digital')
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    cliente VARCHAR(100),
    total DECIMAL(10,2)
);

CREATE TABLE itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);