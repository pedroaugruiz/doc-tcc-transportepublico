-- Arquivo: recursos.sql
-- Comandos SELECT para cada tabela (listando todos os campos explicitamente)

-- 1. SELECTs simples
SELECT id_tipo_usuario, nome_tipo_usuario FROM tipo_usuarios;
SELECT id_usuario, id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario FROM usuario;
SELECT id_motorista, cpf_motorista, cnh_motorista, foto_motorista FROM motorista;
SELECT id_onibus, placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus FROM onibus;
SELECT id_manutencao, id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao FROM manutencao;
SELECT id_linha, nome_linhas, descricao_linha FROM linhas;
SELECT id_pontos, nome_pontos, latitude_pontos, longitude_pontos FROM pontos;
SELECT id_rota, id_ponto, id_linha, ordem_sequencia_rotas FROM rotas;
SELECT id_rotaOnibus, id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus FROM rota_onibus;
SELECT id_localizacao, id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao FROM localizacao;
SELECT id_avaliacao, id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao FROM avaliacao;
SELECT id_horario, id_ponto, passagem_horarios FROM horarios;

-- 2. SELECTs com INNER JOIN para tabelas com chaves estrangeiras
-- usuario (id_tipo_usuario)
SELECT u.id_usuario, u.nome_usuario, u.email_usuario, u.telefone_usuario, t.nome_tipo_usuario
FROM usuario u
INNER JOIN tipo_usuarios t ON u.id_tipo_usuario = t.id_tipo_usuario;

-- manutencao (id_onibus)
SELECT m.id_manutencao, m.descricao_manutencao, m.data_inicio_manutencao, m.data_fim_manutencao, m.status_manutencao, o.placa_onibus, o.modelo_onibus
FROM manutencao m
INNER JOIN onibus o ON m.id_onibus = o.id_onibus;

-- rotas (id_ponto, id_linha)
SELECT r.id_rota, r.ordem_sequencia_rotas, p.nome_pontos, l.nome_linhas
FROM rotas r
INNER JOIN pontos p ON r.id_ponto = p.id_pontos
INNER JOIN linhas l ON r.id_linha = l.id_linha;

-- rota_onibus (id_motorista, id_onibus, id_rota)
SELECT ro.id_rotaOnibus, ro.data_ocorrencia_rota_onibus, m.nome_usuario AS nome_motorista, o.placa_onibus, r.id_rota
FROM rota_onibus ro
INNER JOIN motorista mt ON ro.id_motorista = mt.id_motorista
INNER JOIN onibus o ON ro.id_onibus = o.id_onibus
INNER JOIN rotas r ON ro.id_rota = r.id_rota
LEFT JOIN usuario m ON mt.id_motorista = m.id_usuario;

-- localizacao (id_rota_onibus)
SELECT lz.id_localizacao, lz.latitude_localizacao, lz.longitude_localizacao, lz.data_hora_localizacao, ro.id_rotaOnibus
FROM localizacao lz
INNER JOIN rota_onibus ro ON lz.id_rota_onibus = ro.id_rotaOnibus;

-- avaliacao (id_usuario, id_motorista)
SELECT a.id_avaliacao, a.nota_avaliacao, a.comentario_avaliacao, a.data_avaliacao, u.nome_usuario, m.id_motorista
FROM avaliacao a
INNER JOIN usuario u ON a.id_usuario = u.id_usuario
INNER JOIN motorista m ON a.id_motorista = m.id_motorista;

-- horarios (id_ponto)
SELECT h.id_horario, h.passagem_horarios, p.nome_pontos
FROM horarios h
INNER JOIN pontos p ON h.id_ponto = p.id_pontos;

-- 3. DROP TABLES na ordem correta (respeitando dependências)
DROP TABLE IF EXISTS localizacao;
DROP TABLE IF EXISTS rota_onibus;
DROP TABLE IF EXISTS manutencao;
DROP TABLE IF EXISTS avaliacao;
DROP TABLE IF EXISTS horarios;
DROP TABLE IF EXISTS rotas;
DROP TABLE IF EXISTS pontos;
DROP TABLE IF EXISTS linhas;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS motorista;
DROP TABLE IF EXISTS onibus;
DROP TABLE IF EXISTS tipo_usuarios;
