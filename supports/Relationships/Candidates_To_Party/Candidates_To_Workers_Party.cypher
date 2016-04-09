MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Workers Party' AND b.name = 'Workers Party'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r