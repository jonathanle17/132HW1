SELECT loan.no as loanNo
from customer
JOIN borrower ON customer.name = borrower.cname
JOIN loan ON borrower.lno = loan.no
WHERE customer.name = 'John Smith'
AND loan.minCredit = 
(
SELECT MAX(minCredit)
FROM loan
JOIN borrower ON loan.no = borrower.lno
WHERE borrower.cname = 'John Smith'
)