-- ============================================
-- MEDIDAS DE PRECAUÇÃO (PARA A POPULAÇÃO)
-- Referências:
-- - CETESB: Manual de Gerenciamento de Áreas Contaminadas
-- - OPAS: Saúde Ambiental e Populações Vulneráveis
-- - IARC: Agência Internacional de Pesquisa em Câncer
-- - FISPQ: Ficha de Informação de Segurança de Produtos Químicos (ABNT NBR 14725)
-- - Convenção de Estocolmo: POPs
-- - Portaria 888/2021: Limites de Metais na Água
-- ============================================

INSERT INTO MEDIDA_PRECAUCAO (nome, categoria, descricao) VALUES

-- ============================================
-- MEDIDAS GERAIS (TODOS OS CONTAMINANTES)
-- ============================================

('Restrição ao Uso de Água Subterrânea', 'Prevenção Geral',
 'Não use água de poços, cisternas ou nascentes na região. A água do subsolo pode estar contaminada por metais pesados, solventes ou outras substâncias tóxicas. Use apenas água da rede pública, que é tratada e segura.'),

('Não Cultivar Alimentos', 'Prevenção Geral',
 'Não plante hortas, frutas ou verduras no solo da região. As plantas podem absorver os contaminantes do solo, e o consumo desses alimentos pode causar danos à saúde.'),

('Evitar Contato com Solo', 'Prevenção Geral',
 'Evite tocar no solo da região. Não deixe crianças brincarem em terrenos baldios ou áreas próximas. Use luvas e sapatos fechados se precisar manusear terra. Lave bem as mãos após qualquer contato.'),

('Lavar Bem os Alimentos', 'Prevenção Geral',
 'Lave frutas, verduras e legumes com bastante água antes de consumir. Use água da rede pública para essa lavagem. Isso ajuda a remover partículas de solo que possam estar contaminadas.'),

('Procurar Atendimento Médico', 'Prevenção Geral',
 'Procure uma Unidade Básica de Saúde (UBS) se sentir sintomas como dor de cabeça, náusea, cansaço, irritação na pele, tosse persistente ou falta de ar. Informe ao médico que você mora ou trabalha perto de uma área contaminada.'),

-- ============================================
-- CONTAMINAÇÃO POR POPs (Convenção de Estocolmo, OPAS)
-- ============================================

('Não Consumir Peixes Locais', 'Prevenção POPs',
 'Não consuma peixes ou frutos do mar capturados em rios, córregos ou lagos próximos à área contaminada. Os POPs se acumulam na cadeia alimentar e podem estar concentrados nos peixes, representando risco à saúde.'),

('Manter Animais Longe', 'Prevenção POPs',
 'Não deixe animais de estimação acessarem a área contaminada. Eles podem levar partículas de solo para dentro de casa e também ser afetados pelos contaminantes.'),

('Restrição ao Uso de Água Superficial', 'Prevenção POPs',
 'Não use água de rios, córregos ou lagos próximos para beber, tomar banho ou irrigar plantas. Essas águas podem estar contaminadas por POPs e outros poluentes.'),

-- ============================================
-- CONTAMINAÇÃO POR METAIS (OMS, Portaria 888)
-- ============================================

('Restrição ao Uso de Água Superficial', 'Prevenção Metais',
 'Não use água de rios, córregos ou lagos próximos. Metais pesados podem estar presentes na água e no solo, representando risco à saúde.'),

-- ============================================
-- CONTAMINAÇÃO POR SOLVENTES HALOGENADOS (CETESB)
-- ============================================

('Ventilação', 'Prevenção Solventes',
 'Mantenha portas e janelas abertas para ventilar os ambientes, especialmente em dias quentes. A evaporação de solventes pode liberar vapores tóxicos que, se inalados, causam dor de cabeça, tontura e problemas mais graves.'),

('Evitar Inalação de Vapores', 'Prevenção Solventes',
 'Se sentir cheiro de químico ou solvente, saia do local e procure um ambiente aberto e ventilado. Avise a CETESB sobre qualquer odor forte ou persistente na região.'),

-- ============================================
-- CONTAMINAÇÃO POR COMBUSTÍVEIS / PAHs (IARC)
-- ============================================

('Isolamento da Área', 'Prevenção Emergencial',
 'Não entre em áreas com placas de aviso ou barreiras físicas. Elas indicam locais de risco à saúde onde o solo e a água podem estar contaminados por combustíveis ou outras substâncias tóxicas.'),

('Restrição ao Uso do Solo', 'Prevenção Combustíveis',
 'Não use o solo da região para construir, plantar ou qualquer outra atividade. Os contaminantes podem estar em fase livre (visíveis) ou adsorvidos nas partículas do solo.'),

('Uso de Equipamentos de Proteção', 'Prevenção Combustíveis',
 'Se precisar trabalhar ou circular próximo à área, use luvas, sapatos fechados e máscara. Isso ajuda a evitar contato com o solo e inalação de vapores de combustíveis.'),

-- ============================================
-- CONTAMINAÇÃO POR BIOCIDAS (OPAS, Convenção de Estocolmo)
-- ============================================

('Restrição ao Uso de Água Superficial', 'Prevenção Biocidas',
 'Não use água de rios, córregos ou lagos próximos. Biocidas podem estar presentes na água e no solo, afetando a saúde de quem tem contato.'),

('Manter Animais Longe', 'Prevenção Biocidas',
 'Não deixe animais de estimação acessarem a área contaminada. Biocidas podem ser tóxicos para animais e também podem ser trazidos para dentro de casa.'),

-- ============================================
-- CONTAMINAÇÃO POR FENÓIS (FISPQ)
-- ============================================

('Uso de Equipamentos de Proteção', 'Prevenção Fenóis',
 'Use luvas, sapatos fechados e máscara se precisar circular próximo à área. Fenóis são corrosivos e podem causar queimaduras na pele se houver contato.');