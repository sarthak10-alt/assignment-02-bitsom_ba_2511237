# # Hospital Data System Design

## ## Storage Systems
1. **Predicting Readmission Risk:** I chose a **Data Warehouse** for historical treatment data because it needs to be very organized for AI models to read.
2. **Doctor History Search:** I chose a **Vector Database**. This allows doctors to ask questions in "Plain English" and find relevant history instantly.
3. **Monthly Reports:** A **Relational Database (SQL)** is best here to ensure financial costs and bed occupancy numbers are 100% accurate.
4. **ICU Vitals:** A **Data Lake** is used to stream real-time data from monitoring devices because it can handle a high volume of data very fast.

## ## OLTP vs OLAP Boundary
The **OLTP (Transactional)** system ends at the hospital's daily check-in and vital monitoring. The **OLAP (Analytical)** system begins once that data is moved into our "Brain" (Lakehouse) to be used for reports and AI risk predictions.

## ## Trade-offs
One major trade-off is **Complexity vs. Speed**. By using different databases (SQL, Vector, and Lake), the system is more complex to build. However, if we tried to put everything into just one SQL database, it would become too slow to handle the real-time ICU vitals. I would mitigate this by using a unified "Data Lakehouse" layer to manage them all.