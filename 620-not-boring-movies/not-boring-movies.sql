SELECT 
  id, 
    movie, 
    description, 
    rating
FROM (
    SELECT 
        id, 
        movie, 
        description, 
        rating
         FROM cinema
    WHERE id % 2 <> 0  and description<>'boring'
        

) AS subquery
order by rating DESC

