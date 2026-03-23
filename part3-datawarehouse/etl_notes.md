# ## ETL Decisions

### ### Decision 1 - Date Standardization
**Problem:** The raw data had dates in different formats like "22/03/2026" and "2026-03-22".
**Resolution:** I converted all dates to the standard YYYY-MM-DD format during the loading process so the computer doesn't get confused.

### ### Decision 2 - Handling NULL values
**Problem:** Some sales rows were missing the "Price" or "Quantity".
**Resolution:** I removed rows where quantity was zero or NULL because a sale with no items isn't a real sale for our reports.

### ### Decision 3 - Text Cleaning (Casing)
**Problem:** The category names were messy (e.g., "electronics", "ELECTRONICS", and "Electronics").
**Resolution:** I used a "Capitalize" function to make them all look like "Electronics" so they group together correctly in our charts.