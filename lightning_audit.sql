SELECT 
    CASE light_conditions
        WHEN 1 THEN 'Daylight'
        WHEN 4 THEN 'Darkness: street lights lit'
        WHEN 5 THEN 'Darkness: street lights unlit'
        WHEN 6 THEN 'Darkness: no street lighting'
        WHEN 7 THEN 'Darkness: street lights unknown'
        ELSE 'Other/Unknown'
    END AS lighting_environment,
    COUNT(*) AS total_collisions,
    -- Calculate the severity percentage
    ROUND(
        (CAST(SUM(CASE WHEN collision_severity IN (1, 2) THEN 1 ELSE 0 END) AS REAL) / COUNT(*)) * 100, 
        2
    ) AS severity_percentage
FROM [road-collisions-2023]
WHERE light_conditions IS NOT NULL AND light_conditions > 0
GROUP BY light_conditions
ORDER BY total_collisions DESC;
