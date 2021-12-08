CREATE DATABASE  IF NOT EXISTS `animus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `animus`;

DROP TABLE IF EXISTS `materias`;
CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `nome_materia` varchar(30) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO `animus`.`materias` (`nome_materia`) VALUES ('Matematica');
INSERT INTO `animus`.`materias` (`nome_materia`) VALUES ('Sociologia');
INSERT INTO `animus`.`materias` (`nome_materia`) VALUES ('Geografia');
INSERT INTO `animus`.`materias` (`nome_materia`) VALUES ('História');

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

INSERT INTO `animus`.`alunos` (`nome`, `email`, `senha`, `celular`) VALUES ('Thiago', 'thiago@email.com', 'hb@jad873@', '11999999999');
INSERT INTO `animus`.`alunos` (`nome`, `email`, `senha`, `celular`) VALUES ('Gabriel', 'gabriel@email', '12345678', '+555119826');
INSERT INTO `animus`.`alunos` (`nome`, `email`, `senha`, `celular`) VALUES ('Marcelo', 'email@teste.com', 'b1@7bslf', '11999999999');
INSERT INTO `animus`.`alunos` (`nome`, `email`, `senha`, `celular`) VALUES ('civalli', 'civalli@gmail.com', 'ju*skj@', '1199955999');

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

INSERT INTO `animus`.`professores` (`nome`, `email`, `senha`, `celular`, `matéria`, `planos`) VALUES ('Rafael', 'rafinha_berg@live.com', 'h#shfd%@', '11963621903', '3', 'free');
INSERT INTO `animus`.`professores` (`nome`, `email`, `senha`, `celular`, `matéria`, `planos`) VALUES ('Darzilio', 'iamleoberg@hotmail.com', '@%abg', '11963811624', '1', 'free');
INSERT INTO `animus`.`professores` (`nome`, `email`, `senha`, `celular`, `matéria`, `planos`) VALUES ('roberto', 'roberto@gmail.com', 'hb@jad873@', '1199955999', '3', 'light');
INSERT INTO `animus`.`professores` (`nome`, `email`, `senha`, `celular`, `matéria`, `planos`) VALUES ('Jorge Matos', 'jorge@matos.com', 'adu@', ' 11995047213', '2', 'pro');
INSERT INTO `animus`.`professores` (`nome`, `email`, `senha`, `celular`, `matéria`, `planos`) VALUES ('Henrique', 'henrique@gmail', 'khsd%vh1', '11995871634', '4', 'light');

DROP TABLE IF EXISTS `avaliacao`;
CREATE TABLE `avaliacao` (
  `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `avaliacao` int(11) DEFAULT NULL,
  `aluno` int(11) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `aluno` (`aluno`),
  KEY `professor` (`professor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `animus`.`avaliacao` (`avaliacao`, `aluno`, `professor`) VALUES ('5', '1', '4');
INSERT INTO `animus`.`avaliacao` (`avaliacao`, `aluno`, `professor`) VALUES ('3', '4', '2');
INSERT INTO `animus`.`avaliacao` (`avaliacao`, `aluno`, `professor`) VALUES ('4', '2', '3');
INSERT INTO `animus`.`avaliacao` (`avaliacao`, `aluno`, `professor`) VALUES ('5', '3', '1');

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

DROP TABLE IF EXISTS `textos`;
CREATE TABLE `textos` (
  `id_textos` int(11) NOT NULL AUTO_INCREMENT,
  `textos` text,
  PRIMARY KEY (`id_textos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
