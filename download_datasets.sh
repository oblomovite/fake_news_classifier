#!/bin/bash

# Create a directory to store all datasets
mkdir -p datasets && cd datasets

echo "Checking and downloading datasets..."

# Function to check if a file or folder exists before downloading
download_if_not_exists() {
    local file_path=$1
    local download_cmd=$2

    if [ -e "$file_path" ]; then
        echo "✔ $file_path already exists. Skipping download."
    else
        echo "⬇ Downloading $file_path..."
        eval "$download_cmd"
    fi
}

# Ensure Kaggle API is authenticated before running
echo "Downloading Kaggle datasets..."
download_if_not_exists "fake-news-classification.zip" "kaggle datasets download -d aadyasingh55/fake-news-classification"
download_if_not_exists "fake-and-real-news-dataset.zip" "kaggle datasets download -d clmentbisaillon/fake-and-real-news-dataset"

# Extract Kaggle datasets only if the extracted folder doesn't exist
echo "Extracting Kaggle datasets..."
[ -d "fake-news-classification" ] || (unzip -o fake-news-classification.zip -d fake-news-classification && rm fake-news-classification.zip)
[ -d "fake-and-real-news" ] || (unzip -o fake-and-real-news-dataset.zip -d fake-and-real-news && rm fake-and-real-news-dataset.zip)

# echo "Downloading additional datasets..."
# # Download LIAR dataset
# download_if_not_exists "liar_dataset.zip" "wget -q https://www.cs.ucsb.edu/~william/data/liar_dataset.zip"
# [ -d "liar_data" ] || (unzip -o liar_dataset.zip -d liar_data && rm liar_dataset.zip)

echo "✔ All datasets are ready!"