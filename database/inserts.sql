-- Arquivo: inserts.sql
-- Inserts para popular as tabelas do sistema de transporte

-- 1. tipo_usuarios
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Administrador');
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Motorista');
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Usuário');
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Fiscal');
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Supervisor');
INSERT INTO tipo_usuarios (nome_tipo_usuario) VALUES ('Manutenção');

-- 2. usuario
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (1, 'João Silva', 'joao@admin.com', 'senha123', '11999990001');
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (2, 'Carlos Souza', 'carlos@motorista.com', 'senha123', '11999990002');
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (2, 'Ana Paula', 'ana@motorista.com', 'senha123', '11999990003');
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (3, 'Maria Oliveira', 'maria@usuario.com', 'senha123', '11999990004');
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (3, 'Pedro Santos', 'pedro@usuario.com', 'senha123', '11999990005');
INSERT INTO usuario (id_tipo_usuario, nome_usuario, email_usuario, senha_usuario, telefone_usuario) VALUES (4, 'Lucas Lima', 'lucas@fiscal.com', 'senha123', '11999990006');

-- 3. motorista (id_motorista = id_usuario dos motoristas)
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (2, 12345678901, 98765432101, 'foto_carlos.jpg');
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (3, 22345678901, 88765432101, 'foto_ana.jpg');
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (7, 32345678901, 78765432101, 'foto_joao.jpg');
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (8, 42345678901, 68765432101, 'foto_mario.jpg');
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (9, 52345678901, 58765432101, 'foto_ricardo.jpg');
INSERT INTO motorista (id_motorista, cpf_motorista, cnh_motorista, foto_motorista) VALUES (10, 62345678901, 48765432101, 'foto_fernando.jpg');

-- 4. onibus
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('ABC1D23', 'Marcopolo', 0, 2018);
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('DEF4G56', 'Caio', 1, 2020);
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('HIJ7K89', 'Mercedes', 0, 2017);
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('LMN0P12', 'Volvo', 3, 2022);
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('QRS3T45', 'Scania', 1, 2019);
INSERT INTO onibus (placa_onibus, modelo_onibus, tipo_combustivel_onibus, ano_onibus) VALUES ('UVW6X78', 'Volksbus', 0, 2016);

-- 5. manutencao
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (1, 'Troca de óleo', '2025-10-01', '2025-10-02', 2);
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (2, 'Reparo no freio', '2025-10-03', NULL, 1);
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (3, 'Pintura', '2025-09-20', '2025-09-22', 2);
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (4, 'Troca de pneus', '2025-10-05', NULL, 1);
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (5, 'Revisão elétrica', '2025-09-15', '2025-09-16', 2);
INSERT INTO manutencao (id_onibus, descricao_manutencao, data_inicio_manutencao, data_fim_manutencao, status_manutencao) VALUES (6, 'Limpeza interna', '2025-10-07', '2025-10-07', 2);

-- 6. linhas
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Centro-Bairro', 'Linha do centro ao bairro principal');
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Circular', 'Linha circular da cidade');
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Universidade', 'Linha para a universidade local');
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Shopping', 'Linha para o shopping');
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Rodoviária', 'Linha para a rodoviária');
INSERT INTO linhas (nome_linhas, descricao_linha) VALUES ('Industrial', 'Linha para o distrito industrial');

-- 7. pontos
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Terminal Central', -23.550520, -46.633308);
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Praça da Sé', -23.550370, -46.634220);
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Universidade', -23.561000, -46.655000);
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Shopping Center', -23.565000, -46.651000);
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Rodoviária', -23.520000, -46.640000);
INSERT INTO pontos (nome_pontos, latitude_pontos, longitude_pontos) VALUES ('Distrito Industrial', -23.570000, -46.660000);

-- 8. rotas
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (1, 1, 1);
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (2, 1, 2);
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (3, 3, 1);
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (4, 4, 1);
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (5, 5, 1);
INSERT INTO rotas (id_ponto, id_linha, ordem_sequencia_rotas) VALUES (6, 6, 1);

-- 9. rota_onibus
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (2, 1, 1, '2025-10-10');
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (3, 2, 2, '2025-10-10');
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (7, 3, 3, '2025-10-10');
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (8, 4, 4, '2025-10-10');
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (9, 5, 5, '2025-10-10');
INSERT INTO rota_onibus (id_motorista, id_onibus, id_rota, data_ocorrencia_rota_onibus) VALUES (10, 6, 6, '2025-10-10');

-- 10. localizacao
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (1, -23.550520, -46.633308, '2025-10-10 08:00:00');
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (2, -23.550370, -46.634220, '2025-10-10 08:10:00');
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (3, -23.561000, -46.655000, '2025-10-10 08:20:00');
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (4, -23.565000, -46.651000, '2025-10-10 08:30:00');
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (5, -23.520000, -46.640000, '2025-10-10 08:40:00');
INSERT INTO localizacao (id_rota_onibus, latitude_localizacao, longitude_localizacao, data_hora_localizacao) VALUES (6, -23.570000, -46.660000, '2025-10-10 08:50:00');

-- 11. avaliacao
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (4, 2, 5, 'Ótimo motorista!', '2025-10-10 09:00:00');
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (5, 3, 4, 'Motorista atenciosa.', '2025-10-10 09:10:00');
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (4, 7, 5, 'Viagem tranquila.', '2025-10-10 09:20:00');
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (5, 8, 3, 'Poderia ser mais pontual.', '2025-10-10 09:30:00');
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (4, 9, 4, 'Ônibus limpo.', '2025-10-10 09:40:00');
INSERT INTO avaliacao (id_usuario, id_motorista, nota_avaliacao, comentario_avaliacao, data_avaliacao) VALUES (5, 10, 5, 'Excelente direção.', '2025-10-10 09:50:00');

-- 12. horarios
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (1, '06:00:00');
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (2, '06:15:00');
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (3, '06:30:00');
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (4, '06:45:00');
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (5, '07:00:00');
INSERT INTO horarios (id_ponto, passagem_horarios) VALUES (6, '07:15:00');
