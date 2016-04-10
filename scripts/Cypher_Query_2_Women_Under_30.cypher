MATCH (a:Candidate)-[r:Represents]->(b:Constituency)
WHERE  a.gender = "Female" AND a.elected = "Yes" AND toInt(a.age) < 30
RETURN a.name AS Name, a.age AS Age, b.name AS Constituency, a.party AS Party