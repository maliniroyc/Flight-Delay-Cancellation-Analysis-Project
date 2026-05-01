CREATE TABLE flights (
    flight_id           INT PRIMARY KEY,
    airline             VARCHAR(50), 
    flight_number       TEXT,
    origin              VARCHAR(10),
    destination         VARCHAR(10),
    scheduled_departure TIMESTAMP,
    actual_departure    TIMESTAMP NULL,
    delay_minutes       NUMERIC NULL, 
    canceled            BOOLEAN
);


DROP TABLE flights;

select count(*) from flights;
select * from flights;

--1.check if we have missing data in departure times or delays?
select * from flights
where actual_departure is null or delay_minutes is null;

--2.Calculate Average Delay by Airline
SELECT airline, ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM flights
WHERE canceled = false
GROUP BY airline
ORDER BY avg_delay DESC;

--3.Analyze Delay by Time of Day
SELECT 
  CASE
    WHEN EXTRACT(HOUR FROM scheduled_departure) BETWEEN 5 AND 11 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM scheduled_departure) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
  END AS time_of_day,
  ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM flights
WHERE canceled = false
GROUP BY time_of_day
ORDER BY avg_delay DESC;

--4.Identify Most Delayed Airports
SELECT origin, ROUND(AVG(delay_minutes), 2) AS avg_delay
FROM flights
WHERE canceled = false
GROUP BY origin
ORDER BY avg_delay DESC;

--5.Cancellations by Airline
SELECT 
    airline,
    COUNT(*) AS total_flights,
    SUM(CASE WHEN canceled = TRUE THEN 1 ELSE 0 END) AS canceled_flights,
    SUM(CASE WHEN canceled = FALSE THEN 1 ELSE 0 END) AS operated_flights,
    -- Calculate cancellation rate
    ROUND(
        (SUM(CASE WHEN canceled = TRUE THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS cancellation_rate_percent
FROM 
    flights
GROUP BY 
    airline
ORDER BY 
    cancellation_rate_percent DESC;

--6. Summary 
SELECT 
    airline, 
    ROUND(AVG(delay_minutes), 2) AS avg_delay, 
    SUM(CASE WHEN canceled = TRUE THEN 1 ELSE 0 END) AS total_cancelled, 
    COUNT(*) AS total_flights, 
    ROUND(SUM(CASE WHEN canceled = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancel_rate_percent
FROM flights
GROUP BY airline
ORDER BY avg_delay DESC;

