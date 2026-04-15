SELECT customer.name
FROM customer
join borrower on customer.name = borrower.cname
join loan on borrower.lno = loan.no
where loan.type = 'jumbo mortgage'

UNION 

SELECT name
FROM customer
WHERE credit >= 750
