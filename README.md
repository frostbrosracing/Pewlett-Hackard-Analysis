# An Analysis of Eligible Retirees for Pewlett Hackard

## Project Overview of the Pewlet Hackard Analysis
#### The goal of this project was to assist the human resources department of Pewlett Hackard determine the upcoming number of people eligible for retirement by job title.  Additionally, a mentorship program was established and eligible employees needed to be identified to participate.  

#### Resources
- Data Source:  departments.csv, employees.csv, dept_manager.csv, salaries.csv, titles.csv, dept_emp.csv
- Software:  PostgreSQL 11, PgAdmin 4 

## Results of the Analysis
Based on the prompt from the Module 7 Challenge prompt for Deliverable 1, the outcome of the expected query is flawed.  As seen in the images below the total eligible retiree numbers are significantly overstated.  This is due to the fact that the former employees are not filtered out at the beginning of the process.  In the first pair of images shown below, the expected results are generated according to the screenshot of the query.

**Expected outcome**
![retirement_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_query.png)

![retirement_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles.png)

In this second pair of images, it is clear that in the first 10 rows of results a former employee is listed in what should be an employee list of retirement eligible employees.  The query in the screenshot below the first 10 lines of resluts shows employee number **10011** who is no longer employeed by Pewlett Hackard.  This is just a single instance pointing to the fact that the expected results are flawed and need to be reconsidered before any further evaluation.  To further show that this employee is no longer employed with Pewlett Hackard, the employee details are shown with the "to_date" indicating a departure from the company on 11/09/1996.

**Adjusted outcome**
![retirement_titles_adjusted_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted_query.png)

![retirement_titles_adjusted.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted.png)




![unique_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

![unique_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles_query.png)

![employee_numbers_comparison.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/employee_numbers_comparison.png)







## Pewlett Hackard Human Resources Analysis Summary

-- ****NOTE**** The Deliverable 1 instructions indicate to create a table that holds "current employees", but in the 
-- confirmation image it clearly shows employee 10011 Mary Sluis who is no longer with the company.  Because the request 
-- is to confirm that the table looks like that image no attempt was made to filter out former employees.  However, based
-- on the information that is generated from these queries, the total number of eligible retirees is going to overstated.
-- This erroneous reporting could be alleviated by adding an additional filter for "current employees" after the birth_date filter.
-- This would also negate the need to filter for most recent title in the second portion of Deliverable 1 by using the DISTINCT ON
-- method.  For the sake of this module challenge, I've written queries that will deliver the expected results.  Please take this 
-- into consideration in the grading of this challenge and consider adjustments to the prompts for future bootcamp cohorts.  This
-- ambiguity is the source of wasting time that could be better focused on learning more skills related to the subject matter, rather 
-- than speculating on what the intent of the assignment was.

Additional queries to run to assist with the analysis.
Total current employee roster


90398 about to retire
240124 total current workforce

37.6% of total current workforce about to retire

Adjusted numbers
72458 about to retire
240124 total current workforce

30.2% of total current workforce about to retire

