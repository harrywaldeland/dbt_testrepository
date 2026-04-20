select
        id as order_id,
        customer as customer_id,
        ordered_at as order_date,
        order_total
    from {{ source('raw', 'raw_orders') }}