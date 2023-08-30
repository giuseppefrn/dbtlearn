SELECT
    *
FROM
    {{ ref('fct_reviews') }} as f left join {{ ref('dim_listings_cleansed') }} as d
on f.LISTING_ID=d.LISTING_ID
WHERE review_date < created_at
LIMIT 10
