with dw_faturamento_ano as (
SELECT date_part('year',purchased_at) as "Ano"
     ,sum(ap.price) as "Faturamento"
   FROM public.airbyte_purchases pur INNER JOIN airbyte_products ap
        ON pur.product_id = ap.id
    GROUP BY 1
    ORDER BY 1 DESC
)

SELECT * FROM dw_faturamento_ano