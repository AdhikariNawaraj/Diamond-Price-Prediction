💎 Diamond Price Prediction

This project aims to develop a machine learning model to predict diamond prices based on various physical and categorical attributes such as carat, cut, clarity, color, polish, symmetry, and fluorescence. The dataset is sourced from Shree Ramkrishna Exports Pvt. Ltd. (SRK) and has been preprocessed for high-quality predictions.

📌 Project Overview

Dataset: 2,141 diamonds with 12 features
Preprocessing: Missing values handled, categorical encoding, feature scaling, and outlier removal
EDA: Correlation analysis, visualizations, and distribution analysis
Models Implemented:
Linear Regression
Lasso & Ridge Regression
Polynomial Regression (Degree 2-4)
Decision Tree
Random Forest (Best Performing)
Best Model: Random Forest (R² = 62.28%, MAE = 14.51, RMSE = 18.22)

🛠 Tech Stack

Languages: R
Libraries: caret, randomForest, glmnet, ggplot2, tidyr, dplyr
Tools: Jupyter Notebook / RStudio

📈 Key Insights

Random Forest outperformed all models with the highest accuracy.
Non-linear relationships were captured using Polynomial Regression.
Feature importance analysis showed carat weight, clarity, and color as top predictors.

🚀 Future Improvements

Implement Gradient Boosting (XGBoost, LightGBM)
Explore deep learning models for complex relationships
Develop a web-based prediction tool for diamond valuation

📂 Folder Structure

📁 Diamond_Price_Prediction/
│-- 📂 data/           # Dataset & cleaned data
│-- 📂 models/         # Trained models
│-- 📂 notebooks/      # Code implementation
│-- 📂 visuals/        # Plots and charts
│-- 📜 README.md       # Project documentation
│-- 📜 Diamond_Price_Prediction.Rmd  # Main R script

📜 References

Dataset: SRK Exports
R Packages: CRAN
Inspiration: ISLR by James et al.
