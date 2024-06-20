with source as (
    SELECT
        "Date",
        "Close",
        simbolo
    FROM
        {{ source ('dbvendas_1u5c', 'commodities') }}
),

-- renamed

renamed as (
    SELECT
        cast("Date" as date) as data,
        "Close" as valor_fechamento,
        simbolo
    FROM
        source
)

SELECT * FROM renamed