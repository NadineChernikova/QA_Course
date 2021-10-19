<H1>SQL Cheatsheet</h1>
  
- `SELECT` `DISTINCT` * or col1, col2, col3... `AS` 'new_col3' 
- `FROM` table1 t1
- `JOIN` table2 t2 `ON` t1.col1 = t2.col1
- `WHERE` col3 = 'Russia' `AND` col4 `LIKE` 'Mos%' `OR` col6 `IN` ('2015', '2018', '2021')
- `GROUP BY` col4
- `HAVING` count(*) > 1
- `ORDER BY` col2
- `LIMIT` `OFFSET` 10;