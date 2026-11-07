# UK Road Safety & Risk Mitigation Analysis (STATS19)
A policy-driven SQL data audit of 104,000+ Department for Transport STATS19 collision records to optimize infrastructure spend and emergency service deployment.


Project Overview

This project evaluates national road collision data from 2023 to provide actionable data insights for local council procurement, emergency response deployment, and infrastructure spending strategy.
• Database Tool Utilized: SQLite (via DB Browser for SQLite)
• Dataset: Official Department for Transport (DfT) STATS19 Road Safety Open Data (104,000+ records)

Core Analytical Insights & Evidence


1. Speed Limit Interventions vs. Crash Severity

• The Policy Hypothesis: Lowering urban speed limits from 30mph to 20mph reduces the structural severity of collisions.
• Data Evidence (SQL Audit):
	• 20mph Zones: 18.38% of collisions resulted in Fatal or Serious injuries.
	• 30mph Zones: 22.62% of collisions resulted in Fatal or Serious injuries.
	• 60mph Zones: 34.15% of collisions resulted in Fatal or Serious injuries.
• Strategic Recommendation: The probability of a collision being severe nearly doubles as speeds increase from 20mph to 60mph. This strongly supports the aggressive implementation of 20mph zones by Transport for London (TfL) and local boroughs to meet "Vision Zero" safety targets.

2. Peak Demand Windows for Emergency Services

• The Policy Hypothesis: Over-allocating emergency services evenly across 24 hours creates operational inefficiency.
• Data Evidence (SQL Audit): Collisions strictly peak between 17:00 (5 PM) and 18:00 (6 PM), aligning precisely with the evening commuting rush.
• Strategic Recommendation: Blue-light services and traffic policing teams should dynamically front-load patrol capacity during these specific peak hours to improve emergency response times.

3. Infrastructure Spend Optimization (Street Lighting)

• The Policy Hypothesis: Council budgets for active street lighting infrastructure directly correlate to survival rates on public highways.
• Data Evidence (SQL Audit): While the highest volume of total accidents occurs during daytime conditions, the severity percentage increases drastically in nighttime environments where street lighting is entirely unlit or non-existent.
• Strategic Recommendation: Local authority highways departments should prioritize capital expenditure on smart street lighting infrastructure and reflective highway markers on dark networks, as environmental visibility is a force multiplier for crash lethality.

Data Quality & Methodological Notes

• Constraint Handling: The analysis filter explicitly excluded record rows where the timestamp string was blank or where lookup identifiers were categorized as unknown/redacted.
• Data Transformation: Raw STATS19 categorical integer codes were dynamically mapped to explicit human-readable string values via conditional SQL CASE WHEN syntax to ensure stakeholder accessibility.
