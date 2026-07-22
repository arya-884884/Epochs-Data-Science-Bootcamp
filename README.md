# Google Play Store Apps - Dataset Exploration & Problem Framing

## 1. Dataset Overview
- **Dataset:** Google Play Store Apps
- **Source File:** `googleplaystore.csv`
- **Shape:** 10,841 rows × 13 columns

## 2. Business Problems
1. **Pre-Launch Rating Prediction:** Predict the expected user rating (1.0 to 5.0) of a proposed app based on its planned features, size, category, and target audience.
2. **Monetization Analysis:** Identify optimal combinations of app category and pricing model (Free vs. Paid) that maximize download counts without compromising user ratings.

## 3. ML Problem Framing
- **Type:** Supervised Learning — Regression
- **Justification:** The target variable (`Rating`) is a continuous numerical value between 1.0 and 5.0.
- **Alternative:** Binary Classification (Predicting `High Rating >= 4.0` vs. `Low Rating < 2.0`).

## 4. Target Variable & Key Features
- **Target Variable:** `Rating`
- **Key Predictors:** `Category`, `Reviews`, `Size`, `Installs`, `Type`, `Price`, `Content Rating`, `Genres`

## 5. Key Observations
1. **Missing Ratings & Outliers:** 1,474 apps (13.6%) are missing ratings. Some rows contains corrupted data.
2. **Data Formatting Issues:** `Installs`, `Price`, `Size`, and `Reviews` are saved as text (`object`) due to characters like `+`, `,`, and `$`, requiring cleaning.
3. **Free Model Dominance:** 92.6% (10,039) of apps are Free, with `FAMILY` (1,972) and `GAME` (1,144) as the most frequent categories.
