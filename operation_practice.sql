SELECT 
	project_id,
    sum(hours_rate * hours_spent) AS total_original_earnings,
    sum((hours_rate + 5) * hours_spent) AS projected_total_earnings, 
    sum(((hours_rate + 5) * hours_spent) - (hours_rate * hours_spent)) AS project_difference
FROM 
	invoices_fact
GROUP BY 
	project_id
