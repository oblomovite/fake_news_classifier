## DATA

### Sources

From Kaggle:
https://www.kaggle.com/datasets/aadyasingh55/fake-news-classification
https://www.kaggle.com/datasets/clmentbisaillon/fake-and-real-news-dataset

#### [Fake News Classification Dataset](https://www.kaggle.com/datasets/aadyasingh55/fake-news-classification)

The dataset contains 20,800 news articles from 5 different news sources, such as Breitbart, CNN, and the New York Times. The dataset also contains metadata about the articles, such as the date, the article's URL, and the article's text.

#### [Fake and Real News Dataset](https://www.kaggle.com/datasets/clmentbisaillon/fake-and-real-news-dataset)

The dataset contains 44,898 news articles from 2 different news sources, such as Breitbart and Reuters. The dataset also contains metadata about the articles, such as the date, the article's URL, and the article's text.

#### [Liar Liar Dataset](https://www.cs.ucsb.edu/~william/data/liar_dataset.zip)

The dataset contains 12,836 short statements taken from PolitiFact.com, a fact-checking website, and classified as true or false. The dataset also contains metadata about the statements, such as the subject, speaker, and the speaker's job title.

### use kaggle api

Using `kaggle` command line tool, you can download the datasets from kaggle:

```bash
kaggle datasets download -d aadyasingh55/fake-news-classification
kaggle datasets download -d clmentbisaillon/fake-and-real-news-dataset
```

### use wget

Using `wget` command line tool, you can download the datasets from the web:

```bash
wget https://www.cs.ucsb.edu/~william/data/liar_dataset.zip
unzip liar_dataset.zip -d liar_data
```

## Model

### Glove

https://nlp.stanford.edu/projects/glove/

### Google News Vectors

https://www.kaggle.com/datasets/leadbest/googlenewsvectorsnegative300

# Fake News Detection Project

This project leverages Natural Language Processing (NLP) and Deep Learning techniques to detect and classify written media as either fake (misinformation) or real (accurate news). The system is built using a CRISP-DM methodology—from business understanding and data collection through to modeling and evaluation.

---

## Overview

The goal of this project is to build a robust fake news detection system that can:

- **Automatically classify news articles** as fake (1) or real (0).
- **Support business decision-making** for media outlets, social platforms, political fact-checkers, and brand managers.
- Utilize both traditional ML (TF-IDF + Logistic Regression) and advanced deep learning (LSTM with Word2Vec embeddings) techniques.

---

## Business Understanding

Misinformation is an exponentially growing problem in the digital age, with fake news spreading rapidly across social media platforms and news aggregators. This project aims to provide a solution to this problem by developing a fake news detection system that can automatically classify news articles as fake or real.

### Business Use Cases

1. **News Aggregators & Media Outlets:**  
   Automatically flag misinformation to improve credibility and audience trust.

2. **Social Media Monitoring:**  
   Detect and mitigate the spread of fake news on social platforms.

3. **Political Fact-Checking:**  
   Rapidly identify misleading political claims for quicker verification.

4. **Brand Reputation Management:**  
   Monitor online content to protect brands from false and damaging information.

5. **Government & Regulatory Agencies:**  
   Track misinformation trends to support informed policy decisions.

---

## Data Understanding

The project uses two main datasets:

- [**Fake News Classification Dataset**](https://www.kaggle.com/datasets/aadyasingh55/fake-news-classification)
- [**Fake and Real News Dataset**](https://www.kaggle.com/datasets/clmentbisaillon/fake-and-real-news-dataset)

The datasets contain news articles from various sources, along with metadata such as the article's URL, date, and text. The data is labeled as either fake or real, allowing for supervised learning model training.

## Data Preparation

The data preparation process involves cleaning, preprocessing, and transforming the raw data into a format suitable for model training:

- **Text Cleaning:** Remove special characters, URLs, and non-alphanumeric characters.
- **Text Tokenization:** Split text into individual words or tokens.
- **Text Vectorization:** Convert text tokens into numerical vectors using TF-IDF or Word2Vec embeddings.

## Exploratory Data Analysis (EDA)

This project includes an EDA and Visualization section to explore the dataset's characteristics. The notebook checkpoints the results of the EDA [here](./images/).

## Modeling

- **Baseline Model:** TF-IDF + Logistic Regression.
- **Advanced Model:** LSTM using pre-trained Word2Vec (Google News) embeddings.

# Project Structure

```bash

news-classification/
├── datasets/  # downloaded datasets
│ ├── fake-and-real-news/
│ └── fake-news-classification/
├── images/ # EDA images
├── metrics/ # evaluation results
├── index.ipynb # main notebook
├── download_datasets.sh # dataset download script
├── README.md
└── requirements.txt
```

## Conclusion
