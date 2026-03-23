# # Database Recommendation

For a **Healthcare Patient Management System**, I recommend starting with **MySQL (RDBMS)**. 

**Why?** Patient data (names, blood types, IDs) needs to be 100% accurate and consistent. Using **ACID** properties in SQL ensures that if a doctor updates a prescription, it is saved perfectly every time.

**Would my answer change for a Fraud Detection module?** Yes! For **Fraud Detection**, I would add **MongoDB (NoSQL)**. Fraud detection requires looking at millions of random patterns (like where you spent money and how fast). MongoDB is much better at handling "Big Data" and messy patterns very quickly.