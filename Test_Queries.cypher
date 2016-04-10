##Elected Average age of Men and Women

MATCH (a:Candidate), (b:Candidate)
WHERE a.gender = "Female" AND a.elected = "Yes" AND b.gender = "Male" AND b.elected = "Yes"
RETURN avg(toInt(a.age)) AS Female_Average_Age, avg(toInt(b.age)) AS Male_Average_Age



##Not Elected Average age of Men and Women

MATCH (a:Candidate), (b:Candidate)
WHERE a.gender = "Female" AND a.elected = "No" AND b.gender = "Male" AND b.elected = "No"
RETURN avg(toInt(a.age)), avg(toInt(b.age))


MATCH (a:Candidate)
WHERE a.elected = "Yes" AND toInt(a.age) >=20 AND toInt(a.age) <= 29
RETURN count(a)


## Dublin Fianna Fail Elected Candidates

MATCH  (dublin:Candidate)-[r:Belongs_to]->(p:Party)
WHERE  (dublin.constituency CONTAINS "Dublin" OR dublin.constituency STARTS WITH "Dun") AND dublin.elected = "Yes" AND p.name = "Fianna Fail"
RETURN  dublin.name AS Name
ORDER BY dublin.name




// Dublin VS Rest of Ireland
// Find out the top parties of both


a: gets all dublin constituencies


//     Dublin            ROI
MATCH  (dublin:Constituency),(roi:Constituency),(dubCan:Candidate)

WHERE   NOT (roi.name CONTAINS "Dublin" OR roi.name STARTS WITH "Dun") AND
	   (dublin.name CONTAINS "Dublin" OR dublin.name STARTS WITH "Dun")
	   
RETURN count( toInt(dublin.seats)) AS seats


// Finds the people from Dublin who were elected and are part of Fianna Fail, lists by name in alphabetical order

MATCH  (dublin:Candidate)-[r:Belongs_to]->(p:Party)
WHERE  (dublin.constituency CONTAINS "Dublin" OR dublin.constituency STARTS WITH "Dun") AND dublin.elected = "Yes" AND p.name = "Fianna Fail"
RETURN  dublin.name AS Name
ORDER BY dublin.name


MATCH (Candidate { constituency:'Carlow-Kilkenny' })-[:Belongs_to]->(p:Party)
WHERE p.name = "Fianna Fail"
RETURN Candidate