Orchestration (Main Process)
│
├── Query (User Input)
│   └── A request from the user that initiates the process.
│
├── Cache
│   ├── Cached Response (If available, return response)
│   │   └── If a similar query has been made before, the system retrieves the cached (previously stored) response to save time.
│   └── No Cache (Proceed to context construction)
│       └── If no matching cached response is found, the query continues to the next stage for processing.
│
├── Context Construction
│   ├── Retrieval-Augmented Generation (RAG)
│   │   └── RAG combines retrieval of relevant documents or information with model generation for better responses.
│   ├── Agent
│   │   └── Agents perform specific tasks based on the query, such as collecting information or interacting with data sources.
│   └── Query Rewriting
│       └── The system may rewrite or rephrase the user query to improve accuracy and relevance before proceeding.
│
├── Input Guardrails
│   └── PII Redaction
│       └── This ensures that any personal or sensitive information (Personally Identifiable Information) is removed from the query to protect user privacy.
│
├── Model Gateway
│   ├── Model Catalog
│   │   └── This contains a list of different models that can be used depending on the type of query.
│   ├── Access Token Management
│   │   └── Handles authorization and ensures secure access to the models.
│   ├── Routing (Select the appropriate model)
│   │   └── Based on the query, the system chooses the most appropriate model to generate a response.
│   ├── Generation (Generate response)
│   │   └── The selected model generates the response based on the context and input.
│   └── Scoring (Evaluate response)
│       └── The generated response is evaluated (scored) based on quality, relevance, and other factors.
│
├── Databases
│   ├── Documents
│   │   └── Storage for documents that may be used in generating the response.
│   ├── Tables
│   │   └── Structured data tables that store factual or reference information.
│   ├── Chat History
│   │   └── The system may pull from previous chat interactions to improve the current response.
│   └── VectorDB (Embeddings for vector search)
│       └── A database optimized for searching based on vector embeddings (mathematical representations of data).
│
├── Read-only Actions
│   ├── Vector Search
│   │   └── Search for relevant information using vector embeddings.
│   ├── SQL Queries
│   │   └── Run SQL queries on the database to retrieve data.
│   └── Web Search
│       └── Perform searches on the web for real-time information if necessary.
│
├── Write Actions
│   ├── Update Orders
│   │   └── Update data, such as modifying orders in an e-commerce setting.
│   └── Send Emails
│       └── The system may trigger actions such as sending emails based on the query.
│
├── Output Guardrails
│   ├── Safety/Verification
│   │   └── Ensures the response follows safety protocols and is appropriate for the user.
│   └── Structured Outputs
│       └── Ensures the response is well-structured and formatted correctly.
│
└── Logging, Monitoring, and Analytics
    └── Tracks system performance, logs data for future reference, and monitors processes to provide feedback for improvement.
