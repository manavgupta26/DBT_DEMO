WITH CTE AS(

    select
    t.*,
    w.*
    from {{ ref('trip_fact') }} t
    left join {{ ref('daily_weather') }} w
    ON t.TRIP_DATE = w.DAILY_WEATHER
    ORDER BY TRIP_DATE DESC

)
select * from CTE