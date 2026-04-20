select
        try_to_number(id) as order_id,
        customer as customer_id,
        ordered_at as order_date,
        order_total
    from {{ source('raw_hw', 'orders') }}