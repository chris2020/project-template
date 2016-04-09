MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Workers and Unemployed Action' AND b.name = 'Workers and Unemployed Action'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r