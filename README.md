## DATA

### use kaggle api

Note this requires a kaggle account and the kaggle api installed.

```bash
kaggle datasets download -d aadyasingh55/fake-news-classification
kaggle datasets download -d clmentbisaillon/fake-and-real-news-dataset
```

### use wget

```bash

wget https://www.cs.ucsb.edu/~william/data/liar_dataset.zip
unzip liar_dataset.zip -d liar_data

wget https://github.com/BuzzFeedNews/2016-10-facebook-fact-check/raw/master/data/facebook-fact-check.csv
unzip facebook-fact-check.csv -d facebook_data

wget http://data.gdeltproject.org/events/20240228.export.CSV.zip
unzip 20240228.export.CSV.zip -d gdelt_data
```
