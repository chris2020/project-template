MATCH (a:Candidate),(b:Party)
WHERE a.party = 'AAA-PBP' AND b.name = 'Anti-Austerity Alliance–People Before Profit'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r