# Raksha_Pipes_Business_Analyst

Objective:
To provide a comprehensive overview of the business, we will analyze key parameters including revenue, top 10 valuable customers, shipping analysis, sales distribution by category, distribution of customers by 
country and city, popular payment methods, and supplier analysis.

Description:
I generated dummy data using the Faker library in Python, which I then converted into a DataFrame. Afterward, I exported this DataFrame to a CSV file and imported it into my SQL database. In the database, 
I set the appropriate data types and table structure. Later, I established a connection between the SQL database and Power BI to visualize the parameters outlined in the project's objective, such as revenue, 
top 10 valuable customers, shipping analysis, sales distribution by category, distribution of customers by country and city,popular payment methods, and supplier analysis.

## Data Generation
To generate realistic data, I utilized the Faker library in Python, referencing online resources for table structures and categories. I created eight tables for my database, including customers, suppliers, 
shippers, order details, orders, categories, payments, and products. After populating these tables with data,I converted them into DataFrames and then exported them to CSV files for further analysis

## Database Design
I established a MySQL database and stored the eight CSV files in the ProgramData directory of the MySQL server for accessibility. Subsequently, I created tables in MySQL with identical column names and numbers, 
then inserted all available data from the CSV files into the corresponding MySQL tables using the 'LOAD DATA INFILE' query, specifying the file paths. I ensured appropriate data types were assigned to each column.
This process was repeated for the remaining seven tables to load and set the data types accordingly

## Dashboard Creation
After establishing a connection between Power BI and the MySQL database named 'Raksha Pipes,' I ensured easy readability and understanding by adjusting lengthy column names. Adding the database name before the
table name made it more comprehensible. Then, I built relationships between all eight tables. Using various visualization tools such as maps, bar charts, pie charts, reports, slicers, and interactive buttons, 
I created a dashboard. This dashboard provides valuable insights into the objectives, helping to identify areas for improvement and opportunities

