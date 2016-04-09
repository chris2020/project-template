MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Fis Nua' AND b.name = 'Fis Nua'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r