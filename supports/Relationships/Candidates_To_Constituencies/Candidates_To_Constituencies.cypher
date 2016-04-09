MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Carlow-Kilkenny' AND b.name = 'Carlow-Kilkenny'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Carlow-Kilkenny' AND b.name = 'Carlow-Kilkenny'
CREATE (a)-[r:Represents]->(b)
RETURN r