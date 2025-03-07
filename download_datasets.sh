#!/bin/bash

# Create a directory to store all datasets
mkdir -p datasets && cd datasets

echo "Checking and downloading datasets..."

# Function to check if a file exists before downloading
download_if_not_exists() {
    local file_path=$1
    local download_cmd=$2

    if [ -f "$file_path" ] || [ -d "$file_path" ]; then
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

# Extract Kaggle datasets if not already extracted
echo "Extracting Kaggle datasets..."
[ -d "fake-news-classification" ] || (unzip fake-news-classification.zip -d fake-news-classification && rm fake-news-classification.zip)
[ -d "fake-and-real-news" ] || (unzip fake-and-real-news-dataset.zip -d fake-and-real-news && rm fake-and-real-news-dataset.zip)

echo "Downloading additional datasets..."
# Download LIAR dataset
download_if_not_exists "liar_dataset.zip" "wget -q https://www.cs.ucsb.edu/~william/data/liar_dataset.zip"
[ -d "liar_data" ] || (unzip liar_dataset.zip -d liar_data && rm liar_dataset.zip)

# Download BuzzFeed dataset
mkdir -p facebook_data
download_if_not_exists "facebook_data/facebook-fact-check.csv" "wget -q https://github.com/BuzzFeedNews/2016-10-facebook-fact-check/raw/master/data/facebook-fact-check.csv -O facebook_data/facebook-fact-check.csv"

# Download and extract GDELT dataset (update date if needed)
# mkdir -p gdelt_data
# GDELT Example: Uncomment and update the date if needed
# download_if_not_exists "gdelt_data/20240228.export.CSV.zip" "wget
