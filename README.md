# Irish Constituencies Neo4j Database
###### Christy Madden, G00214065

## Introduction
This project involves creating a graph database with Neo4J and populating it with the Irish constituencies, the parties and the candidates that ran in each party.
The purpose of the project is to create 3 queries that finds specific information based on the data that is in the database.
The data for the database was found and inserted into the database soley by me, references to where the data was procured and where information on Neo4J queries was obtained can be found below under the references section.

Query information is stored in cypher files.

## Database
Number of nodes: 572
Candidtates: 551
Relationships: Belongs_to: 551, Represents: 551
Parties: 17
Constituencies: 40

The database is made up of nodes and relationships between nodes.
Each candiate, constituency and party is represented by a node. 
Each node has a label and properties.
If information was not available for a certain property then 'NA' will be returned 

```cypher

E.G CREATE (a:Party { name : 'Fine Gael', leader : 'Enda Kenny', founded : '1933', position : 'Centre-right' }),

In this example one node is created  'Party' is the label, information betweern the curly '{}' braces holds the properties, 'name' is the key of the property and 'Fine Gael' is the value returned by that key

All nodes use this format but the label and properties will differ depending on whether the node is a candiate, a party or a constituency.

The constituencies have properties of name, seats and population
The parties have properties of name, founded, position and leader
The candidates have properties of name, age, elected, gender, constituency and party.

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
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
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