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

![Mary_Sluis_former_employee.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/Mary_Sluis_former_employee.png)

- In this images above, it is clear that in the first 10 rows of results a former employee is listed in what should be an employee list of retirement eligible employees.  The query in the screenshot below the first 10 lines of resluts shows employee number **10011** who is no longer employeed by Pewlett Hackard.  This is just a single instance pointing to the fact that the expected results are flawed and need to be reconsidered before any further evaluation.  To further show that this employee is no longer employed with Pewlett Hackard, the employee details are shown with the "to_date" indicating a departure from the company on 11/09/1996.


- The adjusted query has the correct results omitting any former employees from the outcome.

**Adjusted outcome**

![retirement_titles_adjusted_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted_query.png)

![retirement_titles_adjusted.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_adjusted.png)

- This adjustment shows the former employee no longer listed along with the current employees who are retirement eligible.


- Once more, according to the prompt the evidence of former employees is shown in the query to return the unique titles of eligible retirees.

![unique_titles.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles.png)

![unique_titles_query.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/unique_titles_query.png)

- Included below is a comparison of the actual current total employees along with the expected results for retirement eligible employees from Deliverable 1, and the adjusted retirement eligible employees as filtered with the "to_date" set to "9999-01-01"
![employee_numbers_comparison.png](https://github.com/frostbrosracing/Pewlett-Hackard-Analysis/blob/main/Images/employee_numbers_comparison.png)

According to the flawed numbers, of the total ***240,124*** total current employees at Pewlett Hackard, ***90,398*** are eligible to retire.  This represents almost **38%** of the total workforce.  The actual adjusted numbers aren't much better though.  The adjustment shows a total of ***72,458***  eligible retirees.  This represents a total of **30%** of the total workforce preparing to retire.

## Pewlett Hackard Human Resources Analysis Summary
Two main factors need to be considered in order to prepare for this ***"Silver Tsunami"***.  In order to keep the overall number of employees within a safe operating margin, no more than ***10%*** of the positions should be allowed to be vacant before an appreciable impact might be made to the company. ***10%*** of the total company is just over ***24,000*** positions being left vacant.  This means that **at least** ***49,000*** positions need to be filled as quickly as possible.  Additionally, because there are only ***1,549*** eligible employees for the mentorship program, time is of the essence to get these positions filled.  The corrected total number of remaining employees is ***167,666***.  This represents a ratio of just over **100 to 1** for each mentor.  The parameters for eligible mentors may need to be widened in order to offer a more reasonable ratio.  



