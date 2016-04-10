CREATE (c001:Candidate { name : 'Mary Lou McDonald',	       	    age : '46', elected : 'Yes', gender : 'Female',   constituency : 'Dublin Central', party : 'Sinn Fein' }),
	   (c002:Candidate { name : 'Mary Fitzpatrick',	       	    	age : '46', elected : 'No',  gender : 'Female',   constituency : 'Dublin Central', party : 'Fianna Fail' }),
	   (c003:Candidate { name : 'Paschal Donohoe',	       	    	age : '41', elected : 'Yes', gender : 'Male',     constituency : 'Dublin Central', party : 'Fine Gael' }),
	   (c004:Candidate { name : "Maureen O'Sullivan",	       	    age : '64', elected : 'Yes', gender : 'Female',   constituency : 'Dublin Central', party : 'Independent' }),
	   (c005:Candidate { name : 'Gary Gannon',	       	   		    age : '28', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Social Democrats' }),
	   (c006:Candidate { name : 'Christy Burke',	       	   		age : '68', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Independent' }),
	   (c007:Candidate { name : 'Joe Costello',	       	   			age : '70', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Labour' }),
	   (c008:Candidate { name : 'Cieran Perry',	       	   			age : '53', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Independent' }),
	   (c009:Candidate { name : "Diana O'Dwyer",	       	   		age : '37', elected : 'No',  gender : 'Female',   constituency : 'Dublin Central', party : 'AAA-PBP' }),
	   (c010:Candidate { name : 'Ian Noel Smyth',	       	   		age : '50', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Green Party' }),
	   (c011:Candidate { name : 'Jacqui Gilbourne',	       	   		age : '64', elected : 'No',  gender : 'Female',   constituency : 'Dublin Central', party : 'Renua Ireland' }),
	   (c012:Candidate { name : 'Éilis Ryan',	       	   			age : '31', elected : 'No',  gender : 'Female',   constituency : 'Dublin Central', party : 'Workers Party' }),
	   (c013:Candidate { name : 'Cormac McKay',	       	   			age : '35', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Direct Democracy Ireland' }),
	   (c014:Candidate { name : 'Kerry Guinan',	       	   			age : '23', elected : 'No',  gender : 'Female',   constituency : 'Dublin Central', party : 'Independent' }),
	   (c015:Candidate { name : 'William D.J. Gorman',	       	   	age : '54', elected : 'No',  gender : 'Male',     constituency : 'Dublin Central', party : 'Independent' })
	   
	   
	   
	   
	   
	   
MATCH (a:Candidate),(b:Party)
WHERE a.constituency = "Dublin Central" AND a.party = 'Fianna Fail' AND b.name = 'Fianna Fail'
CREATE (a)-[r:Belongs_to]->(b)
RETURN r