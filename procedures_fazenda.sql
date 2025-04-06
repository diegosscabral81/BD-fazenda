DELIMITER $$

CREATE PROCEDURE Inserir_Fazendas (
    p_nome VARCHAR(100), p_localizacao VARCHAR(255), p_tamanho_ha DECIMAL(10,2), p_proprietario VARCHAR(100)
)
BEGIN
    INSERT INTO Fazendas (nome, localizacao, tamanho_ha, proprietario)
    VALUES (p_nome, p_localizacao, p_tamanho_ha, p_proprietario);
END;$$

CREATE PROCEDURE Alterar_Fazendas (
    p_id INT, p_nome VARCHAR(100), p_localizacao VARCHAR(255), p_tamanho_ha DECIMAL(10,2), p_proprietario VARCHAR(100)
)
BEGIN
    UPDATE Fazendas
    SET nome = p_nome, localizacao = p_localizacao, tamanho_ha = p_tamanho_ha, proprietario = p_proprietario
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Fazendas (
    IN p_id INT
)
BEGIN
    DELETE FROM Fazendas WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Funcionarios (
    p_nome VARCHAR(100), p_cargo VARCHAR(50), p_salario DECIMAL(10,2), p_data_admissao DATE, p_id_fazenda INT
)
BEGIN
    INSERT INTO Funcionarios (nome, cargo, salario, data_admissao, id_fazenda)
    VALUES (p_nome, p_cargo, p_salario, p_data_admissao, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Funcionarios (
    p_id INT, p_nome VARCHAR(100), p_cargo VARCHAR(50), p_salario DECIMAL(10,2), p_data_admissao DATE, p_id_fazenda INT
)
BEGIN
    UPDATE Funcionarios
    SET nome = p_nome, cargo = p_cargo, salario = p_salario, data_admissao = p_data_admissao, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Funcionarios (
    IN p_id INT
)
BEGIN
    DELETE FROM Funcionarios WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Animais (
    p_especie VARCHAR(50), p_raca VARCHAR(50), p_quantidade INT, p_id_fazenda INT
)
BEGIN
    INSERT INTO Animais (especie, raca, quantidade, id_fazenda)
    VALUES (p_especie, p_raca, p_quantidade, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Animais (
    p_id INT, p_especie VARCHAR(50), p_raca VARCHAR(50), p_quantidade INT, p_id_fazenda INT
)
BEGIN
    UPDATE Animais
    SET especie = p_especie, raca = p_raca, quantidade = p_quantidade, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Animais (
    IN p_id INT
)
BEGIN
    DELETE FROM Animais WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Plantacoes (
    p_cultura VARCHAR(100), p_area_plantada_ha DECIMAL(10,2), p_data_plantio DATE, p_data_colheita DATE, p_id_fazenda INT
)
BEGIN
    INSERT INTO Plantacoes (cultura, area_plantada_ha, data_plantio, data_colheita, id_fazenda)
    VALUES (p_cultura, p_area_plantada_ha, p_data_plantio, p_data_colheita, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Plantacoes (
    p_id INT, p_cultura VARCHAR(100), p_area_plantada_ha DECIMAL(10,2), p_data_plantio DATE, p_data_colheita DATE, p_id_fazenda INT
)
BEGIN
    UPDATE Plantacoes
    SET cultura = p_cultura, area_plantada_ha = p_area_plantada_ha, data_plantio = p_data_plantio, data_colheita = p_data_colheita, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Plantacoes (
    IN p_id INT
)
BEGIN
    DELETE FROM Plantacoes WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Maquinarios (
    p_nome VARCHAR(100), p_tipo VARCHAR(50), p_ano_compra INT, p_estado VARCHAR(50), p_id_fazenda INT
)
BEGIN
    INSERT INTO Maquinarios (nome, tipo, ano_compra, estado, id_fazenda)
    VALUES (p_nome, p_tipo, p_ano_compra, p_estado, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Maquinarios (
    p_id INT, p_nome VARCHAR(100), p_tipo VARCHAR(50), p_ano_compra INT, p_estado VARCHAR(50), p_id_fazenda INT
)
BEGIN
    UPDATE Maquinarios
    SET nome = p_nome, tipo = p_tipo, ano_compra = p_ano_compra, estado = p_estado, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Maquinarios (
    IN p_id INT
)
BEGIN
    DELETE FROM Maquinarios WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Estoque (
    p_item VARCHAR(100), p_tipo VARCHAR(50), p_quantidade INT, p_unidade VARCHAR(20), p_data_validade DATE, p_id_fazenda INT
)
BEGIN
    INSERT INTO Estoque (item, tipo, quantidade, unidade, data_validade, id_fazenda)
    VALUES (p_item, p_tipo, p_quantidade, p_unidade, p_data_validade, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Estoque (
    p_id INT, p_item VARCHAR(100), p_tipo VARCHAR(50), p_quantidade INT, p_unidade VARCHAR(20), p_data_validade DATE, p_id_fazenda INT
)
BEGIN
    UPDATE Estoque
    SET item = p_item, tipo = p_tipo, quantidade = p_quantidade, unidade = p_unidade, data_validade = p_data_validade, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Estoque (
    IN p_id INT
)
BEGIN
    DELETE FROM Estoque WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Vendas (
    p_produto VARCHAR(100), p_quantidade INT, p_preco_unitario DECIMAL(10,2), p_data_venda DATE, p_cliente VARCHAR(100), p_id_fazenda INT
)
BEGIN
    INSERT INTO Vendas (produto, quantidade, preco_unitario, data_venda, cliente, id_fazenda)
    VALUES (p_produto, p_quantidade, p_preco_unitario, p_data_venda, p_cliente, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Vendas (
    p_id INT, p_produto VARCHAR(100), p_quantidade INT, p_preco_unitario DECIMAL(10,2), p_data_venda DATE, p_cliente VARCHAR(100), p_id_fazenda INT
)
BEGIN
    UPDATE Vendas
    SET produto = p_produto, quantidade = p_quantidade, preco_unitario = p_preco_unitario, data_venda = p_data_venda, cliente = p_cliente, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Vendas (
    IN p_id INT
)
BEGIN
    DELETE FROM Vendas WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Compras (
    p_item VARCHAR(100), p_fornecedor VARCHAR(100), p_quantidade INT, p_preco_total DECIMAL(10,2), p_data_compra DATE, p_id_fazenda INT
)
BEGIN
    INSERT INTO Compras (item, fornecedor, quantidade, preco_total, data_compra, id_fazenda)
    VALUES (p_item, p_fornecedor, p_quantidade, p_preco_total, p_data_compra, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Compras (
    p_id INT, p_item VARCHAR(100), p_fornecedor VARCHAR(100), p_quantidade INT, p_preco_total DECIMAL(10,2), p_data_compra DATE, p_id_fazenda INT
)
BEGIN
    UPDATE Compras
    SET item = p_item, fornecedor = p_fornecedor, quantidade = p_quantidade, preco_total = p_preco_total, data_compra = p_data_compra, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Compras (
    IN p_id INT
)
BEGIN
    DELETE FROM Compras WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Manutencoes (
    p_id_maquinario INT, p_tipo_manutencao VARCHAR(100), p_data_manutencao DATE, p_custo DECIMAL(10,2), p_observacoes TEXT
)
BEGIN
    INSERT INTO Manutencoes (id_maquinario, tipo_manutencao, data_manutencao, custo, observacoes)
    VALUES (p_id_maquinario, p_tipo_manutencao, p_data_manutencao, p_custo, p_observacoes);
END;$$

CREATE PROCEDURE Alterar_Manutencoes (
    p_id INT, p_id_maquinario INT, p_tipo_manutencao VARCHAR(100), p_data_manutencao DATE, p_custo DECIMAL(10,2), p_observacoes TEXT
)
BEGIN
    UPDATE Manutencoes
    SET id_maquinario = p_id_maquinario, tipo_manutencao = p_tipo_manutencao, data_manutencao = p_data_manutencao, custo = p_custo, observacoes = p_observacoes
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Manutencoes (
    IN p_id INT
)
BEGIN
    DELETE FROM Manutencoes WHERE id = p_id;
END;$$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE Inserir_Producao_Leite (
    p_data DATE, p_quantidade_litros DECIMAL(10,2), p_id_fazenda INT
)
BEGIN
    INSERT INTO Producao_Leite (data, quantidade_litros, id_fazenda)
    VALUES (p_data, p_quantidade_litros, p_id_fazenda);
END;$$

CREATE PROCEDURE Alterar_Producao_Leite (
    p_id INT, p_data DATE, p_quantidade_litros DECIMAL(10,2), p_id_fazenda INT
)
BEGIN
    UPDATE Producao_Leite
    SET data = p_data, quantidade_litros = p_quantidade_litros, id_fazenda = p_id_fazenda
    WHERE id = p_id;
END;$$

CREATE PROCEDURE Excluir_Producao_Leite (
    IN p_id INT
)
BEGIN
    DELETE FROM Producao_Leite WHERE id = p_id;
END;$$
DELIMITER ;
