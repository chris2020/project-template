MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Green Party' AND b.name = 'Green Party'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r