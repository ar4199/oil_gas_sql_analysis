-- WEEK 2: OPEC PRODUCTION TRENDS (1970s vs 2010s)
-- =====================================================

-- QUERY 1: Average production by country in 1970s
SELECT 'Algeria' as country, AVG(Crude_Oil_Production_Algeria) as production_1970s
FROM oil_production_data
WHERE Months LIKE '197%'

UNION ALL

SELECT 'Angola', AVG(Crude_Oil_Production_Angola)
FROM oil_production_data
WHERE Months LIKE '197%'

UNION ALL

SELECT 'Ecuador', AVG(Crude_Oil_Production_Ecuador)
FROM oil_production_data
WHERE Months LIKE '197%'

union all
select 'Gabon', avg(Crude_Oil_Production_Gabon)
from oil_production_data
where months like '197%'

union all
select 'Iran', avg(Crude_Oil_Production_iran)
from oil_production_data
where months like '197%'

union all
select 'Iraq', avg(Crude_Oil_Production_Iraq)
from oil_production_data
where months like '197%'

union all
select 'Kuwait', avg(Crude_Oil_Production_Kuwait)
from oil_production_data
where months like '197%'

union all
select 'Libya', avg(Crude_Oil_Production_Libya)
from oil_production_data
where months like '197%'

union all
select 'Nigeria', avg(Crude_Oil_Production_Nigeria)
from oil_production_data
where months like '197%'

union all
select 'Qatar', avg(Crude_Oil_Production_qatar)
from oil_production_data
where months like '197%'

union all
select 'Saudi Arabia', avg(Crude_Oil_Production_Saudi_Arabia)
from oil_production_data
where months like '197%'

union all
select 'UAE', avg(Crude_Oil_Production_United_Arab_Emirates)
from oil_production_data
where months like '197%'

union all
select 'Venezuela', avg(Crude_Oil_Production_Venezuela)
from oil_production_data
where months like '197%'

order by production_1970s desc

-- =====================================================

-- QUERY 2: Average production by country in 2010s
SELECT 'Algeria' as country, AVG(Crude_Oil_Production_Algeria) as production_2010s
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Angola', AVG(Crude_Oil_Production_Angola)
FROM oil_production_data
WHERE Months LIKE '201%'

UNION ALL

SELECT 'Ecuador', AVG(Crude_Oil_Production_Ecuador)
FROM oil_production_data
WHERE Months LIKE '201%'

union all
select 'Gabon', avg(Crude_Oil_Production_Gabon)
from oil_production_data
where months like '201%'

union all
select 'Iran', avg(Crude_Oil_Production_iran)
from oil_production_data
where months like '201%'

union all
select 'Iraq', avg(Crude_Oil_Production_Iraq)
from oil_production_data
where months like '201%'

union all
select 'Kuwait', avg(Crude_Oil_Production_Kuwait)
from oil_production_data
where months like '201%'

union all
select 'Libya', avg(Crude_Oil_Production_Libya)
from oil_production_data
where months like '201%'

union all
select 'Nigeria', avg(Crude_Oil_Production_Nigeria)
from oil_production_data
where months like '201%'

union all
select 'Qatar', avg(Crude_Oil_Production_qatar)
from oil_production_data
where months like '201%'

union all
select 'Saudi Arabia', avg(Crude_Oil_Production_Saudi_Arabia)
from oil_production_data
where months like '201%'

union all
select 'UAE', avg(Crude_Oil_Production_United_Arab_Emirates)
from oil_production_data
where months like '201%'

union all
select 'Venezuela', avg(Crude_Oil_Production_Venezuela)
from oil_production_data
where months like '201%'

order by production_2010s desc
-- =====================================================

