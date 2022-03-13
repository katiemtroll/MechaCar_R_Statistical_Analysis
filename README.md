# MechaCar Statistical Analysis
## Overview of Project
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverables
* Deliverable 1: Linear Regression to Predict MPG
* Deliverable 2: Summary Statistics on Suspension Coils
* Deliverable 3: T-Test on Suspension Coils
* Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Deliverable 1 - Linear Regression to Predict MPG
### *R- Script*

<img width="920" alt="image" src="https://user-images.githubusercontent.com/94259442/158076442-9a0657f2-465c-42a8-bcfc-61d3e719484b.png">

### *Output*

<img width="506" alt="image" src="https://user-images.githubusercontent.com/94259442/158076468-479e92ef-edb0-401e-ae9f-77346ef4150f.png">

### *Results*

Linear regression was conducted using summary() of lm(). Below are a few key notes about this calcuation (copied/adapted from https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R):

* **Coefficient - t-value**

The coefficient t-value is a measure of how many standard deviations our coefficient estimate is far away from 0. We want it to be far away from zero as this     would indicate we could reject the null hypothesis - that is, we could declare a relationship exists.
* **Coefficient - p-value (Pr(>t)**

The p-value is the probability of observing any value equal to or larger than t. The Pr(>t) acronym found in the model output relates to the probability of       observing any value equal or larger than t. A small p-value indicates that it is unlikely we will observe a relationship between the predictor (speed) and        response (dist) variables due to chance. Typically, a p-value of 5% or less is a good cut-off point. In our model example, the p-values are very close to       zero. Note the ‘signif. Codes’ associated to each estimate. Three stars (or asterisks) represent a highly significant p-value. Consequently, a small p-value      for the intercept and the slope indicates that we can reject the null hypothesis and conclude that a relationship does exist.

* **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

The most significant variables in our dataset that provide a non-random effect (meaning far from zero, where we can reject the null hypothesis and conclude there is a relationship - not random) on the mpg of the MechaCar are the Vehicle Length and Ground Clearance. As seen in the output screenshot above, a linear regression model run on these variables resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively. The intercept was also statistically significant, indicating that there are likely other factors not included in our dataset that may have an impact on the mpg.

* **Is the slope of the linear model considered to be zero? Why or why not?**

The p-Value for this model, p-Value: 5.35e-11, is smaller than the allowable significance level of 0.05 (5%). A statistically significant test result (P ≤ 0.05) means that the test hypothesis is false or should be rejected. A P value greater than 0.05 means that no effect was observed. Based on our p-value of 5.35e-11, it is indicative that there is sufficient evidence to reject the null hypothesis, which in turn indicates that the slope of the linear model is not zero.

* **Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The R-squared value can be used to predict performance of a model. The effectiveness of the model is dependent on the level of precision needed for the specific project. In this case, the R-squared value is 0.7149, or 71.49%, meaning that the model is correct 70% of the time . For this project, that is likely an okay level of precision and indicates that the model is effective. It is recommended that the value should be reviewed by stakeholders to ensure that it is an okay level.

## Deliverable 2 - Summary Statistics on Suspension Coils
### *R-Script*

<img width="1370" alt="image" src="https://user-images.githubusercontent.com/94259442/158078327-2e9c25dc-0d3a-4296-8630-644fa867bedd.png">

### *Output*

*Total Summary*

<img width="341" alt="image" src="https://user-images.githubusercontent.com/94259442/158078458-3efe0d83-fc5c-4343-890c-c04b1cbb88c2.png">

*Lot Summary*

<img width="590" alt="image" src="https://user-images.githubusercontent.com/94259442/158078624-afed32a9-99bf-4e54-bf51-203d520d4821.png">

### *Results*

* **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The outputs above shows the PSI (pounds per square inch) summary of the suspension coil lots. The overall total summary of the lots combined have a PSI variance of 62.3, which is within the allowed 100 pound variance. However, when looked at by lot, it can be noted that Lot 3 is outside of the variance allowance with a variance of 170.3 pounds. Lots 1 and 2 are within the limits, at less than one pound and about 7.5 pounds, respectively. It would be recommended that Lot 3 be re-tested to ensure the variance was accurate, or immediately discarded and not allowed for use in the cars.

## Deliverable 3 - T-Tests on Suspension Coils
### *R-Script*

<img width="1144" alt="image" src="https://user-images.githubusercontent.com/94259442/158079014-5f601d98-9d99-48dd-95c9-531bdfe1af8c.png">

### *Output*

*Overall t-test*

<img width="407" alt="image" src="https://user-images.githubusercontent.com/94259442/158079035-eea2ad8a-8099-40cb-9131-74012393b61f.png">

*Lot 1 t-test*

<img width="394" alt="image" src="https://user-images.githubusercontent.com/94259442/158079050-f5e50390-5114-43f0-a25b-c87ac69ff6da.png">

*Lot 2 t-test*

<img width="400" alt="image" src="https://user-images.githubusercontent.com/94259442/158079060-233dfe3a-ba52-4890-bf23-52d31df9f47e.png">

*Lot 3 t-test*

<img width="410" alt="image" src="https://user-images.githubusercontent.com/94259442/158079077-de6c845d-a98d-4cb0-aa4d-8d917e24bd4e.png">

### *Results*

Based on the above t-tests, it can be concluded that the null hypothesis should only be rejected for Lot 3 (p = 0.04168), meaning there may be significant differences from the mean population. It is recommended that Lot 3 be further reviewed or discarded. The overall test, Lot 1, and Lot 2 p values (0.06028, 1, and 0.6702 respectively) are not less than 0.05, so the null hypothesis cannot be rejected and it can be assumed that each group is not statistically different from the population mean.
