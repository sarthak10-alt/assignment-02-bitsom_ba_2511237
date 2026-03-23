# # Architecture Recommendation

I recommend a **Data Lakehouse** (like Databricks or Delta Lake) for this food delivery startup.

**Reasons:**
1. **Diverse Data:** The startup has GPS logs (Big Data), text reviews (Unstructured), and payments (Structured). A Lakehouse handles all of these in one place.
2. **Real-time & AI:** We need to analyze GPS logs instantly for delivery times. Lakehouses are built for fast, real-time streaming.
3. **Cost-Effective:** It is cheaper to store millions of "restaurant menu images" in a Lakehouse than in a traditional Data Warehouse.