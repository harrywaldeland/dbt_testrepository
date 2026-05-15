select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    {{ cents_to_dollars("AMOUNT")}} as payment_amount, -- kaller makro
    created as payment_created,
    _batched_at
from {{ source("stripe", "payment") }}