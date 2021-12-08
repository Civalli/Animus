CREATE DATABASE  IF NOT EXISTS `animus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `animus`;


DROP TABLE IF EXISTS `alunos`;

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_foto` text,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `celular` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `avaliacoes`;

CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `avaliacao` int(11) DEFAULT NULL,
  `aluno` int(11) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `aluno` (`aluno`),
  KEY `professor` (`professor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `historico`;

CREATE TABLE `historico` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `professor` int(11) DEFAULT NULL,
  `aluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `professor` (`professor`),
  KEY `aluno` (`aluno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `imagens`;

CREATE TABLE `imagens` (
  `id_imagem` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` blob,
  PRIMARY KEY (`id_imagem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `nome_materia` varchar(30) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `professor` (`professor`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `professores`;

CREATE TABLE `professores` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `link_foto` text,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `descrição` text,
  `matéria` int(11) DEFAULT NULL,
  `planos` enum('free','light','pro') DEFAULT 'free',
  PRIMARY KEY (`id_professor`),
  KEY `matéria` (`matéria`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `textos`;

CREATE TABLE `textos` (
  `id_textos` int(11) NOT NULL AUTO_INCREMENT,
  `textos` text,
  PRIMARY KEY (`id_textos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
