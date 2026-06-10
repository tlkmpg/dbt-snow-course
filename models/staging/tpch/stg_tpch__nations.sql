with source as (
    select * from {{ source('tpch', 'nation')}}
),

renamed as (
    select
        -- Primary key
        N_NATIONKEY         as nation_id,

        -- Foreign key
        N_REGIONKEY         as region_id,

        -- Customer attributes
        N_NAME              as nation_name,
        N_COMMENT           as nation_comment

    from source
)

select * from renamed
-- place update simulation here