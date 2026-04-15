SELECT customer.name
FROM customer
JOIN borrower ON customer.name = borrower.cname
JOIN loan ON borrower.lno = loan.no
GROUP BY customer.name
HAVING SUM(loan.amount) >= 13000