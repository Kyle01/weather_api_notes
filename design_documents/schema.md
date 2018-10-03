
# Schema #

## `Users` ##
column name     | data type   | details
-------------   |-------------| --------------------
id              | integer     | primary ID
username        | string      | not null, indexed, unique
password_digest | string      | not null
session_token   | string      | not null, indexed, unique
created_at      | datetime    | not null
updated_at      | datetime    | not null

* index on `id, unique: true`
* `portfolioId` references `portfolios`

## `Trips` ##
column name     | data type   | details
-------------   |-------------| ---------------------
id              | Integer     | primary ID, indexed, unique
userId          | Integer     | foreign Id
coin            | String      | not null, verified string
price           | float       | not null
size            | String      | not null
buy?            | boolean     | not null
created_at      | datetime    | not null
updated_at      | datetime    | not null

* index on `id, unique: true`

## `Trails` ##
`column name `  | `data type`       | `details`
-------------   |-------------      | ---------------------
id              | integer           | primary ID
name            | string            | string
length          | float             | float (in miles)
created_at      | datetime          | not null
updated_at      | datetime          | not null

* index on `id`, `unqiue: true`
* `has_many` `spots`

## `Spots` ##
`column name `  | `data type`       | `details`
-------------   |-------------      | ---------------------
id              | integer           | primary ID
name            | string            | string
latitude        | float             | float
longtitude      | float             | float
elevation       | float             | float
symbol          | string            | float
trail_id        | integer           | foreign ID
created_at      | datetime          | not null
updated_at      | datetime          | not null

* index on `id`, `unqiue: true`
* `trail_id` references `trails` 
