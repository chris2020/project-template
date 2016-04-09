MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Catholic Democrats' AND b.name = 'Catholic Democrats'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r