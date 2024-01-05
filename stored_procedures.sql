-- Procedimentos Armazenados para a tabela 'pais'

-- Inserir (Create) um país
DELIMITER //
CREATE PROCEDURE InsertPais(IN p_id INT, IN p_nome VARCHAR(45))
BEGIN
    INSERT INTO senai_ios.pais (id, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Obter (Read) todos os países
CREATE PROCEDURE GetAllPaises()
BEGIN
    SELECT * FROM senai_ios.pais;
END;

-- Atualizar (Update) um país
DELIMITER //
CREATE PROCEDURE UpdatePais(IN p_id INT, IN p_nome VARCHAR(45))
BEGIN
    UPDATE senai_ios.pais SET nome = p_nome WHERE id = p_id;
END //
DELIMITER ;

-- Excluir (Delete) um país
DELIMITER //
CREATE PROCEDURE DeletePais(IN p_id INT)
BEGIN
    DELETE FROM senai_ios.pais WHERE id = p_id;
END //
DELIMITER ;


-- Procedimentos Armazenados para a tabela 'diretor'

-- Inserir (Create) um diretor
DELIMITER //
CREATE PROCEDURE InsertDiretor(IN p_id INT, IN p_nome VARCHAR(45))
BEGIN
    INSERT INTO senai_ios.diretor (id, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Obter (Read) todos os diretores
CREATE PROCEDURE GetAllDiretores()
BEGIN
    SELECT * FROM senai_ios.diretor;
END;

-- Atualizar (Update) um diretor
DELIMITER //
CREATE PROCEDURE UpdateDiretor(IN p_id INT, IN p_nome VARCHAR(45))
BEGIN
    UPDATE senai_ios.diretor SET nome = p_nome WHERE id = p_id;
END //
DELIMITER ;

-- Excluir (Delete) um diretor
DELIMITER //
CREATE PROCEDURE DeleteDiretor(IN p_id INT)
BEGIN
    DELETE FROM senai_ios.diretor WHERE id = p_id;
END //
DELIMITER ;


-- Procedimentos Armazenados para a tabela 'filme'

-- Inserir (Create) um filme
DELIMITER //
CREATE PROCEDURE InsertFilme(IN p_id INT, IN p_titulo VARCHAR(45), IN p_ano_de_lancamento SMALLINT, IN p_duracao INT, IN p_trailer TEXT, IN p_genero ENUM('Ação', 'Drama', 'Aventura', 'Suspense', 'Comédia', 'Ficção'), IN p_pais_id INT, IN p_diretor_id INT, IN p_imagem_id INT)
BEGIN
    INSERT INTO senai_ios.filme (id, titulo, ano_de_lancamento, duracao, trailer, genero, pais_id, diretor_id, imagem_id)
    VALUES (p_id, p_titulo, p_ano_de_lancamento, p_duracao, p_trailer, p_genero, p_pais_id, p_diretor_id, p_imagem_id);
END //
DELIMITER ;

-- Obter (Read) todos os filmes
CREATE PROCEDURE GetAllFilmes()
BEGIN
    SELECT * FROM senai_ios.filme;
END;

-- Atualizar (Update) um filme
DELIMITER //
CREATE PROCEDURE UpdateFilme(IN p_id INT, IN p_titulo VARCHAR(45), IN p_ano_de_lancamento SMALLINT, IN p_duracao INT, IN p_trailer TEXT, IN p_genero ENUM('Ação', 'Drama', 'Aventura', 'Suspense', 'Comédia', 'Ficção'), IN p_pais_id INT, IN p_diretor_id INT, IN p_imagem_id INT)
BEGIN
    UPDATE senai_ios.filme
    SET titulo = p_titulo, ano_de_lancamento = p_ano_de_lancamento, duracao = p_duracao, trailer = p_trailer, genero = p_genero, pais_id = p_pais_id, diretor_id = p_diretor_id, imagem_id = p_imagem_id
    WHERE id = p_id;
END //
DELIMITER ;

-- Excluir (Delete) um filme
DELIMITER //
CREATE PROCEDURE DeleteFilme(IN p_id INT)
BEGIN
    DELETE FROM senai_ios.filme WHERE id = p_id;
END //
DELIMITER ;


-- Procedimentos Armazenados para a tabela 'imagem'

-- Inserir (Create) uma imagem
DELIMITER //
CREATE PROCEDURE InsertImagem(IN p_id INT, IN p_filme_id INT, IN p_imagem_blob BLOB)
BEGIN
    INSERT INTO senai_ios.imagem (id, filme_id, imagem_blob) VALUES (p_id, p_filme_id, p_imagem_blob);
END //
DELIMITER ;

-- Obter (Read) todas as imagens
CREATE PROCEDURE GetAllImagens()
BEGIN
    SELECT * FROM senai_ios.imagem;
END;

-- Atualizar (Update) uma imagem
DELIMITER //
CREATE PROCEDURE UpdateImagem(IN p_id INT, IN p_filme_id INT, IN p_imagem_blob BLOB)
BEGIN
    UPDATE senai_ios.imagem SET filme_id = p_filme_id, imagem_blob = p_imagem_blob WHERE id = p_id;
END //
DELIMITER ;

-- Excluir (Delete) uma imagem
DELIMITER //
CREATE PROCEDURE DeleteImagem(IN p_id INT)
BEGIN
    DELETE FROM senai_ios.imagem WHERE id = p_id;
END //
DELIMITER ;


-- Procedimentos Armazenados para a tabela 'ator'

-- Inserir (Create) um ator
DELIMITER //
CREATE PROCEDURE InsertAtor(IN p_id INT, IN p_nome VARCHAR(45), IN p_idade SMALLINT, IN p_pais_id INT)
BEGIN
    INSERT INTO senai_ios.ator (id, nome, idade, pais_id) VALUES (p_id, p_nome, p_idade, p_pais_id);
END //
DELIMITER ;

-- Obter (Read) todos os atores
CREATE PROCEDURE GetAllAtores()
BEGIN
    SELECT * FROM senai_ios.ator;
END;

-- Atualizar (Update) um ator
DELIMITER //
CREATE PROCEDURE UpdateAtor(IN p_id INT, IN p_nome VARCHAR(45), IN p_idade SMALLINT, IN p_pais_id INT)
BEGIN
    UPDATE senai_ios.ator SET nome = p_nome, idade = p_idade, pais_id = p_pais_id WHERE id = p_id;
END //
DELIMITER ;

-- Excluir (Delete) um ator
DELIMITER //
CREATE PROCEDURE DeleteAtor(IN p_id INT)
BEGIN
    DELETE FROM senai_ios.ator WHERE id = p_id;
END //
DELIMITER ;


-- Procedimentos Armazenados para a tabela 'filme_has_ator'

-- Inserir (Create) uma relação filme-ator
DELIMITER //
CREATE PROCEDURE InsertFilmeHasAtor(IN p_filme_id INT, IN p_ator_id INT)
BEGIN
    INSERT INTO senai_ios.filme_has_ator (filme_id, ator_id) VALUES (p_filme_id, p_ator_id);
END //
DELIMITER ;

-- Obter (Read) todas as relações filme-ator
CREATE PROCEDURE GetAllFilmeHasAtores()
BEGIN
    SELECT * FROM senai_ios.filme_has_ator;
END;

-- Excluir (Delete) uma relação filme-ator
DELIMITER //
CREATE PROCEDURE DeleteFilmeHasAtor(IN p_filme_id INT, IN p_ator_id INT)
BEGIN
    DELETE FROM senai_ios.filme_has_ator WHERE filme_id = p_filme_id AND ator_id = p_ator_id;
END //
DELIMITER ;
