MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Direct Democracy Ireland' AND b.name = 'Direct Democracy Ireland'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r