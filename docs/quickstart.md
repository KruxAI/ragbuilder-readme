# Getting Started

RagBuilder is a toolkit that helps you create optimal Production-ready Retrieval-Augmented-Generation (RAG) setup for your data automatically. By performing hyperparameter tuning on various RAG parameters (Eg: chunking strategy: semantic, character etc., chunk size: 1000, 2000 etc.), RagBuilder evaluates these configurations against a test dataset to identify the best-performing setup for your data. Additionally, RagBuilder includes several state-of-the-art, pre-defined RAG templates that have shown strong performance across diverse datasets. So just bring your data, and RagBuilder will generate a production-grade RAG setup in just minutes.

## Installation

### Option 1: Install using pip:

``` sh
pip install ragbuilder
```

#### Set your OpenAI API key

Make sure your OpenAI API key is available by setting it as an environment variable. Note that you have to also set other keys for relevant services if you're going to use them (For eg: Pinecone, Singlestore etc.). 
Alternatively, use the .env file to specify keys. See [Environment Variables Setup](env.md) for more details.

=== "MacOS/ Linux"

    ``` sh
    export OPENAI_API_KEY=XXXXX
    ```

=== "Windows"

    ``` sh
    set OPENAI_API_KEY=XXXXX
    ```

Now, run ragbuilder on your command line:

``` sh
ragbuilder
```

This will start the Ragbuilder Uvicorn app and open the browser. If the browser window doesn't open automatically, go to [http://localhost:8005/](http://localhost:8005/) in your browser to access the RagBuilder dashboard.

### Option 2: Using Prebuilt Docker Image

Pull docker image from Docker hub
``` sh
docker pull ashwinzyx/ragbuilder:latest
```

Run the Docker Container.
Provide env variables using command line
``` sh
docker run  -p 55003:8005  -e OPENAI_API_KEY=sk-....
```

OR 

Create .env as specified in the [Environment Variables Setup](env.md) section and use it while running the container
``` sh
docker run --env-file .env -p 55003:8005 ragbuilder
```

This will start the Ragbuilder Uvicorn app and open the browser. If the browser window doesn't open automatically, go to [http://localhost:55003/](http://localhost:55003/) in your browser to access the RagBuilder dashboard.

## Creating your first RAG using ragbuilder

Getting started is super easy. 
To create a new project,

1. Click **New Project** to start building your RAG.
2. **Description:** Describe your use-case. Let's specify "Q&A Chatbot" as the description for our demo.
3. **Source Data:** Specify the path to your source data. This could be a URL, local directory or local file path. For the sake of our demo, let's specify the URL: https://lilianweng.github.io/posts/2023-06-23-agent/
4. **Select Ragbuilder options:** 
   - Use Pre-defined RAG Templates - When selected, this'll include pre-defined RAG configuration templates that have demonstrated strong performance across various datasets and related use-cases. These templates will be evaluated against your data, providing you with performance metrics for each pre-defined configuration.
   - Create Custom RAG Configurations - When selected, this'll generate multiple RAG configurations based on detailed parameters like chunking strategy, chunking size, embedding model, retriever type etc. With this option, it is recommended that you opt for the Bayesian optimization option to efficiently identify the near-optimal RAG configuration for your data. More about this in a bit.*
5. Next, in order to tailor your RAG configurations, you can unselect any specific options you wish to exclude (For eg: Unselecting "Chunking Strategy: Character" will exclude all RAG configurations that have the CharacterTextSplitter). For best results, you may want to leave all settings unchanged. But for our Quickstart demo, we will unselect everything except the below:
    - Chunking strategy: Markdown
    - Embedding model: text-embedding-3-large
    - Retriever: Vector DB - Similarity Search
    - Top k: 5
    - LLM: GPT-3.5 Turbo
6. Select optimization approach:
    - __Bayesian optimization (Recommended):__ When you select the Bayesian optimization, RagBuilder performs hyperparameter tuning using the Bayesian logic, on the different parameters of the RAG such as chunking strategy, chunk size, embedding model, retriever, etc. It begins by evaluating a few random sets of configurations, then builds a probabilistic model to approximate the objective function, which is the RAG's performance. An acquisition function is used to balance exploration of new hyperparameter areas and exploitation of known good areas. This function guides the selection of the next set of hyperparameters to evaluate. The process is iterative, with each new evaluation refining the model and improving the efficiency of finding optimal hyperparameters.
    - __Run all Combinations:__ This option runs all possible combinations of the options selected, offering a comprehensive performance analysis of all RAG configurations for your dataset. This option is appropriate if you have a small subset of options that you're considering for your RAG (For eg: 1 specific chunking strategy, chunk size, 1-2 retrievers etc.). Otherwise, this option can be resource intensive as it may yield hundreds or even thousands of unique configurations to compare. *[Note]: This may take several minutes to complete.*
8. Next, in Evaluation dataset options, you have the option to:
    - **Use Existing Synthetic Test Data:** If synthetic test data was previously generated for your dataset, this option will appear alongside the path of the existing test data.
    - **Generate Synthetic Test Data from My Dataset:** Create a new synthetic test dataset based on your existing data.
    - **Provide a Manually Created Test Dataset:** Use your own test dataset file (CSV format with "question" and "ground_truth" columns).
    For our demo, let's go ahead and create a synthetic test data by selecting the **Generate Synthetic Test Data**** option.
9. Before running the tool, let's review all your selections:
10. Review all the selections and click **Confirm**
11. After processing we should see the dashboard with the results.
12. Click the **View Code snippet** option in the results screen to get the code snippet of the desired RAG configuration. And voila, you've cut down several weeks/months of effort manually creating and evaluating different RAG configuration for your dataset.
