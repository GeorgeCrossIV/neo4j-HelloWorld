// Create two nodes with labels "Person"
CREATE (a:Person {name: "Alice", role: "Developer"}),
       (b:Person {name: "Bob", role: "Manager"})

// Create a relationship "KNOWS" between Alice and Bob
CREATE (a)-[:KNOWS {since: "2020-01-01"}]->(b)
RETURN a, b
