USE PROJETO_INTEGRADOR;

INSERT INTO CONTAMINANTE (nome, tipo, descricao) VALUES
('COMBUSTÍVEIS AUTOMOTIVOS', 'Hidrocarbonetos', 
 'São derivados de petróleo como gasolina, diesel e óleo. Essas substâncias podem vazar de postos de gasolina ou tanques e contaminar o solo e a água. O contato com esses produtos pode causar irritação na pele, dores de cabeça e, em exposição prolongada, problemas mais graves como danos ao fígado e ao sistema nervoso.'),

('SOLVENTES AROMÁTICOS', 'Solventes', 
 'São produtos químicos usados em tintas, vernizes e combustíveis. O benzeno, por exemplo, é um solvente aromático que pode causar câncer quando uma pessoa é exposta por muito tempo. Eles podem contaminar o solo e a água subterrânea, afetando a saúde de quem mora próximo.'),

('PAHs', 'Hidrocarbonetos', 
 'São Hidrocarbonetos Policíclicos Aromáticos — substâncias que se formam quando materiais como carvão, petróleo ou madeira queimam de forma incompleta. Muitos PAHs são cancerígenos e podem estar presentes em solos contaminados, representando risco para quem tem contato frequente com a área.'),

('POPs', 'Poluentes Orgânicos Persistentes', 
 'São poluentes que demoram muito tempo para se decompor no meio ambiente, como o DDT (um antigo inseticida) e os PCBs (usados em equipamentos elétricos). Eles se acumulam no organismo de animais e pessoas, podendo causar câncer, problemas no sistema nervoso e distúrbios hormonais. Por serem persistentes, mesmo após muitos anos ainda representam risco à saúde.'),

('SOLVENTES HALOGENADOS', 'Solventes', 
 'São produtos químicos usados para limpeza de metais e equipamentos industriais, como o tricloroetileno. Eles podem contaminar o solo e a água subterrânea, afetando o sistema nervoso, o fígado e os rins de quem é exposto por muito tempo.'),

('FENÓIS', 'Compostos Orgânicos', 
 'São substâncias químicas usadas na fabricação de plásticos, resinas e medicamentos. O fenol, por exemplo, é corrosivo e pode causar queimaduras na pele e danos ao fígado e aos rins se houver contato ou ingestão.'),

('BIOCIDAS', 'Pesticidas', 
 'São substâncias usadas para matar pragas, como insetos, fungos e ervas daninhas. Muitos biocidas são tóxicos para o sistema nervoso e podem causar distúrbios hormonais. Eles são especialmente perigosos para crianças e mulheres grávidas.'),

('METAIS', 'Metais Pesados', 
 'São metais como chumbo, mercúrio e cádmio, que são tóxicos para o organismo. Eles se acumulam no corpo ao longo do tempo e podem causar danos aos rins, ao fígado e ao sistema nervoso. Crianças são especialmente vulneráveis, pois o chumbo pode afetar o desenvolvimento cerebral.'),

('OUTROS INORGÂNICOS', 'Inorgânicos', 
 'São substâncias químicas que não contêm carbono na sua estrutura, como sais, metais e minerais. Alguns podem ser tóxicos dependendo do tipo e da quantidade presente no solo ou na água.'),

('Grupo TPH', 'Hidrocarbonetos', 
 'TPH significa "Total de Petróleo e Hidrocarbonetos" — ou seja, é a soma de todos os compostos derivados de petróleo presentes em uma área contaminada. Isso inclui gasolina, diesel, óleo lubrificante e outros produtos, que podem causar danos à saúde se ingeridos ou inalados.'),

('CONTAMINANTES', 'Diversos', 
 'Esta categoria agrupa diferentes tipos de substâncias tóxicas encontradas juntas em uma mesma área contaminada. A presença de múltiplos contaminantes pode aumentar os riscos à saúde, exigindo cuidados específicos.'),

('METANO', 'Gás', 
 'É um gás inflamável que pode se formar em áreas com matéria orgânica em decomposição ou vazamentos de gás natural. Em altas concentrações, pode causar asfixia e representa risco de explosão.');