MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Labour' AND b.name = 'Labour Party'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r