# Used Car Price Prediction - EDA, Cleaning & Feature Engineering

This repository contains the solution for **Epochs '26 - Assignment 3** focusing on Exploratory Data Analysis (EDA), Data Cleaning, and Feature Engineering on the Used Car Price Prediction Dataset.

## Dataset Overview
The dataset contains key specs, vehicle history, usage metrics, and listing prices for used cars. It includes numerical attributes like model year and mileage alongside categorical descriptors like brand, model, fuel type, transmission, clean title status, and accident history.

## Data Quality Issues Identified
1. **Inconsistent Data Types**: Columns containing price, mileage, and horsepower had formatting characters (`$`, `,`, `mi.`, `HP`) stored as string objects.
2. **Missing Values**: Features such as fuel type, accident history, and clean title contained missing entries.
3. **Outliers**: High extreme values in mileage and price required review.
4. **Duplicates**: Unnecessary duplicate rows were identified and handled.

## Cleaning Techniques Applied
* **Formatting Stripping**: Removed symbols (`$`, `,`, `mi.`) and cast columns to numeric types (`float`/`int`).
* **Imputation**: Filled missing values in columns using median values and categorical columns using mode values.
* **Deduplication**: Filtered out duplicate rows across all features.
* **Outlier Handling**: Scaled and normalized features during analysis to prevent distortion from extreme values.

## Feature Engineering Performed
1. **`car_age`**: Calculated age of the vehicle (`Current Year - Model Year`).
2. **`mileage_per_year`**: Ratio of total mileage to vehicle age (`Mileage / Car Age`).
3. **`is_luxury_brand`**: Binary flag (`1` or `0`) identifying premium automobile manufacturers.
4. **`has_accident_reported`**: Binary indicator derived from accident history text.
5. **`is_clean_title`**: Binary indicator specifying clean vehicle title status.

## 5 Key Insights Obtained
1. **Depreciation Trend**: Vehicle age exhibits an inverse relationship with price, dropping rapidly in the first 3 to 5 years.
2. **Impact of Accident History**: Vehicles with reported accidents trade at a noticeable discount compared to clean-title equivalents.
3. **Brand Value Retention**: Luxury brands retain higher resale value initially, but experience steeper relative depreciation over higher mileages.
4. **Mileage Sensitivity**: Mileage per year is a stronger indicator of wear than absolute age alone.
5. **Fuel Type Distribution**: Gasoline models dominate listings, while electric and hybrid variants command higher relative price points.
