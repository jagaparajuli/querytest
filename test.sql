SELECT 
 A.*,
 CASE 
 WHEN ZeroIfNull(total_paid) < 25000 THEN 'A: < 25 K GROUP' /*double dollar signs as $$ indicating parameter in engine being used*/ 
WHEN total_paid BETWEEN 25000 AND 50000 THEN 'B:25-49 K GROUP' 
WHEN total_paid BETWEEN 50000 AND 100000 THEN 'C:50-99 K GROUP' 
WHEN total_paid > 100000 THEN 'D: >100 K GROUP' 
END AS HCC_12MTHS, 
CASE 
 WHEN ZeroIfNull( total_paid_180day) < 25000 THEN 'A: < 25 K GROUP' /*double dollar signs as $$ indicating parameter in engine being used*/ 
WHEN total_paid_180day BETWEEN 25000 AND 50000 THEN 'B:25-49 K GROUP' 
WHEN total_paid_180day BETWEEN 50000 AND 100000 THEN 'C:50-99 K GROUP' 
WHEN total_paid_180day > 100000 THEN 'D: >100 K GROUP' 
END AS HCC_6MTHS
test it 
