# Environment Variables Setup

This section provides instructions on setting up the environment variables required for the RagBuilder project. These variables need to be configured in a `.env` file located in the same directory where you run the `ragbuilder` command.

## Description

The environment variables are essential for authenticating and configuring various services used by the RagBuilder project. Below are the variables you need to set in your `.env` file.

### Environment Variables

- **OPENAI_API_KEY**: The API key for OpenAI services.
- **MISTRAL_API_KEY**: The API key for Mistral services.
- **ENABLE_ANALYTICS**: A boolean flag to enable or disable analytics. Set to `True` or `False`.
- **HUGGINGFACEHUB_API_TOKEN**: The API token for HuggingFace Hub.
- **COHERE_API_KEY**: The API key for Cohere services.
- **JINA_API_KEY**: The API key for Jina services.
- **SINGLESTOREDB_URL**: The connection string for SingleStoreDB, formatted as `userid:password@host:port/dbname`.
- **PINECONE_API_KEY**: The API key for Pinecone services.

### Example `.env` File

Create a file named `.env` in the directory where you will run the `ragbuilder` command and add the following content, replacing the placeholder values with your actual keys and connection string. Ensure not to use quoutes for keys or values

```env
# Environment variables for the RagBuilder project
OPENAI_API_KEY=XXXXXX
MISTRAL_API_KEY=XXXXX
ENABLE_ANALYTICS=True
HUGGINGFACEHUB_API_TOKEN=XXXXXX
COHERE_API_KEY=XXXXXX
JINA_API_KEY=XXXXXX
SINGLESTOREDB_URL=userid:password@host:port/dbname
PINECONE_API_KEY=XXXXXX
```

### Instructions
1. Create a new file named .env in your project directory.
2. Copy the example content provided above into the .env file.
3. Replace the placeholder values with your actual API keys and connection string.
4. Save the .env file.
5. Ensure that the .env file is located in the same directory where you run the ragbuilder command to ensure the environment variables are properly loaded.

By setting up these environment variables, you enable the RagBuilder project to authenticate and interact with the necessary external services.