## Model Report

1. Data Imputation with SimpleImputer
    Handling missing data in your dataset. SimpleImputer is a class provided by the sklearn.impute module. It provides basic strategies for imputing missing values, such as using the mean, median, most frequent, or a constant value.

2. Data Scaling using Min-MaxScaler
    This step is about normalizing your data so that all features have the same scale. This is important for many machine learning algorithms. The MinMaxScaler from sklearn.preprocessing scales features to a given range, usually between 0 and 1.

3. LGBMClassifier
    This step is about creating a Light Gradient Boosting Machine (LightGBM) classifier. LightGBM is a gradient boosting framework that uses tree-based learning algorithms. It is designed to be distributed and efficient with the following advantages: faster training speed and higher efficiency, lower memory usage, better accuracy, and support for parallel and GPU learning.

4. Hyperparameters tuning by GridSearchCV
    This step is about tuning the model's hyperparameters to improve its performance. GridSearchCV from sklearn.model_selection is a utility that automatically performs cross-validation on a grid of specified parameters, identifying the parameters that provide the best performance.