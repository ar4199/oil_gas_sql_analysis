# OPEC Oil Production Trends

## Objectives
1. Average production by Countries in the 1970s
2. Average production by Countries in the 2010s
3. Production change (growth or decline)
4. Percentage change
5. Countries that increased production

## Oueries & Findings

### Query 1: Average production by countries in 1970s

**Top Producers(1970)**
- Saudi Arabia: 8400
- Iran: 5312
- Venezuela: 2534

### Query 2: Average production by countries in 2010s

**Top Producers(2010)**
- Saudi Arabia: 9827
- Iran: 3778
- Iraq: 3485

### Query 3: Production Change (Absolute)
Calculates the difference in thousand barrels/day between 2010s and 1970s.

**Biggest Growers:**
- Angola: +1,612.95 (explosive growth from 153 to 1,766)
- Saudi Arabia: +1,427.04 (steady growth)
- UAE: +1,219.65

**Biggest Decliners:**
- Iran: -1,534.35 (collapsed from 5,312 to 3,778)
- Libya: -1,010.66
- Venezuela: -194.22

### Query 4: Percentage Change
Shows relative growth/decline as percentage of 1970s production.

**Highest Growth (%):**
- Angola: 1,051% (became major producer)
- Qatar: 204%
- Ecuador: 174%
- UAE: 68.4%

**Biggest Decline (%):**
- Libya: -53.4%
- Iran: -28.8%
- Venezuela: -7.68%

### Query 5: Countries with Production Growth
Filters only countries where 2010s > 1970s, ranked by percentage growth.

**9 Countries Grew:**
1. Angola: 1,051%
2. Qatar: 204%
3. Ecuador: 174%
4. UAE: 68.4%
5. Gabon: 43.2%
6. Algeria: 29.2%
7. Saudi Arabia: 16.9%
8. Kuwait: 13.4%
9. Nigeria: 8.1%

**3 Countries Declined:**
- Iran, Libya, Venezuela

## Key Insights
1. **OPEC Shift:** Established producers (Iran, Libya, Venezuela) lost dominance. Newer members (Angola, Ecuador, Qatar) exploded.
2. **Saudi Arabia:** Maintained leadership but with modest 17% growth.
3. **Middle East Stability:** Iraqi production collapsed in 1970s (sanctions), recovered in 2010s.
4. **Geopolitical Impact:** Iran's decline reflects sanctions and production struggles. Venezuela's decline visible even before recent crisis.

## Skills Learned
- CASE statements for conditional aggregation
- UNION ALL for unpivoting data
- Subqueries with WHERE on calculated columns
- Percentage calculations
- Data comparison across decades

## Tools Used
- MySQL
- SQL (CASE, AVG, UNION ALL, WHERE, ORDER BY)

## Files
- `queries.sql` - All 5 SQL queries with comments
