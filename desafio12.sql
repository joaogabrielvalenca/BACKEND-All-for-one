SELECT DATE_FORMAT(submitted_date, '%Y-%m-%dT%H:%i:%s.000Z') AS submitted_date
FROM purchase_orders
WHERE DATE(submitted_date) = '2006-04-26';
