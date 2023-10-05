WITH typecasted_id AS (
  SELECT
    *,
    CAST(id AS bigint) AS id_bigint
  FROM
    {{ ref('companies_scd') }}
)

SELECT * FROM companies_dbt;
