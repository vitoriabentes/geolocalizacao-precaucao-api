USE PROJETO_INTEGRADOR;
CREATE TABLE `AREA_CONTAMINADA` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nis` varchar(20),
  `classificacao` varchar(100),
  `razao_social` varchar(200),
  `endereco` varchar(255),
  `latitude` decimal(10,8),
  `longitude` decimal(11,8),
  `data_hora_criacao` timestamp DEFAULT (now()),
  `data_hora_atualizacao` timestamp DEFAULT (now())
);

CREATE TABLE `CONTAMINANTE` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100) UNIQUE ,
  `tipo` varchar(50),
  `descricao` text ,
  `data_hora_criacao` timestamp DEFAULT (now()),
  `data_hora_atualizacao` timestamp DEFAULT (now())
);

CREATE TABLE `AREA_CONTAMINADA_CONTAMINANTE` (
  `id_area` integer,
  `id_contaminante` integer
);

CREATE TABLE `MEDIDA_PRECAUCAO` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(150),
  `categoria` varchar(50) ,
  `descricao` text,
  `data_hora_criacao` timestamp DEFAULT (now()),
  `data_hora_atualizacao` timestamp DEFAULT (now())
);

CREATE TABLE `AREA_CONTAMINADA_MEDIDA_PRECAUCAO` (
  `id_area` integer,
  `id_precaucao` integer
);

CREATE TABLE `MEDIDA_INTERVENCAO` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(150) UNIQUE,
  `categoria` varchar(50),
  `descricao` text,
  `data_hora_criacao` timestamp DEFAULT (now()),
  `data_hora_atualizacao` timestamp DEFAULT (now())
);

CREATE TABLE `AREA_CONTAMINADA_MEDIDA_INTERVENCAO` (
  `id_area` integer,
  `id_intervencao` integer
);

ALTER TABLE `AREA_CONTAMINADA_CONTAMINANTE` ADD FOREIGN KEY (`id_area`) REFERENCES `AREA_CONTAMINADA` (`id`);

ALTER TABLE `AREA_CONTAMINADA_CONTAMINANTE` ADD FOREIGN KEY (`id_contaminante`) REFERENCES `CONTAMINANTE` (`id`);

ALTER TABLE `AREA_CONTAMINADA_MEDIDA_PRECAUCAO` ADD FOREIGN KEY (`id_area`) REFERENCES `AREA_CONTAMINADA` (`id`);

ALTER TABLE `AREA_CONTAMINADA_MEDIDA_PRECAUCAO` ADD FOREIGN KEY (`id_precaucao`) REFERENCES `MEDIDA_PRECAUCAO` (`id`);

ALTER TABLE `AREA_CONTAMINADA_MEDIDA_INTERVENCAO` ADD FOREIGN KEY (`id_area`) REFERENCES `AREA_CONTAMINADA` (`id`);

ALTER TABLE `AREA_CONTAMINADA_MEDIDA_INTERVENCAO` ADD FOREIGN KEY (`id_intervencao`) REFERENCES `MEDIDA_INTERVENCAO` (`id`);
