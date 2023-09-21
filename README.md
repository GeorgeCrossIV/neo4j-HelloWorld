# Neo4j Hello World Example

## Overview
This guide provides instructions to set up a simple "Hello World" example using Neo4j.

## Prerequisites
1. **Neo4j Installation**: Ensure the Neo4j server is installed.
2. **Configuration**: If accessing the Neo4j command line from another server, configure the listen address to `0.0.0.0`.

## Steps to Run the Example

### 1. Access Neo4j
Connect to your local Neo4j instance by navigating to:  
[http://localhost:7474/](http://localhost:7474/)

On your first login, use the default credentials:
- **Username**: `neo4j`
- **Password**: `neo4j`

Neo4j will prompt you to change the password.

### 2. Create the Graph
Use the provided Cypher commands in `create.cypher` to populate the database. This file contains instructions to create nodes and relationships for the example.

```cypher
// Create two nodes with labels "Person"
CREATE (a:Person {name: "Alice", role: "Developer"}),
       (b:Person {name: "Bob", role: "Manager"})

// Create a relationship "KNOWS" between Alice and Bob
CREATE (a)-[:KNOWS {since: "2020-01-01"}]->(b)
RETURN a, b

### 3. View the Graph
To visualize the created graph, execute the commands in the `view-graph.cypher` file.

```cypher
// Retrieve the nodes and their relationships
MATCH (a:Person)-[r:KNOWS]->(b:Person)
RETURN a, r, b

---

**Note**: For more complex setups and interactions, consider diving deeper into the Neo4j documentation and exploring advanced Cypher queries.

---
