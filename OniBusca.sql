-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22/10/2023 às 21:04
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `onibusca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ADMIN`
--

CREATE TABLE `ADMIN` (
  `ID` int(11) NOT NULL,
  `USUARIO` varchar(128) DEFAULT NULL,
  `SENHA` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ADMIN`
--

INSERT INTO `ADMIN` (`ID`, `USUARIO`, `SENHA`) VALUES
(1, 'root', '1234');

-- --------------------------------------------------------

--
-- Estrutura para tabela `EMPRESA`
--

CREATE TABLE `EMPRESA` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `EMPRESA`
--
-- Inserts de teste, nada de importante (Thales)
-- INSERT INTO `EMPRESA` (`ID`, `NOME`) VALUES
-- (2, 'Viação Cidade'),
-- (3, 'Viação São Paulo'),
-- (4, 'Viação Rio'),
-- (5, 'Viação Belo Horizonte'),
-- (6, 'Viação Salvador'),
-- (7, 'Viação Fortaleza'),
-- (8, 'Viação Recife'),
-- (9, 'Viação Manaus'),
-- (10, 'Viação Belém'),
-- (11, 'Viação Porto Alegre'),
-- (12, 'Viação Curitiba'),
-- (13, 'Viação Florianópolis'),
-- (14, 'Viação Natal'),
-- (15, 'Viação João Pessoa'),
-- (16, 'Viação Aracaju'),
-- (17, 'Viação Maceió'),
-- (18, 'Viação Teresina'),
-- (19, 'Viação São Luís'),
-- (20, 'Viação Boa Vista'),
-- (21, 'Viação Manaus'),
-- (22, 'Viação Belém'),
-- (23, 'Viação Porto Alegre'),
-- (24, 'Viação Curitiba'),
-- (25, 'Viação Florianópolis'),
-- (26, 'Viação Natal'),
-- (27, 'Viação João Pessoa'),
-- (28, 'Viação Aracaju'),
-- (29, 'Viação Maceió'),
-- (30, 'Viação Teresina'),
-- (31, 'Viação São Luís'),
-- (32, 'Viação Boa Vista'),
-- (33, 'Viação Manaus'),
-- (34, 'Viação Belém'),
-- (35, 'Viação Porto Alegre'),
-- (36, 'Viação Curitiba'),
-- (37, 'Viação Florianópolis'),
-- (38, 'Viação Natal'),
-- (39, 'Viação João Pessoa'),
-- (40, 'Viação Aracaju'),
-- (41, 'Viação Maceió'),
-- (42, 'Viação Teresina'),
-- (43, 'Viação São Luís'),
-- (44, 'Viação Boa Vista'),
-- (45, 'Viação Manaus'),
-- (46, 'Viação Belém'),
-- (47, 'Viação Porto Alegre'),
-- (48, 'Viação Curitiba'),
-- (49, 'Viação Florianópolis'),
-- (50, 'Viação Natal'),
-- (51, 'Viação João Pessoa'),
-- (52, 'Viação Aracaju'),
-- (53, 'Viação Maceió'),
-- (54, 'Viação Teresina'),
-- (55, 'Viação São Luís'),
-- (56, 'Viação Boa Vista'),
-- (57, 'Viação Manaus'),
-- (58, 'Viação Belém'),
-- (59, 'Viação Porto Alegre'),
-- (60, 'Viação Curitiba'),
-- (61, 'Viação Florianópolis'),
-- (62, 'Viação Natal'),
-- (63, 'Viação João Pessoa'),
-- (64, 'Viação Aracaju'),
-- (65, 'Viação Maceió'),
-- (66, 'Viação Teresina'),
-- (67, 'Viação São Luís'),
-- (68, 'Viação Boa Vista'),
-- (69, 'Viação Manaus'),
-- (70, 'Viação Belém'),
-- (71, 'Viação Porto Alegre'),
-- (72, 'Viação Curitiba'),
-- (73, 'Viação Florianópolis'),
-- (74, 'Viação Natal'),
-- (75, 'Viação João Pessoa'),
-- (76, 'Viação Aracaju'),
-- (77, 'Viação Maceió'),
-- (78, 'Viação Teresina'),
-- (79, 'Viação São Luís'),
-- (80, 'Viação Boa Vista'),
-- (81, 'Viação Manaus'),
-- (82, 'Viação Belém'),
-- (83, 'Viação Porto Alegre'),
-- (84, 'Viação Curitiba'),
-- (85, 'MM Souza'),
-- (86, 'VB Viação'),
-- (87, 'Lira Bus'),
-- (88, 'Edi Gay Bus'),
-- (89, 'Nilson Tur');

-- --------------------------------------------------------

--
-- Estrutura para tabela `LINHA`
--

CREATE TABLE `LINHA` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(10) DEFAULT NULL,
  `ID_ONIBUS` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `LINHA_PONTO`
--

CREATE TABLE `LINHA_PONTO` (
  `ID_LINHA` int(11) DEFAULT NULL,
  `ID_PONTO` int(11) DEFAULT NULL,
  `NUMERO_ORDEM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `MOTORISTA`
--

CREATE TABLE `MOTORISTA` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `MOTORISTA_ONIBUS`
--

CREATE TABLE `MOTORISTA_ONIBUS` (
  `ID_MOTORISTA` int(11) DEFAULT NULL,
  `ID_ONIBUS` int(11) DEFAULT NULL,
  `ID_LINHA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ONIBUS`
--

CREATE TABLE `ONIBUS` (
  `ID` int(11) NOT NULL,
  `PLACA` varchar(7) DEFAULT NULL,
  `EMPRESA_ID` int(50) DEFAULT NULL,
  `TIPO_ID` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PONTO`
--

CREATE TABLE `PONTO` (
  `ID` int(11) NOT NULL,
  `CEP` int(8) DEFAULT NULL,
  `ENDERECO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RATE_MOTO`
--

CREATE TABLE `RATE_MOTO` (
  `USERID` int(50) DEFAULT NULL,
  `MOTORISTAID` int(50) DEFAULT NULL,
  `RATE` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TIPO_ONI`
--

CREATE TABLE `TIPO_ONI` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `TIPO_ONI`
--

INSERT INTO `TIPO_ONI` (`ID`, `NOME`) VALUES
(1, 'Microônibus'),
(2, 'Onibus convencional'),
(3, 'Onibus articulado'),
(4, 'Onibus biarticulado'),
(5, 'Onibus double decker'),
(6, 'Onibus elétrico'),
(7, 'Onibus híbrido'),
(8, 'Onibus autônomo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `USUARIOS`
--

CREATE TABLE `USUARIOS` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(124) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `PERFIL` varchar(1) DEFAULT NULL CHECK (`PERFIL` = 'A' or `PERFIL` = 'M' or `PERFIL` = 'C' or `PERFIL` = 'a' or `PERFIL` = 'm' or `PERFIL` = 'c'),
  `PROFILEPIC` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ADMIN`
--
ALTER TABLE `ADMIN`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `EMPRESA`
--
ALTER TABLE `EMPRESA`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `LINHA`
--
ALTER TABLE `LINHA`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ONIBUS` (`ID_ONIBUS`);

--
-- Índices de tabela `LINHA_PONTO`
--
ALTER TABLE `LINHA_PONTO`
  ADD KEY `ID_LINHA` (`ID_LINHA`),
  ADD KEY `ID_PONTO` (`ID_PONTO`);

--
-- Índices de tabela `MOTORISTA`
--
ALTER TABLE `MOTORISTA`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `MOTORISTA_ONIBUS`
--
ALTER TABLE `MOTORISTA_ONIBUS`
  ADD KEY `ID_MOTORISTA` (`ID_MOTORISTA`),
  ADD KEY `ID_ONIBUS` (`ID_ONIBUS`),
  ADD KEY `ID_LINHA` (`ID_LINHA`);

--
-- Índices de tabela `ONIBUS`
--
ALTER TABLE `ONIBUS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EMPRESA_ID` (`EMPRESA_ID`),
  ADD KEY `TIPO_ID` (`TIPO_ID`);

--
-- Índices de tabela `PONTO`
--
ALTER TABLE `PONTO`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `RATE_MOTO`
--
ALTER TABLE `RATE_MOTO`
  ADD KEY `USERID` (`USERID`),
  ADD KEY `MOTORISTAID` (`MOTORISTAID`);

--
-- Índices de tabela `TIPO_ONI`
--
ALTER TABLE `TIPO_ONI`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `USUARIOS`
--
ALTER TABLE `USUARIOS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ADMIN`
--
ALTER TABLE `ADMIN`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `EMPRESA`
--
ALTER TABLE `EMPRESA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `LINHA`
--
ALTER TABLE `LINHA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `MOTORISTA`
--
ALTER TABLE `MOTORISTA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ONIBUS`
--
ALTER TABLE `ONIBUS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `PONTO`
--
ALTER TABLE `PONTO`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TIPO_ONI`
--
ALTER TABLE `TIPO_ONI`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `USUARIOS`
--
ALTER TABLE `USUARIOS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `LINHA`
--
ALTER TABLE `LINHA`
  ADD CONSTRAINT `LINHA_ibfk_1` FOREIGN KEY (`ID_ONIBUS`) REFERENCES `ONIBUS` (`ID`);

--
-- Restrições para tabelas `LINHA_PONTO`
--
ALTER TABLE `LINHA_PONTO`
  ADD CONSTRAINT `LINHA_PONTO_ibfk_1` FOREIGN KEY (`ID_LINHA`) REFERENCES `LINHA` (`ID`),
  ADD CONSTRAINT `LINHA_PONTO_ibfk_2` FOREIGN KEY (`ID_PONTO`) REFERENCES `PONTO` (`ID`);

--
-- Restrições para tabelas `MOTORISTA_ONIBUS`
--
ALTER TABLE `MOTORISTA_ONIBUS`
  ADD CONSTRAINT `MOTORISTA_ONIBUS_ibfk_1` FOREIGN KEY (`ID_MOTORISTA`) REFERENCES `MOTORISTA` (`ID`),
  ADD CONSTRAINT `MOTORISTA_ONIBUS_ibfk_2` FOREIGN KEY (`ID_ONIBUS`) REFERENCES `ONIBUS` (`ID`),
  ADD CONSTRAINT `MOTORISTA_ONIBUS_ibfk_3` FOREIGN KEY (`ID_LINHA`) REFERENCES `LINHA` (`ID`);

--
-- Restrições para tabelas `ONIBUS`
--
ALTER TABLE `ONIBUS`
  ADD CONSTRAINT `ONIBUS_ibfk_1` FOREIGN KEY (`EMPRESA_ID`) REFERENCES `EMPRESA` (`ID`),
  ADD CONSTRAINT `ONIBUS_ibfk_2` FOREIGN KEY (`TIPO_ID`) REFERENCES `TIPO_ONI` (`ID`);

--
-- Restrições para tabelas `RATE_MOTO`
--
ALTER TABLE `RATE_MOTO`
  ADD CONSTRAINT `RATE_MOTO_ibfk_1` FOREIGN KEY (`USERID`) REFERENCES `USUARIOS` (`ID`),
  ADD CONSTRAINT `RATE_MOTO_ibfk_2` FOREIGN KEY (`MOTORISTAID`) REFERENCES `MOTORISTA` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;