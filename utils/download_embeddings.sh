#!/bin/bash
# download_google_news_vector.sh

# set the model directory
MODEL_DIR="embeddings"
mkdir -p "$MODEL_DIR"

##############################
# GloVe Embeddings
##############################
GLOVE_ZIP="$MODEL_DIR/glove.6B.zip"
GLOVE_FOLDER="$MODEL_DIR/glove.6B"
GLOVE_URL="https://nlp.stanford.edu/data/glove.6B.zip"

echo "Checking for GloVe embeddings..."
if [ -d "$GLOVE_FOLDER" ]; then
    echo "GloVe embeddings already extracted in $GLOVE_FOLDER. Skipping download and extraction."
else
    if [ -f "$GLOVE_ZIP" ]; then
        echo "GloVe zip file already exists. Extracting..."
    else
        echo "Downloading GloVe embeddings..."
        wget "$GLOVE_URL" -O "$GLOVE_ZIP"
    fi
    echo "Extracting GloVe embeddings to $GLOVE_FOLDER..."
    unzip "$GLOVE_ZIP" -d "$GLOVE_FOLDER"
fi

# define the expected file path for the Google News vectors
GOOGLE_NEWS_FILE="$MODEL_DIR/GoogleNews-vectors-negative300.bin"

echo "Checking for Google News vectors..."
if [ -f "$GOOGLE_NEWS_FILE" ]; then
    echo "Google News vectors already exist at $GOOGLE_NEWS_FILE. Skipping download."
else
    echo "Downloading Google News vectors from Kaggle..."
    # download the dataset into the model directory
    kaggle datasets download -d leadbest/googlenewsvectorsnegative300 -p "$MODEL_DIR"
    
    # the download creates a zip file. Define its path.
    ZIP_FILE="$MODEL_DIR/googlenewsvectorsnegative300.zip"
    
    # check if the zip file was created, then extract and remove it.
    if [ -f "$ZIP_FILE" ]; then
        echo "Extracting $ZIP_FILE..."
        unzip -o "$ZIP_FILE" -d "$MODEL_DIR"
        rm "$ZIP_FILE"
    else
        echo "Zip file not found; please check your Kaggle CLI configuration."
    fi
fi

echo "Google News vectors are ready in the $MODEL_DIR directory."