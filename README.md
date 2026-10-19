# Da planilha ao modelo relacional

Artigo didático sobre 1FN, 2FN e 3FN, com um exemplo de pedidos de loja e script para PostgreSQL 18.

## Publicação

Página: https://matheussilvacsbrazcubas.github.io/da-planilha-ao-modelo-relacional/
Repositório: https://github.com/matheussilvacsbrazcubas/da-planilha-ao-modelo-relacional

A professora aprovou o recorte e o grupo confirmou a autorização dos cinco autores para publicar seus cartões. Publicado em 19 de outubro de 2026.

## Estrutura

- `index.html` — artigo completo, exemplos e índice navegável.
- `css/style.css` — layout responsivo.
- `images/` — diagrama do grupo e retratos autorizados para esta página.
- `sql/normalizacao_pedidos.sql` — estrutura em 3FN, dados fictícios e consulta de relatório.
- `OBSERVACOES.md` — referências analisadas, decisões e limites.

## Executar localmente

Abra `index.html` no navegador ou sirva esta pasta com um servidor estático. Não há dependências externas nem backend.

Para executar o SQL em um banco de desenvolvimento limpo, use PostgreSQL 18:

```sh
psql -v ON_ERROR_STOP=1 -f sql/normalizacao_pedidos.sql
```

O script cria o esquema `artigo_normalizacao`, usa apenas dados fictícios e não remove schemas ou tabelas existentes.

## Licenças

- Texto e diagrama original: [CC BY 4.0](LICENSE-CONTENT.md).
- Código HTML, CSS e SQL: [MIT](LICENSE-CODE).
- Os retratos não estão incluídos nessas licenças; sua reutilização depende de autorização dos titulares.

## Referências

- E. F. Codd, [A Relational Model of Data for Large Shared Data Banks (1970)](https://research.ibm.com/publications/a-relational-model-of-data-for-large-shared-data-banks).
- E. F. Codd, [Further Normalization of the Data Base Relational Model (1971)](https://www.sigmod.org/publications/dblp/db/labs/ibm/RJ909.html).
- [PostgreSQL 18 — Constraints](https://www.postgresql.org/docs/18/ddl-constraints.html).
- Alura, [Normalização: o que é, para que serve e como usá-la](https://www.alura.com.br/artigos/normalizacao), observada como referência didática.

## Próximos passos do grupo

- Cada integrante registra um commit próprio no repositório, conforme o enunciado.
- Conferir a página em outro dispositivo e em celular, testar os links e executar o SQL do zero em uma base limpa.
- Apresentar o artigo em cinco minutos com a participação de todos e manter a página publicada por três semanas.
