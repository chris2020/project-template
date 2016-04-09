MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Independents 4 Change' AND b.name = 'Independents 4 Change'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r