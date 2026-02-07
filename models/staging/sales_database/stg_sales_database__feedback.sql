select
 CONCAT(feedback_id, '_', order_id) AS feedback_id,
 order_id,
 feedback_score as fs,
 DATETIME(feedback_form_sent_date, "Europe/Paris") AS feedback_form_sent_at
from {{ source('sales_database', 'feedback') }}