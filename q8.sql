SELECT COALESCE(SUM(amount), 0) AS borrowedAmount
FROM customer
LEFT JOIN borrower ON customer.name = borrower.cname
LEFT JOIN loan ON borrower.lno = loan.no
WHERE customer.name = 'John Smith';
