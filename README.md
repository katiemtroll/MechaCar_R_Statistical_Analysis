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
*R- Script:
<img width="920" alt="image" src="https://user-images.githubusercontent.com/94259442/158076442-9a0657f2-465c-42a8-bcfc-61d3e719484b.png">

*Output:
<img width="506" alt="image" src="https://user-images.githubusercontent.com/94259442/158076468-479e92ef-edb0-401e-ae9f-77346ef4150f.png">

*Results:*
Linear regression was conducted using summary() of lm(). Below are a few key notes about this calcuation (copied/adapted from https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R):
  * **Coefficient - t-value**
The coefficient t-value is a measure of how many standard deviations our coefficient estimate is far away from 0. We want it to be far away from zero as this     would indicate we could reject the null hypothesis - that is, we could declare a relationship exists.
  * **Coefficient - p-value (Pr(>t)**
The p-value is the probability of observing any value equal to or larger than t. The Pr(>t) acronym found in the model output relates to the probability of       observing any value equal or larger than t. A small p-value indicates that it is unlikely we will observe a relationship between the predictor (speed) and        response (dist) variables due to chance. Typically, a p-value of 5% or less is a good cut-off point. In our model example, the p-values are very close to       zero. Note the ‘signif. Codes’ associated to each estimate. Three stars (or asterisks) represent a highly significant p-value. Consequently, a small p-value      for the intercept and the slope indicates that we can reject the null hypothesis and conclude that a relationship does exist.

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The most significant variables in our dataset that provide a non-random effect (meaning far from zero, where we can reject the null hypothesis and conclude there is a relationship - not random) on the mpg of the MechaCar are the Vehicle Length and Ground Clearance. As seen in the output screenshot above, a linear regression model run on these variables resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively. The intercept was also statistically significant, indicating that there are likely other factors not included in our dataset that may have an impact on the mpg.

* Is the slope of the linear model considered to be zero? Why or why not?
The p-Value for this model, p-Value: 5.35e-11, is smaller than the allowable significance level of 0.05 (5%). A statistically significant test result (P ≤ 0.05) means that the test hypothesis is false or should be rejected. A P value greater than 0.05 means that no effect was observed. Based on our p-value of 5.35e-11, it is indicative that there is sufficient evidence to reject the null hypothesis, which in turn indicates that the slope of the linear model is not zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The R-squared value can be used to predict performance of a model. The effectiveness of the model is dependent on the level of precision needed for the specific project. In this case, the R-squared value is 0.7149, or 71.49%, meaning that the model is correct 70% of the time . For this project, that is likely an okay level of precision and indicates that the model is effective. It is recommended that the value should be reviewed by stakeholders to ensure that it is an okay level.
