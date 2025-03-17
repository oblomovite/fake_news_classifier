# Fake News Detection Project

This project leverages Natural Language Processing (NLP) and Deep Learning techniques to detect and classify written media as either fake (misinformation) or real (accurate news). The system is built using a CRISP-DM methodology—from business understanding and data collection through to modeling and evaluation.

---

## Overview

The goal of this project is to build a robust fake news detection system that can:

- **Automatically classify news articles** as fake (1) or real (0).
- **Support business decision-making** for media outlets, social platforms, political fact-checkers, and brand managers.
- Utilize both traditional ML (TF-IDF + Logistic Regression) and advanced deep learning (LSTM with Word2Vec embeddings) techniques.

---

## Running the Project

1. Installing the required packages:

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
jupyter notebook
```

2. Downloading the datasets:

```bash
sh download_datasets.sh
```

3. Downloading the pre-trained embeddings:

```bash
mkdir embeddings

# Glove
wget http://nlp.stanford.edu/data/glove.6B.zip -P embeddings/
unzip embeddings/glove.6B.zip -d embeddings/

# Google News Vectors
wget https://s3.amazonaws.com/dl4j-distribution/GoogleNews-vectors-negative300.bin.gz -P embeddings/
gunzip embeddings/GoogleNews-vectors-negative300.bin.gz
```

4. Running the Jupyter notebook:

```bash
jupyter notebook index.ipynb
```

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

The model uses pre-trained word embeddings from:

- [**Google News Vectors**](https://www.kaggle.com/datasets/leadbest/googlenewsvectorsnegative300)
- [**Glove**](https://nlp.stanford.edu/projects/glove/)

I used the information provided by this [article](https://www.turing.com/kb/guide-on-word-embeddings-in-nlp#glove:-global-vector-for-word-representation) to guide me through the project.

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
- **Advanced Model:** LSTM using pre-trained Word2Vec (Google News Vector) embeddings.

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

The performance of the baseline model (TF-IDF + Logistic Regression) was exceptional, easy to train and interpret. The advanced model (LSTM + Word2Vec) performed similiarly well but required considerably more computational resources and time to train. The choice of model depends on the specific use case and available resources.
