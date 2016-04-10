# Irish Constituencies Neo4j Database
###### Christy Madden, G00214065

## Introduction
This project involves creating a graph database with Neo4J and populating it with the Irish constituencies, the parties and the candidates that ran in each party.
The purpose of the project is to create 3 queries that finds specific information based on the data that is in the database.
The data for the database was found and inserted into the database soley by me, references to where the data was procured and where information on Neo4J queries was obtained can be found below under the references section.


## Database Details
* Number of nodes: 608
* Candidtates: 551
* Parties: 17
* Constituencies: 40
* Relationships: 
	* Belongs_to: 551
	* Represents: 551

The database is made up of nodes and relationships between nodes.
Each candiate, constituency and party is represented by a node. 
Each node has a label and properties.
If information was not available for a certain property then 'NA' will be returned 

##Queries used to build database

####Example of node

```cypher

CREATE (a:Party { name : 'Fine Gael', leader : 'Enda Kenny', founded : '1933', position : 'Centre-right' }),

```

In this example one node is created,  'Party' is the label, information betweern the curly '{}' braces holds the properties, 'name' is the key of the property and 'Fine Gael' is the value returned by that key
All nodes use this format but the label and properties differ depending on whether the node is a candiate, a party or a constituency.

* The constituencies have properties of name, seats and population
* The parties have properties of name, founded, position and leader
* The candidates have properties of name, age, elected, gender, constituency and party.

One query was used to insert parties into the database 
```cypher
E.G CREATE (a:Party { name : 'Fine Gael', leader : 'Enda Kenny', founded : '1933', position : 'Centre-right' }),
		   (b:Party { name : 'Labour Party', leader : 'Joan Burton', founded : '1912', position : 'Centre-left' }),


One query was used to insert constituencies into the database
```cypher
E.G CREATE (a:Constituency { name : 'Carlow-Kilkenny', population : '145,659', seats : '5' }),
		   (b:Constituency { name : 'Cavan Monaghan', population : '120,483', seats : '4' }),

One query was used to insert candidates into the database by constituency
```cypher
E.G This query was used to create a candiate of constituency Wicklow

	CREATE 	(c001:Candidate { name : 'Stephen Donnelly', age : '40', elected : 'Yes', gender : 'Male',   constituency : 'Wicklow', party : 'Social Democrats' }),

	A separate query was used to input candidates from Cork South-West
	
	CREATE (c001:Candidate { name : 'Rachel McCarthy', 	 age : '32', elected : 'No',   gender : 'Female', constituency : 'Cork South-West', party : 'Sinn Fein' }),

Explain how you created your database, and how information is represented in it.

## Queries
The queries are based on the average age of women and men who were elected, the details of women under 30 who were elected and the number of fianna fail candidates who were elected in the Dublin region

#### Average age of elected candidates
This query finds all the elected women and elected men in the database and finds the average age for each gender.
Age was stored as a string in the database so had to be converted into a number, this was done using the toInt() function.
Then the average was calculated using the avg() function
The results are given a title depending on the gender using the 'AS' keyword
```cypher
MATCH (a:Candidate), (b:Candidate)
WHERE  a.gender = "Female" AND a.elected = "Yes" AND b.gender = "Male" AND b.elected = "Yes"
RETURN avg(toInt(a.age)) AS Female_Average_Age, avg(toInt(b.age)) AS Male_Average_Age;
```

#### Elected women who were under 30 years of age
This query finds all the women who were elected and under the age of 30.
It retrieves extra details about them including constituency and party.
Age needed to be converted into a number which was done using the toInt() function
```cypher
MATCH  (a:Candidate)-[r:Represents]->(b:Constituency)
WHERE   a.gender = "Female" AND a.elected = "Yes" AND toInt(a.age) < 30
RETURN  a.name AS Name, a.age AS Age, b.name AS Constituency, a.party AS Party;
```

#### Fianna Fail candidates who were elected in the Dublin region
This query finds all the Fianna Fail candidates who were elected in the Dublin region 
This was done by finding which candidates were related to the Finna Fail party.
It only checks for them in the Dublin region which included Dun Laoghaire so searching for constituencies with just Dublin wasn't enough, an additional search was added for 'Dun'.
When all constituencies were found the query looked for the elected people and returns them by name with the heading 'Name' using 'AS' keyword
Finally the names are ordered in alphabetical order using the 'ORDER BY' statement 
```cypher
MATCH    (dublin:Candidate)-[r:Belongs_to]->(p:Party)
WHERE    (dublin.constituency CONTAINS "Dublin" OR dublin.constituency STARTS WITH "Dun") AND dublin.elected = "Yes" AND p.name = "Fianna Fail"
RETURN 	  dublin.name AS Name
ORDER BY  dublin.name;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland
3. http://www.thejournal.ie/election-2016/

##Extra Queries Used
MATCH (n:Candidate)
WHERE n.constituency = " Cavan-Monaghan"
SET   n.constituency = "Cavan-Monaghan"
RETURN n


MATCH (a:Candidate)
WHERE NOT (a)-[:Belongs_to]->()
return a