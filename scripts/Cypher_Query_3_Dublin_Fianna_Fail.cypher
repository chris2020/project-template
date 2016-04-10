MATCH  (dublin:Candidate)-[r:Belongs_to]->(p:Party)
WHERE  (dublin.constituency CONTAINS "Dublin" OR dublin.constituency STARTS WITH "Dun") AND dublin.elected = "Yes" AND p.name = "Fianna Fail"
RETURN  dublin.name AS Name
ORDER BY dublin.name;