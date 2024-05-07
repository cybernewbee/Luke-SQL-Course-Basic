-- prompt: find the average salary and number of job postings for each skill --
-- hint: combine job_postings, skill_dim, and skill_job_dim
SELECT 
	skills.skills AS skill_name, 
    	COUNT (job_postings.job_title) AS numbers_of_job_postings,  
    	AVG (job_postings.salary_year_avg) AS avg_salary_for_skills 
FROM 
	job_postings_fact AS job_postings
INNER JOIN
	skills_job_dim AS skills_to_job ON job_postings.job_id = skills_to_job.job_id
INNER JOIN
