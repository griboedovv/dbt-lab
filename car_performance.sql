select 
    car,
    count(*) as total_trips,
    sum(fare) as total_revenue,
    sum(distance_km) as total_distance_km
from {{ ref('stg_trips') }}
where validation_status = 'VALID'
group by 1
