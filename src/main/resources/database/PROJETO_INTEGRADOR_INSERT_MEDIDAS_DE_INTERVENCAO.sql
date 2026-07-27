-- ============================================
-- MEDIDAS DE INTERVENÇÃO (REALIZADAS PELO GOVERNO)
-- Referências: CETESB, Planos de Remediação
-- ============================================

INSERT INTO MEDIDA_INTERVENCAO (nome, categoria, descricao) VALUES
('Isolamento da Área (Proteção de Acesso à Área)', 'Emergencial',
 'Instalação de cercas, muros e placas de sinalização para impedir que pessoas e animais entrem na área contaminada, evitando exposição aos poluentes.'),

('Monitoramento Ambiental', 'Controle',
 'Coleta periódica de amostras de solo, água subterrânea e ar para acompanhar a evolução da contaminação e verificar se as medidas de remediação estão sendo eficazes.'),

('Remoção de Materiais (Produtos, Resíduos,...)', 'Remediação',
 'Retirada de produtos químicos, resíduos tóxicos e materiais contaminados que estejam armazenados de forma irregular ou representem risco imediato à saúde.'),

('Bombeamento e Tratamento', 'Remediação',
 'Retirada da água subterrânea contaminada por meio de bombas, seguida de tratamento para remover os poluentes antes de devolvê-la ao ambiente.'),

('Remoção de Solo/Resíduo', 'Remediação',
 'Escavação e remoção do solo que está contaminado para ser tratado em local adequado ou descartado em aterro industrial, eliminando a fonte de contaminação.'),

('Cobertura de Resíduo/Solo Contaminado', 'Remediação',
 'Colocação de uma camada impermeável sobre o solo contaminado para evitar que as pessoas tenham contato com os poluentes e para impedir que a água da chuva penetre e espalhe a contaminação.'),

('Barreira Hidráulica', 'Remediação',
 'Instalação de sistemas para controlar o fluxo da água subterrânea, impedindo que os contaminantes se espalhem para áreas vizinhas ou para lençóis freáticos mais profundos.'),

('Biorremediação', 'Remediação',
 'Uso de micro-organismos (bactérias, fungos) que se alimentam de contaminantes, transformando-os em substâncias menos tóxicas ou inofensivas para o ambiente.'),

('Oxidação Química', 'Remediação',
 'Injeção de substâncias oxidantes no solo ou na água subterrânea para quebrar quimicamente os contaminantes, transformando-os em compostos menos perigosos.'),

('Recuperação de Fase Livre', 'Remediação',
 'Remoção de combustíveis ou solventes que estão em fase livre (ou seja, visíveis, como uma camada de óleo) por meio de poços de recuperação, evitando que continuem contaminando o solo e a água.'),

('Extração Multifásica', 'Remediação',
 'Tecnologia que extrai simultaneamente líquidos contaminantes e vapores do subsolo, acelerando o processo de remediação.'),

('Extrações de Vapores do Solo (SVE)', 'Remediação',
 'Aplicação de vácuo para extrair vapores contaminantes do solo, especialmente eficaz para remover solventes e combustíveis voláteis.'),

('Atenuação Natural Monitorada', 'Remediação',
 'Acompanhamento da degradação natural dos contaminantes ao longo do tempo, sem intervenção ativa, desde que os riscos à saúde sejam controlados.'),

('Barreira Física', 'Controle',
 'Instalação de barreiras físicas (como muros ou valas) para conter a migração de contaminantes e impedir que se espalhem para áreas não contaminadas.');