SELECT loan.no as loanNo
FROM loan
where amount = (SELECT MAX(amount) FROM loan)