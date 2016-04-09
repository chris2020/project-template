MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Fine Gael' AND b.name = 'Fine Gael'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r