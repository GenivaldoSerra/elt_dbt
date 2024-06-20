with source as (
    SELECT
        date,
        symbol,
        action,
        quantity
    FROM
        {{ source ('dbvendas_1u5c', 'movimentacao_commodities') }}
),

renamed as (
    SELECT
        cast(date as date) as data,
        symbol as simbolo,
        action as acao,
        quantity as quantidade
    FROM
        source
)

SELECT * FROM renamed