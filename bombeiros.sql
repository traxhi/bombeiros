-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/09/2023 às 12:31
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bombeiros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_emergencia_medica`
--

CREATE TABLE `anamnese_emergencia_medica` (
  `o_que_aconteceu` varchar(200) NOT NULL,
  `aconteceu_outras_vezes` varchar(3) NOT NULL,
  `quanto_tempo_aconteceu` varchar(20) NOT NULL,
  `possui_problema_saude` varchar(5) NOT NULL,
  `quais_problemas_saude` int(11) DEFAULT NULL,
  `faz_uso_medicacao` varchar(3) NOT NULL,
  `horario_ultima_medicacao` time DEFAULT NULL,
  `quais_medicacao` varchar(100) DEFAULT NULL,
  `alergico_alguma_coisa` varchar(3) NOT NULL,
  `alergique_o_que` varchar(50) DEFAULT NULL,
  `ingeriu_alimento` varchar(3) NOT NULL,
  `horas_ingerir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `periodo_gestacao` varchar(30) DEFAULT NULL,
  `fez_pre_natal` varchar(30) DEFAULT NULL,
  `nome_medico` varchar(30) DEFAULT NULL,
  `existe_possibilidade_complicacoes` varchar(30) DEFAULT NULL,
  `e_o_primeiro_filho` varchar(30) DEFAULT NULL,
  `quantos` int(3) DEFAULT NULL,
  `que_horas_iniciaram_contracoes` varchar(30) DEFAULT NULL,
  `duracao_contracoes` varchar(30) DEFAULT NULL,
  `intervalo_contracoes` varchar(30) DEFAULT NULL,
  `pressao_regiao_quadril` varchar(30) DEFAULT NULL,
  `houve_ruptura_bolsa` varchar(30) DEFAULT NULL,
  `feito_inspecao_visual` varchar(30) DEFAULT NULL,
  `parto_realizado` varchar(30) DEFAULT NULL,
  `hora_nascimento` varchar(30) DEFAULT NULL,
  `sexo_bebe` varchar(30) DEFAULT NULL,
  `nome_bebe` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_cinematica`
--

CREATE TABLE `avaliacao_cinematica` (
  `disturbio_comportamento` int(11) NOT NULL,
  `encontrado_de_capacete` int(11) NOT NULL,
  `encontrado_de_cinto` int(11) NOT NULL,
  `para_brisas_avariado` int(11) NOT NULL,
  `caminhando_na_cena` int(11) NOT NULL,
  `painel_avariado` int(11) NOT NULL,
  `volante_torcido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_paciente_maior`
--

CREATE TABLE `avaliacao_paciente_maior` (
  `abertura_ocular` int(1) DEFAULT NULL,
  `resposta_verbal` int(1) DEFAULT NULL,
  `resposta_motora` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_paciente_menor`
--

