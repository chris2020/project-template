MATCH (a:Candidate),(b:Party)
WHERE a.party = 'Sinn Fein' AND b.name = 'Sinn Fein'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r