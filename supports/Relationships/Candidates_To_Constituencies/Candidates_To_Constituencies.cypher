MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Carlow-Kilkenny' AND b.name = 'Carlow-Kilkenny'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cavan-Monaghan' AND b.name = 'Cavan Monaghan'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Clare' AND b.name = 'Clare'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cork-East' AND b.name = 'Cork East'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cork North–Central' AND b.name = 'Cork North–Central'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cork North-West' AND b.name = 'Cork North-West'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cork South–Central' AND b.name = 'Cork South–Central'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Cork South–West' AND b.name = 'Cork South–West'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Donegal' AND b.name = 'Donegal'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Dublin Bay North' AND b.name = 'Dublin Bay North'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Dublin Bay South' AND b.name = 'Dublin Bay South'
CREATE (a)-[r:Represents]->(b)
RETURN r

MATCH (a:Candidate),(b:Constituency)
WHERE a.constituency = 'Dublin Central' AND b.name = 'Dublin_Central'
CREATE (a)-[r:Represents]->(b)
RETURN r







































