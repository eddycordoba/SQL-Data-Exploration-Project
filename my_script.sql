{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red204\green0\blue78;\red255\green255\blue255;\red44\green55\blue61;
\red39\green78\blue204;\red42\green55\blue62;\red21\green129\blue62;\red0\green0\blue0;\red238\green57\blue24;
\red107\green0\blue1;}
{\*\expandedcolortbl;;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c100000;\cssrgb\c22745\c27843\c30588;
\cssrgb\c20000\c40392\c83922;\cssrgb\c21569\c27843\c30980;\cssrgb\c5098\c56471\c30980;\cssrgb\c0\c0\c0;\cssrgb\c95686\c31765\c11765;
\cssrgb\c50196\c0\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 --Explore Covid Deaths Table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 Order\cf4 \strokec4  \cf5 \strokec5 By\cf4 \strokec4  \cf9 \strokec9 3\cf4 \strokec4 ,\cf9 \strokec9 4\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 LIMIT\cf4 \strokec4  \cf9 \strokec9 1000\cf4 \cb1 \strokec4 \
\cb3  \cb1 \
\cb3  \cf2 \strokec2 --Explore Covid Vaccinations Table\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 Order\cf4 \strokec4  \cf5 \strokec5 By\cf4 \strokec4  \cf9 \strokec9 3\cf4 \strokec4 ,\cf9 \strokec9 4\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 LIMIT\cf4 \strokec4  \cf9 \strokec9 1000\cf4 \cb1 \strokec4 \
\cb3  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Select Data that we are going to be using \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 ,\cf5 \strokec5 date\cf4 \strokec4 , \strokec8 total_cases\strokec4 , \strokec8 new_cases\strokec4 , \strokec8 total_deaths\strokec4 , \strokec8 population\cb1 \strokec4 \
\cb3  \cf5 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 Order\cf4 \strokec4  \cf5 \strokec5 By\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 limit\cf4 \strokec4  \cf9 \strokec9 1000\cf4 \cb1 \strokec4 \
\
\cb3  \cf2 \strokec2 -- Looking at Total Cases vs Total Deaths\cf4 \cb1 \strokec4 \
\cb3  \cf2 \strokec2 -- Shows the probability of dying if you contract covid in your country\cf4 \cb1 \strokec4 \
\
\cb3  \cf5 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 ,\cf5 \strokec5 date\cf4 \strokec4 , \strokec8 total_cases\strokec4 , \strokec8 total_deaths\strokec4 , \cf6 \strokec6 (\cf4 \strokec8 total_deaths\cf6 \strokec6 /\cf4 \strokec8 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 *\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 death_percentage\cb1 \strokec4 \
\cb3  \cf5 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 where\cf4 \strokec4  \strokec8 location\strokec4  \cf5 \strokec5 like\cf4 \strokec4  \cf7 \strokec7 '%States%'\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 and\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 Order\cf4 \strokec4  \cf5 \strokec5 By\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\
\cb3  \cf2 \strokec2 -- Looking at Total Cases vs Population\cf4 \cb1 \strokec4 \
\cb3  \cf2 \strokec2 -- shows what percentage of population got covid\cf4 \cb1 \strokec4 \
\
\cb3  \cf5 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 ,\cf5 \strokec5 date\cf4 \strokec4 , \strokec8 population\strokec4 ,\strokec8 total_cases\strokec4 , \cf6 \strokec6 (\cf4 \strokec8 total_cases\cf6 \strokec6 /\cf4 \strokec8 population\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 *\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 infected_percentage\cb1 \strokec4 \
\cb3  \cf5 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\cb3  \cf5 \strokec5 where\cf4 \strokec4  \strokec8 location\strokec4  \cf5 \strokec5 like\cf4 \strokec4  \cf7 \strokec7 '%States%'\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 and\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 Order\cf4 \strokec4  \cf5 \strokec5 By\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Looking at countries with highest infection rate compared to population\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 ,\strokec8 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec8 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 highest_infection_count\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 ((\cf4 \strokec8 total_cases\cf6 \strokec6 /\cf4 \strokec8 population\cf6 \strokec6 ))\cf4 \strokec4  \cf6 \strokec6 *\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 percent_population_infected\cb1 \strokec4 \
\cf5 \cb3 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --where location like '%Mexico%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 location\strokec4 , \strokec8 population\cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 percent_population_infected\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Showing Countries with Highest Death Count Record per Population\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 ,\strokec8 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec8 total_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 highest_deaths_count\cb1 \strokec4 \
\cf5 \cb3 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --where location like '%Mexico%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 highest_deaths_count\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Lets Break Things Down By Continent\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- Showing continents with highest death count \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 continent\strokec4 , \cf5 \strokec5 max\cf6 \strokec6 (\cf4 \strokec8 total_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_deaths_count\cb1 \strokec4 \
\cf5 \cb3 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 continent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 total_deaths_count\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Many new deaths counts were still not added in the previous query for every continent\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- The following query shows accurate death count of continents\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec8 location\strokec4 ,\cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 new_total_deaths_count\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\cb3   \cf5 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 null\cf4 \strokec4  \cf5 \strokec5 and\cf4 \strokec4  \strokec8 location\strokec4  \cf5 \strokec5 Not\cf4 \strokec4  \cf5 \strokec5 In\cf4 \strokec4  \cf6 \strokec6 (\cf7 \strokec7 'World'\cf4 \strokec4 ,\cf7 \strokec7 'European Union'\cf4 \strokec4 ,\cf7 \strokec7 'International'\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 new_total_deaths_count\strokec4  \cf5 \strokec5 desc\cf4 \strokec4  \cb1 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Global Numbers\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- Shows global Death Percentage \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4   \cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 new_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_cases\strokec4 , \cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_deaths\strokec4 , \cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 new_deaths\cf6 \strokec6 )/\cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 new_cases\cf6 \strokec6 )*\cf4 \strokec4  \cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 death_percentage\cb1 \strokec4 \
\cf5 \cb3 \strokec5 from\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Using both tables to extract insights\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- This shows our base query of the Join we need to analyze both tables\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 Join\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 On\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec8 vac\strokec4 .\strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 and\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec8 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 limit\cf4 \strokec4  \cf9 \strokec9 1000\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Looking at Total Population vs Vaccinations\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 continent\strokec4 , \strokec8 dea\strokec4 .\strokec8 location\strokec4 , \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 , \strokec8 dea\strokec4 .\strokec8 population\strokec4 , \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 , \cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 Over\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 Partition\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4  \cf5 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4 ,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 rolling_people_vaccinated\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --,(rolling_people_vaccinated/population)*100\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 Join\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 On\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec8 vac\strokec4 .\strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 and\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec8 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 where\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \cf9 \strokec9 2\cf4 \strokec4 ,\cf9 \strokec9 3\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- USING CTE\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 With\cf4 \strokec4  \strokec8 population_vs_vaccinations\strokec4  \cb1 \
\cf5 \cb3 \strokec5 as\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 continent\strokec4 , \strokec8 dea\strokec4 .\strokec8 location\strokec4 , \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 , \strokec8 dea\strokec4 .\strokec8 population\strokec4 , \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 , \cf5 \strokec5 sum\cf6 \strokec6 (\cf4 \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 Over\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 Partition\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4  \cf5 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4 ,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 rolling_people_vaccinated\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --,(rolling_people_vaccinated/population)*100\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 Join\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 On\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec8 vac\strokec4 .\strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 and\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec8 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 where\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cb3   \cf5 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \cf9 \strokec9 2\cf4 \strokec4 ,\cf9 \strokec9 3\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4 , \cf6 \strokec6 (\cf4 \strokec8 rolling_people_vaccinated\cf6 \strokec6 /\cf4 \strokec8 population\cf6 \strokec6 )*\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 percentage_vaccinated\cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \strokec8 population_vs_vaccinations\cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Or, we could USE TEMP TABLE\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- Use a random table name for the temporary table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 Temporary\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4   \strokec8 temp_percent_population_vaccinated\strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 continent\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4 ,\cb1 \
\cb3   \strokec8 location\strokec4  \cf5 \strokec5 STRING\cf4 \strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 date\cf4 \strokec4  \cf5 \strokec5 DATE\cf4 \strokec4 ,\cb1 \
\cb3   \strokec8 population\strokec4  \strokec8 NUMERIC\strokec4 ,\cb1 \
\cb3   \strokec8 new_vaccinations\strokec4  \strokec8 NUMERIC\strokec4 ,\cb1 \
\cb3   \strokec8 rolling_people_vaccinated\strokec4  \strokec8 NUMERIC\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 INSERT\cf4 \strokec4  \cf5 \strokec5 INTO\cf4 \strokec4  \strokec8 temp_percent_population_vaccinated\cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\strokec8 continent\strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\strokec8 location\strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\strokec8 population\strokec4 ,\cb1 \
\cb3   \strokec8 vac\strokec4 .\strokec8 new_vaccinations\strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4 , \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 rolling_people_vaccinated\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 dea\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 JOIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 ON\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec8 vac\strokec4 .\strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec8 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\strokec8 continent\strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4 ,\cb1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf6 \strokec6 (\cf4 \strokec8 rolling_people_vaccinated\strokec4  \cf6 \strokec6 /\cf4 \strokec4  \strokec8 population\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4  \cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 percent_population_vaccinated\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3    \strokec8 temp_percent_population_vaccinated\strokec4 ;\cb1 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Drop the temporary table when no longer needed\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 DROP\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \cf5 \strokec5 IF\cf4 \strokec4  \cf5 \strokec5 EXISTS\cf4 \strokec4  \strokec8 temp_percent_population_vaccinated\cb1 \strokec4 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf2 \strokec2 -- Creating View to store data for visualizatons later on \cf4 \cb1 \strokec4 \
\
\cb3  \cf5 \strokec5 Create\cf4 \strokec4  \cf5 \strokec5 View\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.temp_percent_population_vaccinated`\cf4 \strokec4  \cf5 \strokec5 as\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\strokec8 continent\strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\strokec8 location\strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 ,\cb1 \
\cb3   \strokec8 dea\strokec4 .\strokec8 population\strokec4 ,\cb1 \
\cb3   \strokec8 vac\strokec4 .\strokec8 new_vaccinations\strokec4 ,\cb1 \
\cb3   \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec8 vac\strokec4 .\strokec8 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec8 dea\strokec4 .\strokec8 location\strokec4 , \strokec8 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 rolling_people_vaccinated\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 dea\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 JOIN\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec8 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 ON\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec8 vac\strokec4 .\strokec8 location\cb1 \strokec4 \
\cb3   \cf5 \strokec5 AND\cf4 \strokec4  \strokec8 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec8 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \strokec8 dea\strokec4 .\strokec8 continent\strokec4  \cf5 \strokec5 IS\cf4 \strokec4  \cf5 \strokec5 NOT\cf4 \strokec4  \cf5 \strokec5 NULL\cf4 \cb1 \strokec4 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 /*\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 Queries used for Tableau Project\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 */\cf4 \cb1 \strokec4 \
\
\
\
\cf2 \cb3 \strokec2 -- 1. \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec8 new_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_cases\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf4 \strokec8 new_deaths\strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 int\cf6 \strokec6 ))\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_deaths\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf4 \strokec8 new_deaths\strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 int\cf6 \strokec6 ))/\cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec8 New_Cases\cf6 \strokec6 )*\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 death_percentage\cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Where location like '%states%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Group By date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \cf9 \strokec9 1\cf4 \strokec4 ,\cf9 \strokec9 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Just a double check based off the data provided\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- numbers are extremely close so we will keep them - The Second includes "International"  Location\cf4 \cb1 \strokec4 \
\
\
\cf2 \cb3 \strokec2 --Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 --From PortfolioProject..CovidDeaths\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 ----Where location like '%states%'\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 --where location = 'World'\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 ----Group By date\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 --order by 1,2\cf4 \cb1 \strokec4 \
\
\
\cf2 \cb3 \strokec2 -- 2. \cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 -- We take these out as they are not inluded in the above queries and want to stay consistent\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- European Union is part of Europe\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf5 \strokec5 cast\cf6 \strokec6 (\cf4 \strokec8 new_deaths\strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 int\cf6 \strokec6 ))\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 total_death_count\cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Where location like '%states%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Where\cf4 \strokec4  \strokec8 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 null\cf4 \strokec4  \cb1 \
\cf5 \cb3 \strokec5 and\cf4 \strokec4  \strokec8 location\strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 in\cf4 \strokec4  \cf6 \strokec6 (\cf7 \strokec7 'World'\cf4 \strokec4 , \cf7 \strokec7 'European Union'\cf4 \strokec4 , \cf7 \strokec7 'International'\cf6 \strokec6 )\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 location\cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 total_death_count\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- 3.\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 location\strokec4 , \strokec8 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec8 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 HighestInfectionCount\strokec4 ,  \cf5 \strokec5 Max\cf6 \strokec6 ((\cf4 \strokec8 total_cases\cf6 \strokec6 /\cf4 \strokec8 population\cf6 \strokec6 ))*\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 PercentPopulationInfected\cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Where location like '%states%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 location\strokec4 , \strokec8 population\cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 PercentPopulationInfected\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- 4.\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Select\cf4 \strokec4  \strokec8 Location\strokec4 , \strokec8 Population\strokec4 ,\cf5 \strokec5 date\cf4 \strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec8 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 HighestInfectionCount\strokec4 ,  \cf5 \strokec5 Max\cf6 \strokec6 ((\cf4 \strokec8 total_cases\cf6 \strokec6 /\cf4 \strokec8 population\cf6 \strokec6 ))*\cf9 \strokec9 100\cf4 \strokec4  \cf5 \strokec5 as\cf4 \strokec4  \strokec8 PercentPopulationInfected\cb1 \strokec4 \
\cf5 \cb3 \strokec5 From\cf4 \strokec4  \cf7 \strokec7 `sql-covid-data-exploration.covid_data.covid_deaths`\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --Where location like '%states%'\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 Group\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 Location\strokec4 , \strokec8 Population\strokec4 , \cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 order\cf4 \strokec4  \cf5 \strokec5 by\cf4 \strokec4  \strokec8 PercentPopulationInfected\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
}