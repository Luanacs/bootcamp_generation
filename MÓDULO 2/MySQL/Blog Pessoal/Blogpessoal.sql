-- MySQL Script generated by MySQL Workbench
-- Wed Apr 27 10:01:30 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blogPessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blogPessoaltb_temas
-- -----------------------------------------------------
create database db_blog_pessoal;

use db_blog_pessoal;

-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_temas`
-- -----------------------------------------------------
create table tb_temas(
  id BIGINT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );



-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_usuario`
-- -----------------------------------------------------
create table tb_usuario(
  id BIGINT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  usuario VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  foto VARCHAR(255) NULL,
  tipo VARCHAR(255) NULL,
  PRIMARY KEY (id)
);



-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_postagens`
-- -----------------------------------------------------
create table tb_postagens(
  id BIGINT NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  texto VARCHAR(255) NOT NULL,
  data DATETIME NULL,
  tb_temas_id BIGINT NOT NULL,
  tb_usuario_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_tb_postagens_tb_temas_idx (tb_temas_id ASC) VISIBLE,
  INDEX fk_tb_postagens_tb_usuario1_idx (tb_usuario_id ASC) VISIBLE,
  CONSTRAINT fk_tb_postagens_tb_temas
  FOREIGN KEY (tb_temas_id)
  REFERENCES db_blogPessoal.tb_temas (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  CONSTRAINT fk_tb_postagens_tb_usuario1
  FOREIGN KEY (tb_usuario_id)
  REFERENCES db_blogPessoal.tb_usuario(id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION  
);
tb_postagens


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
