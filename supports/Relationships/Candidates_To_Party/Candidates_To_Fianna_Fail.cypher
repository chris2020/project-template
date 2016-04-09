MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Fianna Fail' AND b.name = 'Fianna Fail'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r