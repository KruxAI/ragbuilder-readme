# RagBuilder FAQ

??? quote "What is RagBuilder?"
    **RagBuilder** is a toolkit that helps you create optimal Production-ready Retrieval-Augmented-Generation (RAG) setup for your data automatically. By performing hyperparameter tuning on various RAG parameters (e.g., chunking strategy: semantic, character, etc., chunk size: 1000, 2000, etc.), RagBuilder evaluates these configurations against a test dataset to identify the best-performing setup for your data.

??? quote "How do I get started with RagBuilder?"
    To get started, follow these steps:
    1. Use the install script for easy installation:

        #### Mac & Linux
        ```sh
        curl -fsSL https://raw.githubusercontent.com/KruxAI/ragbuilder-readme/main/install.sh | bash
        ```

        #### Windows
        ```sh
        curl -fsSL https://raw.githubusercontent.com/KruxAI/ragbuilder-readme/main/install.bat
        ```

        Run `install.bat` from the command prompt
        ```sh
        install.bat
        ```

    2. Setup your OpenAI API key.

        On MacOS and Linux:
        ```sh
        export OPENAI_API_KEY=XXXXX
        ```

        On Windows:
        ```sh
        set OPENAI_API_KEY=XXXXX
        ```

    3. Run `ragbuilder` in your terminal. This will open up the RagBuilder app in the browser. This will start the RagBuilder Uvicorn app and open the browser. If the browser window doesn't open automatically, go to [http://localhost:8005/](http://localhost:8005/) in your browser to access the RagBuilder dashboard. For Docker, see [Installation](quickstart.md/#installation)

    4. Click on **New Project** and input the path of the source dataset for your RAG and follow the rest of the instructions.

    5. After completion, view the results summary page to see what configurations performed best for your dataset. You may then get the code for the desired configuration by clicking on the **View Code** button.

    You can find more detailed instructions in our [Getting Started Guide](quickstart.md/#installation).

??? quote "Can I use RagBuilder with my own data?"
    Yes, RagBuilder is designed to work with your custom datasets. Simply point to your data, configure the necessary parameters, and let RagBuilder do the rest.

??? quote "What are the pre-defined RAG templates?"
    The pre-defined RAG templates include various state-of-the-art configurations that have shown strong performance across different datasets. These templates offer a quick and effective way to get started with RagBuilder.

??? quote "What does Bayesian optimization mean in RagBuilder?"
    When you select the Bayesian optimization, RagBuilder performs hyperparameter tuning using the Bayesian logic, on the different parameters of the RAG such as chunking strategy, chunk size, embedding model, retriever, etc. It begins by evaluating a few random sets of configurations, then builds a probabilistic model (typically a Gaussian process) to approximate the objective function, which is the RAG's performance. An acquisition function is used to balance exploration of new hyperparameter areas and exploitation of known good areas. This function guides the selection of the next set of hyperparameters to evaluate. The process is iterative, with each new evaluation refining the model and improving the efficiency of finding optimal hyperparameters.

??? quote "How long does it take to generate a RAG pipeline?"
    The time RagBuilder takes depends heavily on your dataset and the configuration that you run it with. Using pre-defined templates can take just minutes, while creating custom configurations may take longer depending on the complexity and size of your data. We recommend starting with a sample dataset (maybe start with 10-50K words) and review the results before scaling with your full dataset. It'll take approximately 30-60 mins for RagBuilder to complete a Bayesian optimization run + pre-defined templates with a sample dataset of 50K words.

??? quote "How is RagBuilder different from other RAG tools?"
    RagBuilder stands out by offering automated hyperparameter tuning, state-of-the-art pre-defined templates, and the ability to handle custom datasets with ease. It aims to simplify the process of building and deploying RAG pipelines, making them accessible to developers of all skill levels.

??? quote "Where can I ask questions or get help?"
    For any questions or help, you can:
    - Visit our [Discussion Board](https://github.com/KruxAI/ragbuilder/issues)
    - Check our [Documentation](https://docs.ragbuilder.io/)

??? quote "Is RagBuilder open source?"
    Yes, RagBuilder is an open-source project. You can access the source code, contribute, and join the community on our [GitHub Repository](https://github.com/KruxAI/ragbuilder).

??? quote "How do I contribute to RagBuilder?"
    We welcome contributions of all kinds and from developers of all levels.
    You can contribute by:
    - Reporting bugs
    - Suggesting new features or improvements
    - Contributing code or documentation
    - Participating in community discussions

    For more details, please visit our [Contributors Page](contributing.md).

??? quote "Who maintains RagBuilder?"
    RagBuilder is maintained by Krux AI (Ashwin Aravind - ashwin@krux.ai and Aravind Parameswaran - aravind@krux.ai) along with contributions from the open-source community. We welcome and appreciate contributions from developers worldwide.

---

Have more questions? Visit our [Discussion Board](https://github.com/KruxAI/ragbuilder/issues) or [Contact Us](mailto:aravind@krux.ai,ashwin@krux.ai).