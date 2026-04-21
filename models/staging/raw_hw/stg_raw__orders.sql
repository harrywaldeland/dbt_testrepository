select
        try_to_number(id) as order_id,
        try_to_number(user_id) as customer_id,
        order_date,
        status,
        try_to_number(order_total) as order_total
    from {{ source('raw_hw', 'orders') }}