-- QUERY 3: Production change (absolute growth/decline)
select 'Algeria' as country,
avg(case when months like '197%' then crude_oil_production_algeria end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_algeria end) as avg_2010,
(avg(case when months like '201%' then crude_oil_production_algeria end) - 
avg(case when months like '197%' then crude_oil_production_algeria end)) as changes
from oil_production_data
union all
select 'Angola' as country,
avg(case when months like '197%' then Crude_Oil_Production_Angola end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Angola end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Angola end) -
avg(case when months like '197%' then Crude_Oil_Production_Angola end)) as changes
from oil_production_data
union all
select 'Ecuador' as country,
avg(case when months like '197%' then Crude_Oil_Production_ecuador end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_ecuador end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Ecuador end) -
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end)) as changes
from oil_production_data
union all
select 'Gabon' as country,
avg(case when months like '197%' then Crude_Oil_Production_Gabon end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Gabon end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Gabon end) -
avg(case when months like '197%' then Crude_Oil_Production_Gabon end)) as changes
from oil_production_data
union all
select 'Iran' as country,
avg(case when months like '197%' then Crude_Oil_Production_iran end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Iran end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_iran end) -
avg(case when months like '197%' then Crude_Oil_Production_iran end)) as changes
from oil_production_data
union all
select 'iraq' as country,
avg(case when months like '197%' then Crude_Oil_Production_iraq end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_iraq end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_iraq end) -
avg(case when months like '197%' then Crude_Oil_Production_iraq end)) as changes
from oil_production_data
union all
select 'Kuwait' as country,
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Kuwait end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Kuwait end) -
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end)) as changes
from oil_production_data
union all
select 'Libya' as country,
avg(case when months like '197%' then Crude_Oil_Production_Libya end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Libya end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Libya end) -
avg(case when months like '197%' then Crude_Oil_Production_Libya end)) as changes
from oil_production_data
union all
select 'Nigeria' as country,
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Nigeria end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Nigeria end) -
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end)) as changes
from oil_production_data
union all
select 'Qatar' as country,
avg(case when months like '197%' then Crude_Oil_Production_Qatar end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Qatar end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Qatar end) -
avg(case when months like '197%' then Crude_Oil_Production_Qatar end)) as changes
from oil_production_data
union all
select 'Saudi Arabia' as country,
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) -
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end)) as changes
from oil_production_data
union all
select 'UAE' as country,
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) -
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end)) as changes
from oil_production_data
union all
select 'Venezuela' as country,
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end) as avg_1970,
avg(Case when months like '201%' then Crude_Oil_Production_Venezuela end) as avg_2010,
(Avg(case when months like '201%' then Crude_Oil_Production_Venezuela end) -
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end)) as changes
from oil_production_data
order by changes desc

-- =====================================================

-- QUERY 4: Percentage change
select 'Algeria' as country,
avg(case when months like '197%' then crude_oil_production_algeria end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_algeria end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_algeria end) - 
avg(case when months like '197%' then crude_oil_production_algeria end))/
avg(case when months like '197%' then crude_oil_production_algeria end)) *100 as percentage_change
from oil_production_data
union all
select 'Angola' as country,
avg(case when months like '197%' then crude_oil_production_angola end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_angola end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_angola end) - 
avg(case when months like '197%' then crude_oil_production_angola end))/
avg(case when months like '197%' then crude_oil_production_angola end)) *100 as percentage_change
from oil_production_data
union all
select 'Ecuador' as country,
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Ecuador end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Ecuador end) - 
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end))/
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end)) *100 as percentage_change
from oil_production_data
union all
select 'Gabon' as country,
avg(case when months like '197%' then Crude_Oil_Production_Gabon end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Gabon end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Gabon end) - 
avg(case when months like '197%' then Crude_Oil_Production_Gabon end))/
avg(case when months like '197%' then Crude_Oil_Production_Gabon end)) *100 as percentage_change
from oil_production_data
union all
select 'Iran' as country,
avg(case when months like '197%' then crude_oil_production_iran end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_iran end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_iran end) - 
avg(case when months like '197%' then crude_oil_production_iran end))/
avg(case when months like '197%' then crude_oil_production_iran end)) *100 as percentage_change
from oil_production_data
union all
select 'Iraq' as country,
avg(case when months like '197%' then crude_oil_production_iraq end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_iraq end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_iraq end) - 
avg(case when months like '197%' then crude_oil_production_iraq end))/
avg(case when months like '197%' then crude_oil_production_iraq end)) *100 as percentage_change
from oil_production_data
union all
select 'Kuwait' as country,
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Kuwait end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Kuwait end) - 
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end))/
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end)) *100 as percentage_change
from oil_production_data
union all
select 'Libya' as country,
avg(case when months like '197%' then Crude_Oil_Production_Libya end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Libya end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Libya end) - 
avg(case when months like '197%' then Crude_Oil_Production_Libya end))/
avg(case when months like '197%' then Crude_Oil_Production_Libya end)) *100 as percentage_change
from oil_production_data
union all
select 'Nigeria' as country,
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Nigeria end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Nigeria end) - 
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end))/
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end)) *100 as percentage_change
from oil_production_data
union all
select 'Qatar' as country,
avg(case when months like '197%' then Crude_Oil_Production_Qatar end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Qatar end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Qatar end) - 
avg(case when months like '197%' then Crude_Oil_Production_Qatar end))/
avg(case when months like '197%' then Crude_Oil_Production_Qatar end)) *100 as percentage_change
from oil_production_data
union all
select 'Saudi Arabia' as country,
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) - 
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end))/
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end)) *100 as percentage_change
from oil_production_data
union all
select 'UAE' as country,
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) - 
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end))/
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end)) *100 as percentage_change
from oil_production_data
union all
select 'Venezuela' as country,
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Venezuela end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Venezuela end) - 
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end))/
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end)) *100 as percentage_change
from oil_production_data
order by percentage_change desc

