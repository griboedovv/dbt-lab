with raw_data as (
    -- Имитация структуры данных из вашего генератора (generator.py)
    select 'Toyota Camry' as car, 'Ivanov Ivan' as user_name, 30 as duration_min, 15.5 as distance_km, 150.0 as fare
    union all
    select 'Kia Rio', 'Petrova Anna', 45, 20.0, 500.0
    union all
    select 'VW Polo', 'Sidorov Dmitry', 10, 5.0, -120.50 -- Имитация невалидного сообщения (fare <= 0)
)
select 
    car, user_name, duration_min, distance_km, fare,
    case 
        when fare > 0 and distance_km >= 0 and duration_min > 0 then 'VALID'
        else 'NOT VALID'
    end as validation_status
from raw_data

