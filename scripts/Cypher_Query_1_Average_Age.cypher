MATCH (a:Candidate), (b:Candidate)
WHERE a.gender = "Female" AND a.elected = "Yes" AND b.gender = "Male" AND b.elected = "Yes"
RETURN avg(toInt(a.age)) AS Female_Average_Age, avg(toInt(b.age)) AS Male_Average_Age