SELECT 
    SUBSTR(time, 1, 2) AS crash_hour,
    COUNT(*) AS total_collisions,
    -- Count severe crashes in that hour
    SUM(CASE WHEN collision_severity IN (1, 2) THEN 1 ELSE 0 END) AS severe_collisions
FROM [road-collisions-2023]
WHERE time IS NOT NULL AND time != ''
GROUP BY crash_hour
ORDER BY total_collisions DESC;
