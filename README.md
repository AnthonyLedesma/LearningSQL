# Intermediate SQL

## Joins, Unions, and Subqueries

### Join
#### Inner Join
- `INNER` join returns rows when there is at least one match in both the tables.
- Avoid ambiguity by qualifying each column name with table name.
- Join tables based on relationships in addition to ad-hoc.
- Operators for join
  * `=`
  * `>`
  * `<`
  * `<=`
  * `>=`

#### Outer Join
- Left Outer Join
- Right Outer Join
- Full Outer Join*
  * Not supported by MySQL and must be simulated.
- Outer keyword is optional

#### Equi Join & Non-equi Join
- An `EQUI` join is a specific type of comparator-based join, that uses only equality comparisons in the join-predicate.
```sql
SELECT t1.*, t2.*
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.ID = t2.ID;
```
- A `NON-EQUI` join is a specific type of comparator-based join, that does not use equality comparisons in the join-predicate.
```sql
SELECT t1.*, t2.*
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.ID > t2.ID;
```

#### Self Join
- A `SELF` join is a join in which a table is joined with iteself.
- The user must alias tables used in self join
- The user must qualify each column name used in `SELECT` clauses with a table alias to avoid ambiguity.
```sql
SELECT t1.*, t2.*
FROM Table1 t1
INNER JOIN Table1 t2 ON t1.ID > t2.ID;
```

#### Natural Join
- A `NATURAL` join is a kind of join which joins two (or more) tables based on all the columns in the two tables with the same name.
- It can be either `INNER` or `OUTER` join.
```sql
SELECT t1.*, t2.*
FROM Table1 t1
NATURAL JOIN Table2 t2;
```

### Union Operators
- `UNION` combines two or more `SELECT` statements into a single result set.
- Each `SELECT` statment of `UNION` operator must have the same number of Columns.
- `UNION` removes duplicate rows.
- `UNION ALL` does not remove duplicate rows.
- Only one `ORDER BY` clause sorting entire result set.
- Simulate `FULL OUTER JOIN` using `LEFT` and `RIGHT` join with `UNION`.
```sql
SELECT t1.ID T1ID, t1.Value AS T1Value
FROM Table1 t1
UNION ALL
SELECT t2.ID T2ID, t2.Value AS T2Value
FROM Table2 t2;
```

### Subqueries
- A subquery is a nested query where the results of one query can be used in another query via a relational operator or aggregation function.
- A subquery must be enclosed within parentheses.
- A subquery can have only one column in the `SELECT` clause if used in `WHERE` clause.
- An `ORDER BY` clause is not allowed in a subquery.
- Subqueries can be nested within other subqueries.
- Subqueries are used in `WHERE`, `HAVING`, `FROM`, and `SELECT` clause.
```sql
SELECT t1.*
FROM Table1 t1
WHERE t1.ID NOT IN (SELECT t2.ID FROM Table2 t2);
```

