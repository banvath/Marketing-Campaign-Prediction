# Marketing-Campaign-Prediction

## Business Understanding: 
To predict if the customer will respond positively to the product or services when they receive the marketing campaign, to increase response rate and ROI.

## Data: 
41,118 rows with 21 variables containing  demographic information and previous transactions history 

##  Key Challenges and how I addressed them:

### Target Variable is imbalanced:
o	I up-sampled the minority class and down-sampled the majority class.

## Feature Engineering:

### Multi correlation: 
Removed highly correlated variables. 0.9 is the cut-off I used.

### Sequential Forward Selection: 
Finding out the best combination of variables that lead to the Lowest AIC value.  

### Variables removed: 
Ip address, and mobile devices because these variables are data identifies

### Variables created: 
Instead of Login and Logout timings, I created a duration variable to have the same info in one variable.



## Modeling:
•	Train:Test = 80:20
•	GridSearchCV for Hyperparameter Tuning

### Models Built: 
* Logistic Regression
* Decision Tree 
* KNN  
* Random Forest 
* Naïve Bayes
* ANN
* XGboost 
* LightGBM

## Evaluation:
•	AUC ROC Curve
•	Performance metric: F-1
o	False Negatives and False positives have equal costs and benefits, so I chose f1 measure.

## Conclusion: 
LightGBM is the best model based on AUC ROC value and F-1 measure.
