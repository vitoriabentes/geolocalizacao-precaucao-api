-- ============================================
-- RELACIONAR ÁREAS COM MEDIDAS DE PRECAUÇÃO
-- ============================================

-- MEDIDAS GERAIS PARA TODAS AS ÁREAS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT a.id, mp.id 
FROM AREA_CONTAMINADA a, MEDIDA_PRECAUCAO mp
WHERE mp.nome IN ('Restrição ao Uso de Água Subterrânea', 'Não Cultivar Alimentos', 'Evitar Contato com Solo', 'Lavar Bem os Alimentos', 'Procurar Atendimento Médico');

-- Áreas com POPs (Rhodia, COHAB)
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'POPs' 
  AND mp.nome IN ('Não Consumir Peixes Locais', 'Manter Animais Longe', 'Restrição ao Uso de Água Superficial');

-- Áreas com METAIS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'METAIS' 
  AND mp.nome IN ('Restrição ao Uso de Água Superficial');

-- Áreas com SOLVENTES HALOGENADOS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'SOLVENTES HALOGENADOS' 
  AND mp.nome IN ('Ventilação', 'Evitar Inalação de Vapores');

-- Áreas com COMBUSTÍVEIS AUTOMOTIVOS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'COMBUSTÍVEIS AUTOMOTIVOS' 
  AND mp.nome IN ('Isolamento da Área', 'Restrição ao Uso do Solo', 'Uso de Equipamentos de Proteção');

-- Áreas com BIOCIDAS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'BIOCIDAS' 
  AND mp.nome IN ('Restrição ao Uso de Água Superficial', 'Manter Animais Longe');

-- Áreas com FENÓIS
INSERT INTO AREA_CONTAMINADA_MEDIDA_PRECAUCAO (id_area, id_precaucao)
SELECT DISTINCT a.id, mp.id
FROM AREA_CONTAMINADA a
INNER JOIN AREA_CONTAMINADA_CONTAMINANTE acc ON a.id = acc.id_area
INNER JOIN CONTAMINANTE c ON acc.id_contaminante = c.id
CROSS JOIN MEDIDA_PRECAUCAO mp
WHERE c.nome = 'FENÓIS' 
  AND mp.nome IN ('Uso de Equipamentos de Proteção');