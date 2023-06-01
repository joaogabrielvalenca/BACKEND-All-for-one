SELECT notes
FROM purchase_orders
WHERE notes IS NOT NULL
  AND notes LIKE 'Purchase generated based on Order #%'
  AND CAST(SUBSTRING(notes, LENGTH('Purchase generated based on Order #') + 1) AS UNSIGNED) BETWEEN 30 AND 39
ORDER BY CAST(SUBSTRING(notes, LENGTH('Purchase generated based on Order #') + 1) AS UNSIGNED);
