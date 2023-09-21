// Create a simple node with a label "Greeting" and a property "message"
CREATE (:Greeting {message: "Hello, World!"});

// Retrieve and return the greeting
MATCH (g:Greeting) RETURN g.message AS message;
