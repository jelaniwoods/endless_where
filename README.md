# endless where bug

[Click here to setup a Gitpod workspace](https://gitpod.io/#https://github.com/raghubetina/endless_where) to try out the following.

 - `bin/setup`
 - `rails db:seed` to create four `Person`s, aged 16, 17, 18, and 19.
 - In `rails console`, try:
    - `Person.where(age: ..18).count`
   
        Which correctly produces a `lteq` query:
   
        ```
        (0.2ms)  SELECT COUNT(*) FROM "people" WHERE "people"."age" <= ?  [["age", 18]]
        => 3
        ```
    - `Person.where(age: ...18).count`
   
        Which correctly produces a `lt` query:
   
        ```
        (0.2ms)  SELECT COUNT(*) FROM "people" WHERE "people"."age" < ?  [["age", 18]]
        => 2
        ```
    - `Person.where(age: 18..).count`
   
        Which correctly produces a `gteq` query:
   
        ```
        (0.2ms)  SELECT COUNT(*) FROM "people" WHERE "people"."age" >= ?  [["age", 18]]
        => 2
        ```
    - `Person.where(age: 18...).count`
   
        Which seems to **incorrectly** produce a `gteq` query rather than a `gt` query:
   
        ```
        (0.2ms)  SELECT COUNT(*) FROM "people" WHERE "people"."age" >= ?  [["age", 18]]
        => 2
        ```

        `Person.where(Person.arel_table[:age].gt(18)).count` correctly produces a `gt` query:

        ```
        (0.2ms)  SELECT COUNT(*) FROM "people" WHERE "people"."age" > 18
        => 1
        ```

A bug?
