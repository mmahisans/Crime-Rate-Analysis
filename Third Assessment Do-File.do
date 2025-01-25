//This is the Do-File for IP309: Data Analysis and Short Answer Report

//This is the Sample Answer
// X.Y 
// X = The Question Number
// Y = Section of the Answer

//1.1 T-test to compare CrimeRate between Southern and Non-Southern Counties
ttest CrimeRate, by(Southern)

//1.2 Multiple Regression for Control Variables influencing CrimeRate
regress CrimeRate Southern YouthUnemployment Youth Education Wage MatureUnemployment BelowWage

//2.1 The Visualization
histogram CrimeRate, bin(20) normal ///
    title("Distribution of Crime Rate") ///
    xlabel(0(20)200, grid) ylabel(, grid)

//2.2 Skewness Test
sktest CrimeRate 

//3.1 Two Way Scatter for CrimeRate and Wage
twoway scatter CrimeRate Wage, title("CrimeRate and Wage")

//4.1 Correlation Matrix for All Variables
corr *

//4.2 Regression for Selected Variables
regress CrimeRate ExpanditureYear Wage CountySize High

//5.1 Regression for Full Variables
regress *

//6.1 Regression for MatureUnemployment and YouthUnemployment
regress CrimeRate MatureUnemployment YouthUnemployment ExpanditureYear CountySize Wage

//6.2 Testing for H0
test MatureUnemployment = YouthUnemployment





