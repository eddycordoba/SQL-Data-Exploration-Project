# SQL Data Exploration Project

## Overview

This repository contains SQL queries for exploring and analyzing COVID-19 data from [Our World In Data](https://ourworldindata.org/covid-deaths) using BigQuery. These queries cover various aspects of COVID-19 statistics, such as total cases, total deaths, population analysis, vaccination rates, and more.

## Table of Contents

1. [Queries](#queries)
2. [Usage](#usage)
3. [Examples](#examples)
4. [Contributing](#contributing)
5. [License](#license)


### Total Cases and Deaths Analysis

**Purpose**: Analyze the total cases, total deaths, and death percentage.

**Usage**: This query helps us understand the progression of COVID-19 cases and the associated mortality rate.

**Directions**:
1. Open your SQL editor (e.g., Google BigQuery).
2. Copy the SQL query provided below.
3. Replace any placeholders with your desired values.
4. Run the query.

```sql
-- Total Cases and Deaths Analysis
SELECT SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as death_percentage
FROM `sql-covid-data-exploration.covid_data.covid_deaths` 
--Where location like '%states%'
WHERE continent IS NOT NULL 
--Group By date
ORDER BY 1,2

### Population Analysis

**Purpose**: Analyze the population statistics of countries.

**Usage**: This query helps us understand the population distribution among countries.

**Directions**:
1. Open your SQL editor (e.g., Google BigQuery).
2. Copy the SQL query provided below.
3. Replace any placeholders with your desired values.
4. Run the query.

-- Population Analysis
SELECT location, population
FROM `sql-covid-data-exploration.covid_data.covid_deaths` 
WHERE continent IS NOT NULL 
GROUP BY location, population
ORDER BY population DESC

### Vaccination Trends Over Time

**Purpose**: Analyze the trends in vaccination rates over time.

**Usage**: This query provides insights into the progress of vaccination campaigns.

**Directions**:

1. Open your SQL editor (e.g., Google BigQuery).
2. Copy the SQL query provided below.
3. Run the query.

-- Vaccination Trends Over Time
SELECT date, location, new_vaccinations
FROM `sql-covid-data-exploration.covid_data.covid_vaccinations` 
WHERE continent IS NOT NULL 
ORDER BY date, location

### Continent-Level Analysis

**Purpose**: Perform analysis at the continent level.

**Usage**: This query allows for comparisons of COVID-19 statistics among continents.

**Directions**:

1. Open your SQL editor (e.g., Google BigQuery).
2. Copy the SQL query provided below.
3. Run the query.

-- Continent-Level Analysis
SELECT continent, SUM(total_cases) as total_cases, SUM(total_deaths) as total_deaths
FROM `sql-covid-data-exploration.covid_data.covid_deaths` 
WHERE continent IS NOT NULL 
GROUP BY continent
ORDER BY total_cases DESC


### Custom Analysis

**Purpose**: Create your custom analysis query. 

**Usage**: You can modify this query to perform custom analyses based on your specific research questions.

**Directions**:
1. Open your SQL editor (e.g., Google BigQuery).
2. Copy the SQL query provided below.
3. Modify the query to suit your analysis needs.
4. Run the query.

-- Custom Analysis
-- Modify this query to perform your custom analysis.
SELECT ...
FROM ...
WHERE ...


## Contributing

Feel free to contribute to this project by adding new queries, improving existing ones, or enhancing the documentation. Pull requests are welcome!


## License

This project is licensed under the [MIT License](LICENSE).



