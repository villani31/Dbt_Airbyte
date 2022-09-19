with dw_faturamento_model as (
    SELECT pro.model as "Modelo"
        ,sum(pro.price) as "Faturamento"
    from public.airbyte_purchases pur INNER JOIN airbyte_products pro
    on pur.product_id = pro.id
    GROUP BY pro.model
    ORDER BY 2 DESC
)
SELECT * FROM dw_faturamento_model