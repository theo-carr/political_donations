SELECT occupation,SUM(transaction_amt) as total_donated 
FROM `bigquery-public-data.fec.individuals_2016`
WHERE transaction_amt IS NOT NULL
GROUP BY occupation
ORDER BY total_donated DESC
LIMIT 300

--top 