-- =====================================================

-- QUERY 5: Countries with production growth (filtered)
select * from(
select 'Algeria' as country,
avg(case when months like '197%' then crude_oil_production_algeria end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_algeria end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_algeria end) - 
avg(case when months like '197%' then crude_oil_production_algeria end))/
avg(case when months like '197%' then crude_oil_production_algeria end)) *100 as percentage_change
from oil_production_data
union all
select 'Angola' as country,
avg(case when months like '197%' then crude_oil_production_angola end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_angola end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_angola end) - 
avg(case when months like '197%' then crude_oil_production_angola end))/
avg(case when months like '197%' then crude_oil_production_angola end)) *100 as percentage_change
from oil_production_data
union all
select 'Ecuador' as country,
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Ecuador end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Ecuador end) - 
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end))/
avg(case when months like '197%' then Crude_Oil_Production_Ecuador end)) *100 as percentage_change
from oil_production_data
union all
select 'Gabon' as country,
avg(case when months like '197%' then Crude_Oil_Production_Gabon end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Gabon end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Gabon end) - 
avg(case when months like '197%' then Crude_Oil_Production_Gabon end))/
avg(case when months like '197%' then Crude_Oil_Production_Gabon end)) *100 as percentage_change
from oil_production_data
union all
select 'Iran' as country,
avg(case when months like '197%' then crude_oil_production_iran end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_iran end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_iran end) - 
avg(case when months like '197%' then crude_oil_production_iran end))/
avg(case when months like '197%' then crude_oil_production_iran end)) *100 as percentage_change
from oil_production_data
union all
select 'Iraq' as country,
avg(case when months like '197%' then crude_oil_production_iraq end) as avg_1970,
avg(case when months like '201%' then crude_oil_production_iraq end) as avg_2010,
((Avg(case when months like '201%' then crude_oil_production_iraq end) - 
avg(case when months like '197%' then crude_oil_production_iraq end))/
avg(case when months like '197%' then crude_oil_production_iraq end)) *100 as percentage_change
from oil_production_data
union all
select 'Kuwait' as country,
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Kuwait end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Kuwait end) - 
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end))/
avg(case when months like '197%' then Crude_Oil_Production_Kuwait end)) *100 as percentage_change
from oil_production_data
union all
select 'Libya' as country,
avg(case when months like '197%' then Crude_Oil_Production_Libya end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Libya end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Libya end) - 
avg(case when months like '197%' then Crude_Oil_Production_Libya end))/
avg(case when months like '197%' then Crude_Oil_Production_Libya end)) *100 as percentage_change
from oil_production_data
union all
select 'Nigeria' as country,
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Nigeria end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Nigeria end) - 
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end))/
avg(case when months like '197%' then Crude_Oil_Production_Nigeria end)) *100 as percentage_change
from oil_production_data
union all
select 'Qatar' as country,
avg(case when months like '197%' then Crude_Oil_Production_Qatar end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Qatar end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Qatar end) - 
avg(case when months like '197%' then Crude_Oil_Production_Qatar end))/
avg(case when months like '197%' then Crude_Oil_Production_Qatar end)) *100 as percentage_change
from oil_production_data
union all
select 'Saudi Arabia' as country,
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Saudi_Arabia end) - 
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end))/
avg(case when months like '197%' then Crude_Oil_Production_Saudi_Arabia end)) *100 as percentage_change
from oil_production_data
union all
select 'UAE' as country,
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_United_Arab_Emirates end) - 
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end))/
avg(case when months like '197%' then Crude_Oil_Production_United_Arab_Emirates end)) *100 as percentage_change
from oil_production_data
union all
select 'Venezuela' as country,
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end) as avg_1970,
avg(case when months like '201%' then Crude_Oil_Production_Venezuela end) as avg_2010,
((Avg(case when months like '201%' then Crude_Oil_Production_Venezuela end) - 
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end))/
avg(case when months like '197%' then Crude_Oil_Production_Venezuela end)) * 100 as percentage_change
from oil_production_data ) as growth_data
where percentage_change > 0
order by percentage_change desc
