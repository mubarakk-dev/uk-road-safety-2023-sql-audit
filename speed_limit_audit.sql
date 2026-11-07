SELECT 
    speed_limit,
    COUNT(*) AS total_crashes,
    -- Count only fatal (1) and serious (2) collisions
    SUM(CASE WHEN collision_severity IN (1, 2) THEN 1 ELSE 0 END) AS severe_crashes,
    -- Calculate the percentage of crashes that were severe
    ROUND(
        (CAST(SUM(CASE WHEN collision_severity IN (1, 2) THEN 1 ELSE 0 END) AS REAL) / COUNT(*)) * 100, 
        2
    ) AS severity_percentage
FROM [road-collisions-2023]
WHERE speed_limit IS NOT NULL AND speed_limit > 0
GROUP BY speed_limit
ORDER BY speed_limit ASC;
