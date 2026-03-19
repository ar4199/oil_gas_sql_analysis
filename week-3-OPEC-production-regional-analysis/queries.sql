-- WEEK 3: REGIONAL ANALYSIS & PERFORMANCE METRICS
-- =====================================================

-- QUERY 1: Total production by region in 1970s
SELECT 'Middle East' as region,
  SUM(Crude_Oil_Production_Iran) + 
  SUM(Crude_Oil_Production_Iraq) + 
  SUM(Crude_Oil_Production_Kuwait) + 
  SUM(Crude_Oil_Production_Qatar) + 
  SUM(Crude_Oil_Production_Saudi_Arabia) + 
  SUM(Crude_Oil_Production_United_Arab_Emirates) as total_production,
  (SUM(Crude_Oil_Production_Iran) + 
   SUM(Crude_Oil_Production_Iraq) + 
   SUM(Crude_Oil_Production_Kuwait) + 
   SUM(Crude_Oil_Production_Qatar) + 
   SUM(Crude_Oil_Production_Saudi_Arabia) + 
   SUM(Crude_Oil_Production_United_Arab_Emirates)) / 6 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '197%'

UNION ALL

SELECT 'Africa' as region,
  SUM(Crude_Oil_Production_Algeria) + 
  SUM(Crude_Oil_Production_Angola) + 
  SUM(Crude_Oil_Production_Gabon) + 
  SUM(Crude_Oil_Production_Libya) + 
  SUM(Crude_Oil_Production_Nigeria) as total_production,
  (SUM(Crude_Oil_Production_Algeria) + 
   SUM(Crude_Oil_Production_Angola) + 
   SUM(Crude_Oil_Production_Gabon) + 
   SUM(Crude_Oil_Production_Libya) + 
   SUM(Crude_Oil_Production_Nigeria)) / 5 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '197%'

UNION ALL

SELECT 'Latin America' as region,
  SUM(Crude_Oil_Production_Venezuela) + 
  SUM(Crude_Oil_Production_Ecuador) as total_production,
  (SUM(Crude_Oil_Production_Venezuela) + 
   SUM(Crude_Oil_Production_Ecuador)) / 2 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '197%'

ORDER BY total_production DESC;

-- =====================================================

-- QUERY 2: Total production by region in 2010s
SELECT 'Middle East' as region,
  SUM(Crude_Oil_Production_Iran) + 
  SUM(Crude_Oil_Production_Iraq) + 
  SUM(Crude_Oil_Production_Kuwait) + 
  SUM(Crude_Oil_Production_Qatar) + 
  SUM(Crude_Oil_Production_Saudi_Arabia) + 
  SUM(Crude_Oil_Production_United_Arab_Emirates) as total_production,
  (SUM(Crude_Oil_Production_Iran) + 
   SUM(Crude_Oil_Production_Iraq) + 
   SUM(Crude_Oil_Production_Kuwait) + 
   SUM(Crude_Oil_Production_Qatar) + 
   SUM(Crude_Oil_Production_Saudi_Arabia) + 
   SUM(Crude_Oil_Production_United_Arab_Emirates)) / 6 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Africa' as region,
  SUM(Crude_Oil_Production_Algeria) + 
  SUM(Crude_Oil_Production_Angola) + 
  SUM(Crude_Oil_Production_Gabon) + 
  SUM(Crude_Oil_Production_Libya) + 
  SUM(Crude_Oil_Production_Nigeria) as total_production,
  (SUM(Crude_Oil_Production_Algeria) + 
   SUM(Crude_Oil_Production_Angola) + 
   SUM(Crude_Oil_Production_Gabon) + 
   SUM(Crude_Oil_Production_Libya) + 
   SUM(Crude_Oil_Production_Nigeria)) / 5 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Latin America' as region,
  SUM(Crude_Oil_Production_Venezuela) + 
  SUM(Crude_Oil_Production_Ecuador) as total_production,
  (SUM(Crude_Oil_Production_Venezuela) + 
   SUM(Crude_Oil_Production_Ecuador)) / 2 as avg_per_country
FROM oil_production_data
WHERE Months LIKE '201%'

ORDER BY total_production DESC;

-- =====================================================

-- QUERY 3: Production per member by region (2010s)
-- Shows efficiency: which region gets more production per country
SELECT 'Middle East' as region,
  (SUM(Crude_Oil_Production_Iran) + 
   SUM(Crude_Oil_Production_Iraq) + 
   SUM(Crude_Oil_Production_Kuwait) + 
   SUM(Crude_Oil_Production_Qatar) + 
   SUM(Crude_Oil_Production_Saudi_Arabia) + 
   SUM(Crude_Oil_Production_United_Arab_Emirates)) / 6 as production_per_member
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Africa' as region,
  (SUM(Crude_Oil_Production_Algeria) + 
   SUM(Crude_Oil_Production_Angola) + 
   SUM(Crude_Oil_Production_Gabon) + 
   SUM(Crude_Oil_Production_Libya) + 
   SUM(Crude_Oil_Production_Nigeria)) / 5 as production_per_member
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Latin America' as region,
  (SUM(Crude_Oil_Production_Venezuela) + 
   SUM(Crude_Oil_Production_Ecuador)) / 2 as production_per_member
FROM oil_production_data
WHERE Months LIKE '201%'

ORDER BY production_per_member DESC;

-- =====================================================

-- QUERY 4: Regional comparison - growth analysis (1970s vs 2010s)
SELECT 'Middle East' as region,
  SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Iran + 
    Crude_Oil_Production_Iraq + 
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END) as production_1970s,
  SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Iran +
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END) as production_2010s,
  (SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Iran+ 
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END) -
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Iran+
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END)) as production_changes,
  ((SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Iran+
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END) -
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Iran+
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END)) /
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Iran+
    Crude_Oil_Production_Iraq +
    Crude_Oil_Production_Kuwait +
    Crude_Oil_Production_Qatar +
    Crude_Oil_Production_Saudi_Arabia + 
    Crude_Oil_Production_United_Arab_Emirates END)) *100 as percentage_changes
FROM oil_production_data

UNION ALL

SELECT 'Africa' as region,
  SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END) as production_1970s,
  SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END) as production_2010s,
  (SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END) - 
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END)) as production_changes,
  ((SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END) - 
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END)) / 
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Algeria +
    Crude_Oil_Production_Angola+ 
    Crude_Oil_Production_Gabon+
    Crude_Oil_Production_Libya+ 
    Crude_Oil_Production_Nigeria END))*100 as percentage_changes
FROM oil_production_data

UNION ALL

SELECT 'Latin America' as region,
  SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END) as production_1970s,
  SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END) as production_2010s,
  (SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END) - 
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END)) as production_changes,
  ((SUM(CASE WHEN Months LIKE '201%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END) -
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END))/
   SUM(CASE WHEN Months LIKE '197%' THEN 
    Crude_Oil_Production_Ecuador + 
    Crude_Oil_Production_Venezuela END)) * 100 as percentage_changes
FROM oil_production_data

ORDER BY percentage_changes DESC;
