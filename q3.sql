SELECT customer.name
FROM customer
JOIN borrower ON customer.name = borrower.cname
JOIN loan ON borrower.lno = loan.no
WHERE loan.type = 'jumbo mortgage'

INTERSECT

SELECT name
FROM customer
JOIN borrower ON customer.name = borrower.cname
JOIN loan ON borrower.lno = loan.no
WHERE loan.type = 'student'