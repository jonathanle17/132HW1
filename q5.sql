SELECT DISTINCT b1.lno as loanNo
FROM borrower b1
JOIN borrower b2 ON b1.lno = b2.lno
WHERE b1.cname < b2.cname