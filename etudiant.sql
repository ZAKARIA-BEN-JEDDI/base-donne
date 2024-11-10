-- Active: 1713815680743@@localhost@3306
CREATE DATABASE ecole ;
USE ecole ;
CREATE TABLE Etudiant (
  id_etudiant int(10) PRIMARY KEY AUTO INCREMENT ,
  nom varchar(20) DEFAULT "zakaria" NOT NULL,
  prenom varchar(20) DEFAULT "ben jeddi" NOT NULL,
  age int(20) DEFAULT 0 NOT NULL,
);

