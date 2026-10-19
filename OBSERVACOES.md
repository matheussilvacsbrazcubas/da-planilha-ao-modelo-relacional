# Quadro de observação

## Referências analisadas

| Página | O que observamos | Como usamos sem copiar o formato |
| --- | --- | --- |
| [Alura — Normalização: o que é, para que serve e como usá-la](https://www.alura.com.br/artigos/normalizacao) | Abre com a motivação e nomeia anomalias antes de avançar para as formas normais. | Começamos com um problema de atualização em uma loja fictícia e apresentamos exemplos antes das definições. O texto usa uma estrutura própria, com pedido de loja e tabelas responsivas. |
| [Documentação do PostgreSQL 18 — Constraints](https://www.postgresql.org/docs/18/ddl-constraints.html) | Explica o comportamento de constraints com exemplos SQL concretos e seções independentes. | Indicamos a versão do SGBD, damos um script completo e comentamos as chaves e verificações usadas no modelo. A documentação é citada para o comportamento do SQL, não como fonte da teoria de normalização. |

## Decisões do grupo

1. Vamos usar uma loja fictícia e dados reservados para exemplos (`example.test`), porque assim demonstramos anomalias sem expor dados de pessoas reais.
2. Vamos explicar a chave composta antes da 2FN e guardar o preço vendido no item do pedido, porque ele representa o preço histórico daquela compra, que pode diferir do preço atual do catálogo.
3. Vamos separar fatos em `clientes`, `pedidos`, `produtos` e `itens_pedido`, porque cada tabela passa a manter um tipo de fato; usaremos chaves estrangeiras e constraints executáveis em PostgreSQL 18 para proteger os relacionamentos e valores.

## O que decidimos não fazer

Não vamos recomendar “sempre normalize até a 3FN” sem considerar as regras, o padrão de consultas e o custo de manter dados derivados. Também não vamos incluir fotos, nomes ou perfis de colegas sem consentimento específico.

## Situação

Este quadro documenta uma primeira proposta. O professor ainda precisa aprovar o recorte; os dados dos autores foram preenchidos com as informações fornecidas pelo grupo; a aprovação da professora, os consentimentos específicos e a licença ainda precisam ser confirmados antes da publicação.
