REVIEW
===

**NOTE:** all the upper characters should use the actual name in your case or example, like here the TABLE should be your
table name.


1. select unique value from one colume: `select distinct KEY from TABLE`

2. delete some items from table: `delete from TABLE where XXX`

3. update the counter, otherwise when inserting it will not continue to grow the counter from current list, but from
   the deleted items: `alter table TABLE_NAME auto_increment=1`

4. run some SQL script in MySQL: `>>> source XXX.sql`

5. Limiting the output result, different SQL implementation has different statement(here output top5 items)

     for `Microsoft SQL`, use the `TOP X` to select the first X items, `select top 5 item_name from TABLE`
     for `DB2`, use `select item_name from TABLE fetch first 5 rows only`
     for `Oracle`, use `select item_name from TABLE where ROWNUM <= 5`
     for `MySQL`, use `select item_name from TABLE limit 5`
     for setting start point, we can use `select item_name from TABLE limit 5 offset 5`, that will start from 5 to 10
     for `MySQL`, use `limit 3, 4` to set from 3 and has the size of 4 items.

6. use `sort by` to sort the inquiried result, for example, `select item_name from products order by item_name`, or like
below use two orders, `select prod_id, prod_price, prod_name from Products order by prod_price, prod_name;`

7. use `DESC` to make it order in reverse direction. `select XXX order by prod_price DESC`

8. `Where` and `AND` usage, `select XXX where XXX AND XXX;`, there're two where statement for selecting.

9. Using `IN` Operator, `select XXX where vendor_id IN ('DLL01', 'BRS01')`, note for `IN` usage.