CREATE TABLE `avaliacao_paciente_menor` (
  `abertura_ocular` int(1) DEFAULT NULL,
  `resposta_verbal` int(1) DEFAULT NULL,
  `resposta_motora` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_admin`
--

CREATE TABLE `cadastro_admin` (
  `id_admin` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro_admin`
--

INSERT INTO `cadastro_admin` (`id_admin`, `nome`, `email`, `senha`, `telefone`) VALUES
(1, '123', 'admin', 'f3ac63c91272f19ce97c7397825cc15f', 123),
(2, '213', 'pedro@pedro1', 'eac84d88712820279d18195dfa3d36cd', 1),
(3, 'asda', 'sdasd', '98c6c14acce440c6ab3058d2970d5a0f', 0),
(4, 'asd', 'asda', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(5, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_bombeiro`
--

CREATE TABLE `cadastro_bombeiro` (
  `id_bombeiro` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro_bombeiro`
--

INSERT INTO `cadastro_bombeiro` (`id_bombeiro`, `nome`, `email`, `senha`, `telefone`) VALUES
(22, '1', 'maicol', '202cb962ac59075b964b07152d234b70', 1),
(23, 'asfsgdfg', 'pfjopomsdaf', '322832873a418ccf72c584f30bd8b30e', 0),
(24, '´pioó', '´0yh', 'f5c95a9eda3aeb1e3deebec6d9110f5b', 78896786),
(25, '123', 'pedro@1', '698d51a19d8a121ce581499d7b701668', 123),
(26, 'j', 'j', '363b122c528f54df4a0446b6bab05515', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_acompanhante`
--

CREATE TABLE `dados_acompanhante` (
  `nome_acompanhante` varchar(50) DEFAULT NULL,
  `idade_acompanhante` int(3) DEFAULT NULL,
  `instabilidade_acompanhante` varchar(20) DEFAULT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_acompanhante`
--

INSERT INTO `dados_acompanhante` (`nome_acompanhante`, `idade_acompanhante`, `instabilidade_acompanhante`, `id_paciente`) VALUES
('1111', 11, NULL, 11),
('1111', 11, NULL, 11),
('99', 99, NULL, 12),
('99', 99, NULL, 12),
('21312', 32131, NULL, 13),
('21312', 32131, NULL, 13),
('21312', 32131, NULL, 13),
('21312', 32131, NULL, 14),
('21312', 32131, NULL, 14),
('231', 3123123, NULL, 15),
('231', 3123123, NULL, 15),
('231', 3123123, NULL, 15),
('13123', 12313, NULL, 13);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_paciente`
--

CREATE TABLE `dados_paciente` (
  `nome_paciente` varchar(50) NOT NULL,
  `cpf_paciente` int(11) NOT NULL,
  `sexo_paciente` varchar(9) NOT NULL,
  `idade_paciente` int(3) NOT NULL,
  `fone_paciente` int(9) NOT NULL,
  `local_ocorrencia` varchar(50) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_paciente`
--

INSERT INTO `dados_paciente` (`nome_paciente`, `cpf_paciente`, `sexo_paciente`, `idade_paciente`, `fone_paciente`, `local_ocorrencia`, `id_paciente`) VALUES
('pedro', 123, '', 123, 1231, '23', 10),
('oi', 1, '', 1, 1, '1', 11),
('caleb', 999, '', 99, 99, '99', 12),
('klsdaklfd', 0, '', 12123113, 23131, '23123123', 13),
('asdasd', 1231231, '', 3213, 32434000, '21312', 14),
('efsdf', 2232323, '', 222, 99999999, 'fsdfsdf', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe_atendimento`
--

CREATE TABLE `equipe_atendimento` (
  `m_atendimento` varchar(35) DEFAULT NULL,
  `s1_atendimento` varchar(35) DEFAULT NULL,
  `s2_atendimento` varchar(35) DEFAULT NULL,
  `s3_atendimento` varchar(35) DEFAULT NULL,
  `demandante_atendimento` varchar(35) DEFAULT NULL,
  `demandante_equipe` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_deixados_hospital`
--

CREATE TABLE `materiais_utilizados_deixados_hospital` (
  `base_do_estabiliza_hospital` varchar(40) DEFAULT NULL,
  `colar_hospital` varchar(40) DEFAULT NULL,
  `coxins_estabiliza_hospital` varchar(40) DEFAULT NULL,
  `ked_hospital` varchar(40) DEFAULT NULL,
  `maca_rigida_hospital` varchar(40) DEFAULT NULL,
  `ttf_hospital` varchar(40) DEFAULT NULL,
  `tirante_aranha_hospital` varchar(40) DEFAULT NULL,
  `tirante_cabeca_hospital` varchar(40) DEFAULT NULL,
  `canula_hospital` varchar(40) DEFAULT NULL,
  `outros_hospital` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_descartaveis`
--

CREATE TABLE `materiais_utilizados_descartaveis` (
  `ataduras_descartavel` varchar(40) DEFAULT NULL,
  `cateter_tp_oculos_descartaveis` varchar(40) DEFAULT NULL,
  `compressa_comum_descartaveis` varchar(40) DEFAULT NULL,
  `kits_descartaveis` varchar(40) DEFAULT NULL,
  `mascara_descartaveis` varchar(40) DEFAULT NULL,
  `manta_aluminizada_descartaveis` varchar(40) DEFAULT NULL,
  `pas_do_dea_descartaveis` varchar(40) DEFAULT NULL,
  `sonda_aspiracao_descartaveis` varchar(40) DEFAULT NULL,
  `soro_fisiologico_descartaveis` varchar(40) DEFAULT NULL,
  `talas_pap_descartaveis` varchar(40) DEFAULT NULL,
  `outros_descartaveis` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `objetos` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `observacoes_importantes`
--

CREATE TABLE `observacoes_importantes` (
  `observacoes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas_suspeitos`
--

CREATE TABLE `problemas_suspeitos` (
  `psiquiatrico` int(11) NOT NULL,
  `respiratorio_dpoc` int(11) NOT NULL,
  `respiratorio_inalacao_fumaca` int(11) NOT NULL,
  `diabetes_hiperglicemia` int(11) NOT NULL,
  `diabetes_hipoglicemia` int(11) NOT NULL,
  `obstetrico_parto_emergencial` int(11) NOT NULL,
  `obstetrico_gestante` int(11) NOT NULL,
  `obstetrico_hemorragia_excessiva` int(11) NOT NULL,
  `transporte_aereo` int(11) NOT NULL,
  `transporte_clinico` int(11) NOT NULL,
  `transporte_emergencial` int(11) NOT NULL,
  `transporte_pos_trauma` int(11) NOT NULL,
  `transporte_samu` int(11) NOT NULL,
  `transporte_outros` varchar(30) NOT NULL,
  `transporte_sem_remocao` int(11) NOT NULL,
  `outros` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `aspiracao` int(11) NOT NULL,
  `avaliacao_inicial` int(11) NOT NULL,
  `avaliacao_dirigida` int(11) NOT NULL,
  `avaliacao_continuada` int(11) NOT NULL,
  `chave_de_rautek` int(11) NOT NULL,
  `canula_de_guedel` int(11) NOT NULL,
  `desobstrucao_de_v.a` int(11) NOT NULL,
  `emprego do d.e.a` int(11) NOT NULL,
  `gerenciamento de riscos` int(11) NOT NULL,
  `limpeza_de_ferimento` int(11) NOT NULL,
  `curativos` int(11) NOT NULL,
  `compresso` int(11) NOT NULL,
  `encravamento` int(11) NOT NULL,
  `ocular` int(11) NOT NULL,
  `queimadura` int(11) NOT NULL,
  `simples` int(11) NOT NULL,
  `3_pontas` int(11) NOT NULL,
  `imobilizacoes` int(11) NOT NULL,
  `membro_inf_direito` int(11) NOT NULL,
  `membro_inf_esq` int(11) NOT NULL,
  `membro_sup_dir` int(11) NOT NULL,
  `membro_sup_esq` int(11) NOT NULL,
  `quadril` int(11) NOT NULL,
  `cervical` int(11) NOT NULL,
  `maca_sobre_rodas` int(11) NOT NULL,
  `maca_rigida` int(11) NOT NULL,
  `ponte` int(11) NOT NULL,
  `retirado_capacete` int(11) NOT NULL,
  `r.c.p` int(11) NOT NULL,
  `rolamente_90_graus` int(11) NOT NULL,
  `rolamento_180_graus` int(11) NOT NULL,
  `tomada_decisao` int(11) NOT NULL,
  `tratado_choque` int(11) NOT NULL,
  `uso_de_canula` int(11) NOT NULL,
  `uso_colar` int(11) NOT NULL,
  `uso_ked` int(11) NOT NULL,
  `uso_ttf` int(11) NOT NULL,
  `ventilacao_suporte` int(11) NOT NULL,
  `oxigenioterapia_lpm` int(11) NOT NULL,
  `reanimador_lpm` int(11) NOT NULL,
  `meios_auxiliares` int(11) NOT NULL,
  `celesc` int(11) NOT NULL,
  `def_civil` int(11) NOT NULL,
  `igp/pc` int(11) NOT NULL,
  `policia_civil` int(11) NOT NULL,
  `policia_militar` int(11) NOT NULL,
  `policia_pre` int(11) NOT NULL,
  `policia_prf` int(11) NOT NULL,
  `samu_usa` int(11) NOT NULL,
  `samu_usb` int(11) NOT NULL,
  `cit` int(11) NOT NULL,
  `outro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_e_sintomas`
--

CREATE TABLE `sinais_e_sintomas` (
  `abdomen_sensivel_ou_rigido` int(11) NOT NULL,
  `afundamento_de_cranio` int(11) NOT NULL,
  `agitacao` int(11) NOT NULL,
  `amnesia` int(11) NOT NULL,
  `angina_de_peito` int(11) NOT NULL,
  `apineia` int(11) NOT NULL,
  `bradicardia` int(11) NOT NULL,
  `bradipnéia` int(11) NOT NULL,
  `bronco_aspirando` int(11) NOT NULL,
  `cafalea` int(11) NOT NULL,
  `cianose_labios` int(11) NOT NULL,
  `cianose_extremidade` int(11) NOT NULL,
  `convulsao` int(11) NOT NULL,
  `decorticacao` int(11) NOT NULL,
  `deformidade` int(11) NOT NULL,
  `descerebracao` int(11) NOT NULL,
  `desmaio` int(11) NOT NULL,
  `desvio_de_traqueia` int(11) NOT NULL,
  `dispneia` int(11) NOT NULL,
  `dor_local` int(11) NOT NULL,
  `edema_generalizado` int(11) NOT NULL,
  `edema_localizado` int(11) NOT NULL,
  `enfisema_subcutaneo` int(11) NOT NULL,
  `estese_de_jugular` int(11) NOT NULL,
  `face_palida` int(11) NOT NULL,
  `hemorragia_interna` int(11) NOT NULL,
  `hemorragia_externa` int(11) NOT NULL,
  `hipertensao` int(11) NOT NULL,
  `hipotensao` int(11) NOT NULL,
  `nauseas_e_vomitos` int(11) NOT NULL,
  `nasoragia` int(11) NOT NULL,
  `obito` int(11) NOT NULL,
  `otorreia` int(11) NOT NULL,
  `otorraqia` int(11) NOT NULL,
  `o.v.a.c.e` int(11) NOT NULL,
  `parada_cardiaca` int(11) NOT NULL,
  `parada_respiratoria` int(11) NOT NULL,
  `priaprismo` int(11) NOT NULL,
  `prurido_na_pele` int(11) NOT NULL,
  `pupilas_ansocoria` int(11) NOT NULL,
  `pupilas_isocopra` int(11) NOT NULL,
  `pupilas_medriase` int(11) NOT NULL,
  `pupilas_miose` int(11) NOT NULL,
  `pupilas_reagente` int(11) NOT NULL,
  `pupilas_nao_reagente` int(11) NOT NULL,
  `sede` int(11) NOT NULL,
  `sinal_de_battle` int(11) NOT NULL,
  `sinal_de_guaxinim` int(11) NOT NULL,
  `sudorese` int(11) NOT NULL,
  `taquipneia` int(11) NOT NULL,
  `taquicardia` int(11) NOT NULL,
  `tontura` int(11) NOT NULL,
  `outro_sinais_e_sintomas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `pressao_arterial` int(10) NOT NULL,
  `pulso` int(10) NOT NULL,
  `respiracao_m.r.m` int(10) NOT NULL,
  `saturacao` int(10) NOT NULL,
  `hgt_numero` int(10) NOT NULL,
  `normal_ou_anormal` int(10) NOT NULL,
  `temperatura_corporal` int(10) NOT NULL,
  `perfusao_+ou-_2sec` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `termo_de_recusa_atendimento`
--

CREATE TABLE `termo_de_recusa_atendimento` (
  `foto_recusa` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_ocorrencia_pre_hospitalar`
--

CREATE TABLE `tipo_ocorrencia_pre_hospitalar` (
  `tipo_ocorrencia` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte`
--

CREATE TABLE `transporte` (
  `forma_conducao` varchar(20) NOT NULL,
  `vitima_era` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro_admin`
--
ALTER TABLE `cadastro_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Índices de tabela `cadastro_bombeiro`
--
ALTER TABLE `cadastro_bombeiro`
  ADD PRIMARY KEY (`id_bombeiro`);

--
-- Índices de tabela `dados_acompanhante`
--
ALTER TABLE `dados_acompanhante`
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `dados_paciente`
--
ALTER TABLE `dados_paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_admin`
--
ALTER TABLE `cadastro_admin`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cadastro_bombeiro`
--
ALTER TABLE `cadastro_bombeiro`
  MODIFY `id_bombeiro` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `dados_paciente`
--
ALTER TABLE `dados_paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `dados_acompanhante`
--
ALTER TABLE `dados_acompanhante`
  ADD CONSTRAINT `dados_acompanhante_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_paciente` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
