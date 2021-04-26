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

![Mary_Sluis_former_employee.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/Mary_Sluis_former_employee.png)

**Adjusted outcome**

![retirement_titles_adjusted_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted_query.png)

![retirement_titles_adjusted.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted.png)

This adjustment shows the former employee no longer listed along with the current employees who are retirement eligible.


![unique_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

![unique_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles_query.png)

Included below is a comparison of the actual current total employees along with the expected results for retirement eligible employees from Deliverable 1, and the adjusted retirement eligible employees as filtered with the "to_date" set to "9999-01-01"
![employee_numbers_comparison.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/employee_numbers_comparison.png)

The employee has a pretty significant task ahead to fill the roles of the retirees with eligible new hires.  Along with this influx of new employees, a mentorship program should be put in place where select retirees will be chosen to train current employees who are eligible for promotion to higher positions within the company. 

According to the flawed numbers, of the total ***240,124*** total current employees at Pewlett Hackard, ***90,398*** are eligible to retire.  This represents almost **38%** of the total workforce.  The actual adjusted numbers aren't much better though.  The adjustment shows a total of ***72,458***  eligible retirees.  This adjustment shows a total of **30%** of the total workforce.  

The parameters for the mentorship program show only ***1,549*** 

90398 about to retire
240124 total current workforce

37.6% of total current workforce about to retire

Adjusted numbers
72458 about to retire
240124 total current workforce

30.2% of total current workforce about to retire


## Pewlett Hackard Human Resources Analysis Summary
Because there are only ***1,549*** eligible employees for the mentorship program, time is of the essence to get new employees on the books as quickly as possible.  The total number of remaining employees is ***167,666***.  This represents a ratio of just over **100 to 1** for each mentor.  The parameters for eligible mentors may need to be widened in order to offer a more reasonable ratio.  



