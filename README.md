# An Analysis of Eligible Retirees for Pewlett Hackard

#### Resources
- PostgreSQL 11
- PgAdmin 4 
- departments.csv, employees.csv, dept_manager.csv, salaries.csv, titles.csv, dept_emp.csv

#### The goal of this project was to assist the human resources department of Pewlett Hackard det
The following steps were conducted in order to generate a final vacation itinerary for travelers.
1.  A list of **779** cities resulted from running 2,000 ***randomly*** generated coordinates through the **citipy** module, which identifies the closest city to a given set of coordinates. 
2.  An API call made to **OpenWeatherMap.org** collected each city's geographic coordinates and weather conditions in **JSON (JavaScript Object Notation)** format. This information was then parsed and added to a **Pandas** DataFrame, trimmed to a list of **715** located cities, and written to a *.csv* file.
3.  The recorded .csv file was then read into a new **Python** script which prompted the user to input the desired minimum and maximum temperatures for their vacation destination.
5.  In this instance, 60°F was set for the minimum temperature and 95°F was set for the maximum temperature, narrrowing that list to **379** cities.  Because there were three rows of data that were incomplete, those rows with null values were dropped.  This left **376** cities to be added to a new DataFrame with an additional column created to capture the ***Hotel Name*** for each city in the list.
6.  Another API call to **Google** gmaps and places was made to add the hotel name for each city to the DataFrame.  Any cities that did not show a hotel were dropped, and **348** cities remained on the list.  A new *.csv* file was written with the compiled data, and an interactive map was generated with markers for each city in the list.

![WeatherPy_vacation_map.png](https://github.com/frostbrosracing/World_Weather_Analysis/blob/main/Vacation_Search/WeatherPy_vacation_map.png)

6.  This .csv file was read into a new **Python** DataFrame and plotted using **Google** gmaps.  From this map, four cities were selected and their latitude and longitude pairs were retrieved, and dataframes for each city were created.  This enabled the use of the coordinates in a format appropriate to generate a map using the Google Cloud Platform resources.

![WeatherPy_travel_map.png](https://github.com/frostbrosracing/World_Weather_Analysis/blob/main/Vacation_Itinerary/WeatherPy_travel_map.png)

7.  A combined Itinerary DataFrame was made by compiling each of the city DataFrames, and was used to render a final interactive **Google Map** with markers and pop-ups.

![WeatherPy_travel_map_markers.png](https://github.com/frostbrosracing/World_Weather_Analysis/blob/main/Vacation_Itinerary/WeatherPy_travel_map_markers.png)
 
## Results of the weather and mapping APIs
From the original 2,000 latitude and longitude pairs that were randomly generated, 779 cities were identified.  Of these 779 cities, 715 were matched to weather data from the OpenWeatherMap API.  In this exercise, four cities were chosen in the Northeast of the United States according to the desired weather parameters.  These were chosen from 348 cities that had a hotel registered with Google within 5 kilometers of the original randomly generated coordinates.  These cities, along with their hotel name and current weather conditions at the time of reporting are listed below:
1.  Bloomfield, NJ:  La Quinta Inn & Suites by Wyndham Clifton/Rutherford (current weather:clear sky and 60°F)
2.  Palmer, MA:  Wedgewood Motel (current weather: scattered clouds and 62°F)
3.  Norfolk, MA: Residence Inn by Marriott Boston Norwood/Canton (current weather: clear sky and 64°F)
4.  Plymouth, MA: Rodeway Inn Middleboro-Plymouth (current weather: clear sky and 62°F)

## World Weather and Vacation Planning Summary
By using APIs, the process of consolidating large amounts of data for specific uses becomes streamlined.  By using two APIs in conjunction, we were able to add depth to, and increase the effectiveness of the reporting.  This is an example meant to showcase just a specific use case of the effectiveness of APIs by highlighting how they might offer some helpful information to potential vacationers when selecting their destination choice. 


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