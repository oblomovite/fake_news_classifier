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
