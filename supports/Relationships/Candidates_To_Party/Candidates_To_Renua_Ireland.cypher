MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Renua Ireland' AND b.name = 'Renua Ireland'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r