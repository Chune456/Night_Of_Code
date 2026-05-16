## Project Overview
This project builds an automated data pipeline that extracts cryptocurrency market data from the CoinPaprika API,
transforms it using Python, and loads it into a **cloud-hosted PostgreSQL database on Aiven**. 
The pipeline handles duplicate records, supports SQL analysis via DBeaver, and feeds into a Power BI dashboard for
visualization.

## Tools & Technologies
- **Python** – Extraction, transformation, and loading (ETL)
- **Aiven for PostgreSQL** – Cloud database hosting
- **DBeaver** – Database management and SQL querying
- **CoinPaprika API** – Cryptocurrency data source
- **Power BI** – Dashboard and visualization
- **Libraries**: `requests`, `pandas`, `psycopg2-binary`
