-- ============================================
-- RELACIONAR ÁREAS COM MEDIDAS DE INTERVENÇÃO
-- ============================================

-- MEDIDAS GERAIS PARA TODAS AS ÁREAS
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id 
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE mi.nome IN ('Isolamento da Área (Proteção de Acesso à Área)', 'Monitoramento Ambiental', 'Remoção de Materiais (Produtos, Resíduos,...)');

-- Áreas em remediação (ACRe) - medidas principais
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.classificacao LIKE '%Remediação%'
  AND mi.nome IN ('Bombeamento e Tratamento', 'Remoção de Solo/Resíduo', 'Cobertura de Resíduo/Solo Contaminado');

-- Áreas Rhodia (NIS 363, 367, 2567, 2635, 3661)
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.razao_social LIKE '%RHODIA%' 
  AND mi.nome IN ('Barreira Hidráulica', 'Biorremediação');

-- NIS 363 - Rhodia (medidas específicas)
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 363 
  AND mi.nome IN ('Isolamento da Área (Proteção de Acesso à Área)', 'Monitoramento Ambiental', 'Remoção de Materiais (Produtos, Resíduos,...)', 'Bombeamento e Tratamento', 'Remoção de Solo/Resíduo', 'Cobertura de Resíduo/Solo Contaminado', 'Barreira Hidráulica');

-- NIS 367 - Rhodia KM 69 (medidas específicas)
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 367 
  AND mi.nome IN ('Isolamento da Área (Proteção de Acesso à Área)', 'Monitoramento Ambiental', 'Remoção de Materiais (Produtos, Resíduos,...)', 'Bombeamento e Tratamento', 'Remoção de Solo/Resíduo', 'Cobertura de Resíduo/Solo Contaminado', 'Barreira Hidráulica', 'Biorremediação');

-- NIS 1766 - Saint-Gobain
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 1766 
  AND mi.nome IN ('Isolamento da Área (Proteção de Acesso à Área)', 'Monitoramento Ambiental', 'Remoção de Materiais (Produtos, Resíduos,...)', 'Bombeamento e Tratamento', 'Remoção de Solo/Resíduo', 'Oxidação Química');

-- NIS 3375 - Auto Posto Avalanche
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 3375 
  AND mi.nome IN ('Monitoramento Ambiental', 'Bombeamento e Tratamento', 'Remoção de Solo/Resíduo', 'Recuperação de Fase Livre', 'Extrações de Vapores do Solo (SVE)');

-- NIS 5519 - Rumo Malha Paulista
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 5519 
  AND mi.nome IN ('Isolamento da Área (Proteção de Acesso à Área)', 'Monitoramento Ambiental', 'Remoção de Materiais (Produtos, Resíduos,...)', 'Remoção de Solo/Resíduo', 'Barreira Física');

-- NIS 4304 - Unimetal
INSERT INTO AREA_CONTAMINADA_MEDIDA_INTERVENCAO (id_area, id_intervencao)
SELECT a.id, mi.id
FROM AREA_CONTAMINADA a, MEDIDA_INTERVENCAO mi
WHERE a.nis = 4304 
  AND mi.nome IN ('Remoção de Materiais (Produtos, Resíduos,...)', 'Remoção de Solo/Resíduo');