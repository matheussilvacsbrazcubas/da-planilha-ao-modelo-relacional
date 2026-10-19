# Da planilha ao modelo relacional

Artigo didático sobre primeira, segunda e terceira formas normais, com exemplo de pedidos de uma loja fictícia e script SQL para PostgreSQL 18.

## Situação da entrega

Esta é uma versão local revisada em 19 de outubro de 2026. O recorte é a decomposição de pedidos de uma loja fictícia em 1FN, 2FN e 3FN. Os cinco cartões de autoria estão preenchidos. A aprovação da professora e o consentimento específico dos cinco autores foram confirmados pelo grupo. Falta criar o repositório público e concluir o deploy. A licença escolhida é CC BY 4.0 para o texto e o diagrama originais e MIT para o código; as fotos ficam fora das licenças.

## Estrutura

- `index.html` — artigo completo, índice navegável, exemplos tabulares e metadados da publicação.
- `css/style.css` — layout responsivo e estilos de leitura.
- `images/decomposicao.svg` — diagrama vetorial próprio, com título e descrição acessível.
- `sql/normalizacao_pedidos.sql` — estrutura em 3FN, dados fictícios e consulta de relatório.
- `OBSERVACOES.md` — duas referências observadas, três decisões e uma coisa que o grupo não fará.

## Abrir localmente

Abra `index.html` diretamente no navegador ou sirva a pasta com um servidor estático. Não há dependências externas nem backend.

## Executar o SQL

SGBD: PostgreSQL 18. Em um banco de desenvolvimento limpo, execute:

```sh
psql -v ON_ERROR_STOP=1 -f sql/normalizacao_pedidos.sql
```

O script cria o esquema `artigo_normalizacao`, inclui apenas dados fictícios e exibe uma consulta de relatório. Ele não remove schemas nem tabelas existentes.

## Licenças

- Texto didático e diagrama original: [CC BY 4.0](LICENSE-CONTENT.md).
- Código HTML, CSS e SQL: [MIT](LICENSE-CODE).
- As fotografias dos autores não estão incluídas nessas licenças; foram fornecidas para uso neste artigo e não podem ser reutilizadas sem autorização dos titulares.

## Referências

- E. F. Codd, [A Relational Model of Data for Large Shared Data Banks (1970)](https://research.ibm.com/publications/a-relational-model-of-data-for-large-shared-data-banks).
- E. F. Codd, [Further Normalization of the Data Base Relational Model (1971)](https://www.sigmod.org/publications/dblp/db/labs/ibm/RJ909.html).
- [PostgreSQL 18 — Constraints](https://www.postgresql.org/docs/18/ddl-constraints.html).
- Alura, [Normalização: o que é, para que serve e como usá-la](https://www.alura.com.br/artigos/normalizacao), analisada como referência didática.

## Publicação

A URL pública e o link do repositório serão acrescentados após a publicação.

## Pendências para a entrega pública

- Confirmar com a professora o recorte de pedidos de uma loja em 1FN, 2FN e 3FN.
- Os cinco cartões de autoria foram preenchidos com os dados fornecidos pelo grupo. Confirmar que cada integrante autorizou especificamente a publicação de sua foto, mini-bio e perfis profissionais antes do deploy.
- Licenças definidas: CC BY 4.0 para o texto e diagrama originais; MIT para HTML, CSS e SQL. Registrar o crédito do diagrama criado pelo grupo; fotos dos autores têm reutilização reservada.
- Criar repositório público, inserir sua URL neste README e no rodapé da página, e garantir commits de todos os integrantes.
- Publicar a página (por exemplo, com GitHub Pages), abrir a URL em outro dispositivo e em um celular, conferir links e executar o SQL do zero em uma base de desenvolvimento limpa.
- Preparar a apresentação de 5 minutos com fala de todos os integrantes. Manter a URL disponível por três semanas conforme a orientação da atividade.
- Atualizar a data de revisão quando houver nova revisão.

Esta versão local ainda não foi publicada. Os dados e a foto de Eduardo foram fornecidos para completar este artigo; o grupo confirmou a autorização de publicação dos cinco integrantes.
