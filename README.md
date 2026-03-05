# oil_gas_sql_analysis
SQL  analysis of OPEC oil production from 1973 - 2018

x# OPEC Oil Production Analysis

## Overview
Analysis of OPEC crude oil production data from 1973 to 2018 using SQL queries to identify production trends and patterns across member countries.

## Dataset
- **Source:** Kaggle (OPEC oil data on a monthly basis)
- **Time Range:** January 1973 - December 2018
- **Records:** 552 months
- **Countries:** 13 OPEC members (Algeria, Angola, Ecuador, Gabon, Iran, Iraq, Kuwait, Libya, Nigeria, Qatar, Saudi Arabia, UAE, Venezuela)
- **Unit:** Thousand Barrels per Day

## Objectives
1. Calculate total OPEC production for specific periods
2. Identify peak production months
3. Analyze individual country production trends
4. Find periods of low production

## Queries & Findings

### Query 1: Total OPEC Production in 1973
Total production: 357,873 thousand barrels
Shows baseline production at OPEC's early years.

### Query 2: Maximum Monthly Production
Peak: 36,475.8 thousand barrels/day
Indicates OPEC's production capacity.

### Query 3: Saudi Arabia Average Production
Average: 8,004.05 thousand barrels/day
Confirms Saudi Arabia's role as largest producer.

### Query 4: Low Production Months
Found 83 months below 20,000 barrels/day (1981-1982 period)
Corresponds with oil embargo and supply crisis.

### Query 5: Top 5 Production Months
Recent peaks in 2016-2018 show recovery and growth.

## Tools Used
- MySQL
- SQL (SELECT, SUM, MAX, AVG, WHERE, ORDER BY, LIMIT)

## Files
- `queries.sql` - All 5 SQL queries
- `data/opec-oil-data.csv` - Raw dataset

## How to Use
1. Import CSV into MySQL database
2. Create table with columns: Month, Crude_Oil_Production_Algeria, etc.
3. Run queries from `queries.sql` file
4. Compare results with findings above

## Key Takeaways
- OPEC production peaked in 2018
- Saudi Arabia consistently leads production
- 1981-1982 saw major supply disruptions
- Production has been recovering since 2016
