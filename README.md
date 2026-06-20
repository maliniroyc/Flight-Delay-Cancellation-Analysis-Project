# Flight Delay & Cancellation Analysis – SQL & Power BI
<img width="793" height="400" alt="dataset-cover" src="https://github.com/user-attachments/assets/31564b36-b27b-4bec-8d7b-2878dcafd9c1" />

### Project Overview
The Flight Delay & Cancellation Analysis project was developed to identify the key factors contributing to airline delays and cancellations and provide actionable insights to improve operational performance. Airlines often face challenges in monitoring service reliability due to inconsistent data, limited visibility into route performance, and the absence of centralized reporting.

Using SQL and Power BI, this project analyzes flight operations data to uncover delay patterns across airlines, airports, routes, and time periods. The outcome is an interactive dashboard that enables stakeholders to monitor critical KPIs, identify operational bottlenecks, and support data-driven decision-making.

### Business Problem
Frequent flight delays and cancellations negatively impact customer satisfaction, operational efficiency, and airline profitability. Leadership teams lacked a clear view of:

<br>Which airlines experienced the highest delays and cancellations<br>
<br>Which airports and routes consistently underperformed<br>
<br>Peak periods contributing to operational bottlenecks<br>
<br>Overall trends in flight reliability over time<br>

The objective was to transform raw flight data into meaningful business insights that could help optimize scheduling, improve reliability, and reduce customer complaints.

### Solution
Cleaned and validated missing departure and delay data using SQL queries.

Designed KPIs: Total Flights, % Canceled, Avg Delay, % Delayed.

Built interactive Power BI dashboards with line charts, bar charts, and route/time matrices.

Delivered insights on airline reliability, airport delays, and time‑of‑day bottlenecks.

### Approach
Applied SQL functions (IS NULL, AVG, GROUP BY, CASE WHEN) for data cleaning and analysis.

Created calculated columns with DAX (Departure Hour, Day of Week, Route, Is Delayed).

Developed measures for KPIs (Total Flights, Avg Delay, % Canceled, % Delayed).

Added slicers for Airline, Origin, Destination, Time, and Day filters to drill down insights.

### Highlights & Numbers
500 flights analyzed across 6 months.

11.8% cancellation rate overall; United highest at 16.36%.

68.4% flights delayed, with March peak at 78.7%.

Avg delay: 43.8 mins, with MIA airport highest at 49 mins.

Evening flights (3–6 PM) showed worst delays.

ATL → JFK route had 100% cancellations.

### Achievements / Results / Impact
Automated reporting reduced manual effort and improved data accuracy.

Surfaced high‑risk routes and airports, enabling targeted corrective actions.

Helped leadership reduce customer complaints and optimize scheduling efficiency.

Built a scalable dashboard framework for ongoing airline performance monitoring.

### Recommendations
Prioritize operational improvements during evening peak hours.

Investigate and improve reliability on high-risk routes.

Address recurring delays at airports with poor performance metrics.

Continuously monitor KPIs through dashboard-driven decision making.

### Screenshot
<img width="1310" height="737" alt="Screenshot" src="https://github.com/user-attachments/assets/450d930c-14a4-4460-bbf4-8a0032b07620" />
