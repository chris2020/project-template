MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Independent' AND b.name = 'Independent'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r