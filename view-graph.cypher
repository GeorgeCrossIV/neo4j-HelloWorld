// Retrieve the nodes and their relationships
MATCH (a:Person)-[r:KNOWS]->(b:Person)
RETURN a, r, b
