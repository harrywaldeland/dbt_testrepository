select
        id as order_id,
        customer as customer_id,
        ordered_at,
        order_total
    from {{ source('raw', 'raw_orders') }}