# Pewlett-Hackard-Analysis

## Overview

### In this challenge we work for a large company, Pewlett Hackard, that has been around for a long time. Pewlett Hackard is preparing for the "silver tsunami", where their baby boomer employees are beginning to retire at a rapid rate. We have been tasked with identifying the employees who are set to retire soon, as well as determine the employees who are eiligible for a "mentorship program" (a program in which employees who are set to retire soon will only work part-time and mentor PH employees). We have been given 6 different CSV datasets which we will use to pull the requested data through a series of SQL joins and calculations.

## Results

### After joining several tables, filtering for the data we want, and performing a few calculations, we arrive at the two tables below:
![](https://github.com/christianhargett/Pewlett-Hackard-Analysis/blob/master/Retiring_titles.png)

![](https://github.com/christianhargett/Pewlett-Hackard-Analysis/blob/master/Mentorship_Eligibility.png)

![](https://github.com/christianhargett/Pewlett-Hackard-Analysis/blob/master/Mentorship_eligibility.png)

### The first list is the amount of employees, by title, at Pewlett Hackard that are preparing to retire soon. The second list is the table that contains a list of employees elgible for the mentorship program (the image above only includes the first few rows of the data).

### After looking at the tables we can conclude a few things:

### 1). Pewlett Hackard has a massive retirement problem. They have 90,398 employees who are set to retire soon or have already retired, which is a staggering number. If they didn't know the silver tsunami poses a great threat to the company, this analysis will make them aware.

### 2). Pewlett Hackard should probably prioritize on replacing the Senior Engineers and Senior Staff positions. These two titles combined make up 64% of the overall retiring employees dataset. 

### 3). Even though it may jump off the page, the Managers retiring is also an important problem that needs to be addressed. PH only has 9 departments in total, and they have 1 manager per department. Losing 2 out of 9 very key personnel is an issue that will certainly need to be addressed

### 4). Pewlett Hackard only has around 1,500 employees that are eligible for the mentorship program. Based off of PH's total employees, this number may not be enough to prepare current employees for the silver tsunami. PH might want to consider tweaking their criteria for employees that are eligible for the mentorship partcipation program.

## Summary

### As the silver tsunami begins to have an impact on Pewlett Hackard, we need to know how many roles will need to be replaced. In order to determine this we can create another query that is similar to the retiring counts we had in the 2nd table above. Only this time our data will filter on strictly CURRENT Pewlett Hackard employees who are retiring soon (whereas our other table also contained employees who had already retired). When doing this we arrive at the table below:

![](https://github.com/christianhargett/Pewlett-Hackard-Analysis/blob/master/Retiring_titles_current_employees.png)

### This table shows that there are around 72,000 employees that Pewlett Hackard needs to replace. 
