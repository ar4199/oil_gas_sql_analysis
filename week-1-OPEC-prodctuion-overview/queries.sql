-- Query 1: Total OPEC Production in 1973
SELECT SUM(Crude_Oil_Production_Total_OPEC) as total_production
FROM oil_production_data
WHERE months LIKE '1973%';

-- Query 2: Maximum Monthly Production
SELECT MAX(Crude_Oil_Production_Total_OPEC)
FROM oil_production_data;

-- Query 3: Average Saudi Arabia Production
SELECT AVG(Crude_Oil_Production_Saudi_Arabia)
FROM oil_production_data;

-- Query 4: Months with Production Below 20,000
SELECT months
FROM oil_production_data
WHERE Crude_Oil_Production_Total_OPEC < 20000;

-- Query 5: Top 5 Production Months
SELECT months
FROM oil_production_data
ORDER BY Crude_Oil_Production_Total_OPEC DESC
LIMIT 5;
