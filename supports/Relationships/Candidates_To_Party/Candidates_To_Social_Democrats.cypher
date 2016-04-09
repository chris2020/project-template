MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Social Democrats' AND b.name = 'Social Democrats'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r