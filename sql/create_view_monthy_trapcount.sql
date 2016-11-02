create view monthly_trapcount as 
SELECT year, month, taxa, count(surveys.record_id) as trapcount 
FROM
( surveys inner join species on surveys.species_id=species.species_id ) 
   INNER JOIN plots on 
      surveys.plot = plots.plot_id
WHERE species.taxa = 'Rodent'
 GROUP BY year, month 
ORDER BY trapcount DESC ;