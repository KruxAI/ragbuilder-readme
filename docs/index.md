# RagBuilder

RagBuilder is a toolkit that helps you create optimal Production-ready Retrieval-Augmented-Generation (RAG) setup for your data automatically. By performing hyperparameter tuning on various RAG parameters (Eg: chunking strategy: semantic, character etc., chunk size: 1000, 2000 etc.), RagBuilder evaluates these configurations against a test dataset to identify the best-performing setup for your data. Additionally, RagBuilder includes several state-of-the-art, pre-defined RAG templates that have shown strong performance across diverse datasets. So just bring your data, and RagBuilder will generate a production-grade RAG setup in just minutes.

## Features
    
- **Hyperparameter Tuning**: Efficiently identify optimal RAG configurations (combination of granular parameters like chunking strategy, chunking size, embedding models, retriever types etc.) using Bayesian optimization
- **Pre-defined RAG Templates**: Use state-of-the-art templates that have demonstrated strong performance across various datasets.
- **Evaluation Dataset Options**: Choose to generate a synthetic test dataset or provide your own.
- **Automatic Reuse**: Automatically re-use previously generated synthetic test data when applicable.
- **Easy-to-use Interface**: Intuitive UI to guide you through setting up, configuring, and reviewing your RAG configurations.

<figure markdown="span">
[Get Started](quickstart.md){: .md-button .md-button--primary}
</figure>