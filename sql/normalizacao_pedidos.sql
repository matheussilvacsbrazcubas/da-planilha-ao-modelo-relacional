-- PostgreSQL 18. Demonstra o modelo final do artigo em um esquema isolado.
-- Execute em um banco de desenvolvimento limpo: psql -v ON_ERROR_STOP=1 -f sql/normalizacao_pedidos.sql
-- Os dados são fictícios e usam example.test, reservado para documentação e testes.

CREATE SCHEMA IF NOT EXISTS artigo_normalizacao;
SET search_path TO artigo_normalizacao;

CREATE TABLE IF NOT EXISTS clientes (
    cliente_id integer PRIMARY KEY,
    nome text NOT NULL,
    email text NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS pedidos (
    pedido_id integer PRIMARY KEY,
    data_pedido date NOT NULL,
    cliente_id integer NOT NULL REFERENCES clientes (cliente_id)
);

CREATE TABLE IF NOT EXISTS produtos (
    produto_id integer PRIMARY KEY,
    nome text NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS itens_pedido (
    pedido_id integer NOT NULL REFERENCES pedidos (pedido_id),
    produto_id integer NOT NULL REFERENCES produtos (produto_id),
    quantidade integer NOT NULL CHECK (quantidade > 0),
    preco_unitario_vendido numeric(10, 2) NOT NULL CHECK (preco_unitario_vendido >= 0),
    PRIMARY KEY (pedido_id, produto_id)
);

INSERT INTO clientes (cliente_id, nome, email) VALUES
    (41, 'Ana Lima', 'ana@example.test'),
    (52, 'Caio Reis', 'caio@example.test')
ON CONFLICT (cliente_id) DO NOTHING;

INSERT INTO pedidos (pedido_id, data_pedido, cliente_id) VALUES
    (501, DATE '2026-10-01', 41),
    (502, DATE '2026-10-03', 41),
    (503, DATE '2026-10-04', 52)
ON CONFLICT (pedido_id) DO NOTHING;

INSERT INTO produtos (produto_id, nome) VALUES
    (7, 'Café'),
    (9, 'Filtro')
ON CONFLICT (produto_id) DO NOTHING;

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario_vendido) VALUES
    (501, 7, 2, 18.90),
    (501, 9, 1, 12.00),
    (502, 7, 1, 18.90),
    (503, 9, 2, 11.50)
ON CONFLICT (pedido_id, produto_id) DO NOTHING;

-- A junção recompõe o relatório sem duplicar os dados de cliente ou catálogo.
SELECT p.pedido_id,
       p.data_pedido,
       c.nome AS cliente,
       pr.nome AS produto,
       i.quantidade,
       i.preco_unitario_vendido,
       i.quantidade * i.preco_unitario_vendido AS subtotal
FROM pedidos AS p
JOIN clientes AS c USING (cliente_id)
JOIN itens_pedido AS i USING (pedido_id)
JOIN produtos AS pr USING (produto_id)
ORDER BY p.pedido_id, pr.nome;
